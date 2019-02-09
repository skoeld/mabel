package net.evendanan.bazel.mvn;

import com.beust.jcommander.JCommander;
import com.beust.jcommander.Parameter;
import com.beust.jcommander.ParameterException;
import com.beust.jcommander.Parameters;
import com.beust.jcommander.converters.IParameterSplitter;
import com.google.common.base.Charsets;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.function.Function;
import java.util.stream.Collectors;
import net.evendanan.bazel.mvn.api.Dependency;
import net.evendanan.bazel.mvn.api.GraphMerger;
import net.evendanan.bazel.mvn.api.RuleWriter;
import net.evendanan.bazel.mvn.api.Target;
import net.evendanan.bazel.mvn.impl.RuleClassifiers;
import net.evendanan.bazel.mvn.impl.RuleWriters;
import net.evendanan.bazel.mvn.impl.TargetsBuilders;
import net.evendanan.bazel.mvn.merger.ClearSrcJarAttribute;
import net.evendanan.bazel.mvn.merger.DefaultMerger;
import net.evendanan.bazel.mvn.merger.DependencyTreeFlatter;
import net.evendanan.bazel.mvn.serialization.Serialization;
import net.evendanan.timing.TaskTiming;
import net.evendanan.timing.TimingData;

public class Merger {

    private final GraphMerger merger;
    private final RuleWriter repositoryRulesMacroWriter;
    private final RuleWriter targetsMacroWriter;
    private final RuleWriter hardAliasesWriter;
    private final File macrosFile;

    private Merger(final Options options) {
        final File parent = new File(options.output_target_build_files_base_path);
        this.macrosFile = new File(parent, options.output_macro_file);
        this.merger = new DefaultMerger();
        this.repositoryRulesMacroWriter = new RuleWriters.HttpRepoRulesMacroWriter(
                macrosFile,
                "generate_workspace_rules");
        targetsMacroWriter = new RuleWriters.TransitiveRulesMacroWriter(
                macrosFile,
                "generate_transitive_dependency_targets");

        if (options.create_deps_sub_folders) {
            if (options.package_path.isEmpty()) {
                throw new IllegalArgumentException("--package_path can not be empty, if --output_target_build_files_base_path was set.");
            }
            hardAliasesWriter = new RuleWriters.TransitiveRulesAliasWriter(parent, options.package_path);
        } else {
            hardAliasesWriter = null;
        }
    }

    public static void main(String[] args) throws Exception {
        Options options = new Options();
        JCommander optionParser = JCommander.newBuilder().addObject(options).build();
        try {
            optionParser.parse(args);
        } catch (ParameterException e) {
            System.err.println("Unable to parse options: " + e.getLocalizedMessage());
            optionParser.usage();
            return;
        }
        if (options.artifacts.isEmpty()) {
            optionParser.usage();
            return;
        }

        Merger driver = new Merger(options);
        Collection<Dependency> dependencies = driver.generateFromInputs(options);

        if (!options.fetch_srcjar) {
            dependencies = ClearSrcJarAttribute.clearSrcJar(dependencies);
        }
        
        Function<Dependency, Dependency> prefixer = dependency -> DependencyWithPrefix.wrap(options.rule_prefix, dependency);

        driver.writeResults(dependencies.stream().map(prefixer).collect(Collectors.toList()), args);
    }

    /**
     * By default File#delete fails for non-empty directories, it works like "rm".
     * We need something a little more brutual - this does the equivalent of "rm -r"
     *
     * @param path Root File Path
     *
     * @return true iff the file and all sub files/directories have been removed
     *
     * @throws FileNotFoundException if the path to remove does not exist
     * @implNote taken from https://stackoverflow.com/a/4026761/1324235
     */
    private static boolean deleteRecursive(File path) throws FileNotFoundException {
        if (!path.exists()) {
            throw new FileNotFoundException(path.getAbsolutePath());
        }
        boolean ret = true;
        if (path.isDirectory()) {
            final File[] files = path.listFiles();
            if (files!=null) {
                for (File f : files) {
                    ret = ret && deleteRecursive(f);
                }
            }
        }
        return ret && path.delete();
    }

    private Collection<Dependency> generateFromInputs(Options options) {
        System.out.println(String.format("Reading %s root artifacts...", options.artifacts.size()));

        final char[] buffer = new char[4096];
        final StringBuilder builder = new StringBuilder();
        final Serialization serialization = new Serialization();
        final List<Dependency> dependencies = options.artifacts.stream()
                .map(inputFile -> {
                    builder.setLength(0);
                    try (final InputStreamReader fileReader = new InputStreamReader(new FileInputStream(inputFile), Charsets.UTF_8)) {
                        int read;
                        while (0 <= (read = fileReader.read(buffer, 0, buffer.length))) {
                            builder.append(buffer, 0, read);
                        }
                        return serialization.deserialize(builder.toString());
                    } catch (Exception e) {
                        throw new RuntimeException(e);
                    }
                })
                .collect(Collectors.toList());

        System.out.println(String.format("Merging %s dependencies...", dependencies.size()));
        return merger.mergeGraphs(dependencies);
    }

    private void writeResults(Collection<Dependency> resolvedDependencies, final String[] args) throws Exception {
        resolvedDependencies = DependencyTreeFlatter.flatten(resolvedDependencies);
        //first, deleting everything that's already there.
        final File depsFolder = macrosFile.getParentFile();
        if (depsFolder.isDirectory()) {
            deleteRecursive(depsFolder);
        }

        if (!depsFolder.mkdirs()) {
            throw new IOException("Failed to create folder for dependency files: " + depsFolder.getAbsolutePath());
        }

        try (final OutputStreamWriter fileWriter = new OutputStreamWriter(new FileOutputStream(new File(depsFolder, "BUILD.bazel"), false), Charsets.UTF_8)) {
            fileWriter.append("# Auto-generated by https://github.com/menny/bazel-mvn-deps").append(System.lineSeparator());
            fileWriter.append(System.lineSeparator());
            fileWriter.append("# Args: ").append(String.join(" ", args)).append(System.lineSeparator());
        }
        try (final OutputStreamWriter fileWriter = new OutputStreamWriter(new FileOutputStream(macrosFile, false), Charsets.UTF_8)) {
            fileWriter.append("# Auto-generated by https://github.com/menny/bazel-mvn-deps").append(System.lineSeparator());
            fileWriter.append(System.lineSeparator());
            fileWriter.append(System.lineSeparator());
        }

        final TaskTiming timer = new TaskTiming();
        System.out.println(String.format("Processing %s resolved rules...", resolvedDependencies.size()));

        timer.start(resolvedDependencies.size());
        List<Target> targets = resolvedDependencies.stream()
                .peek(dependency -> {
                    final TimingData timingData = timer.taskDone();
                    final String estimatedTimeLeft;
                    if (timingData.doneTasks >= 3) {
                        estimatedTimeLeft = String.format(Locale.US, ", %s left", TaskTiming.humanReadableTime(timingData.estimatedTimeLeft));
                    } else {
                        estimatedTimeLeft = "";
                    }
                    System.out.println(
                            String.format(Locale.US, "** Converting to Bazel targets, %d out of %d (%.2f%%%s): %s...",
                                    timingData.doneTasks, timingData.totalTasks, 100 * timingData.ratioOfDone, estimatedTimeLeft,
                                    dependency.repositoryRuleName()));
                })
                .map(rule -> RuleClassifiers.NATIVE_RULE_MAPPER.apply(rule).buildTargets(rule))
                .flatMap(List::stream)
                .collect(Collectors.toList());

        repositoryRulesMacroWriter.write(resolvedDependencies.stream()
                .map(TargetsBuilders.HTTP_FILE::buildTargets)
                .flatMap(Collection::stream)
                .collect(Collectors.toList()));

        targetsMacroWriter.write(targets);

        if (hardAliasesWriter!=null) {
            System.out.println("Writing aliases targets...");
            hardAliasesWriter.write(targets);
        }
    }

    private static class DependencyWithPrefix extends Dependency {

        private final String prefix;

        public DependencyWithPrefix(final String groupId, final String artifactId, final String version, final String packaging,
                                    final Collection<Dependency> dependencies, final Collection<Dependency> exports, final Collection<Dependency> runtimeDependencies,
                                    final URI url, final URI sourcesUrl, final URI javadocUrl,
                                    final Collection<License> licenses,
                                    String prefix) {
            super(groupId, artifactId, version, packaging, dependencies, exports, runtimeDependencies, url, sourcesUrl, javadocUrl, licenses);
            this.prefix = prefix;
        }

        static DependencyWithPrefix wrap(String prefix, Dependency dependency) {
            Function<Dependency, Dependency> prefixer = subDep -> DependencyWithPrefix.wrap(prefix, subDep);

            return new DependencyWithPrefix(dependency.groupId(), dependency.artifactId(), dependency.version(), dependency.packaging(),
                    dependency.dependencies().stream().map(prefixer).collect(Collectors.toList()),
                    dependency.exports().stream().map(prefixer).collect(Collectors.toList()),
                    dependency.runtimeDependencies().stream().map(prefixer).collect(Collectors.toList()),
                    dependency.url(), dependency.sourcesUrl(), dependency.javadocUrl(), dependency.licenses(),
                    prefix);
        }

        @Override
        public String repositoryRuleName() {
            return prefix + super.repositoryRuleName();
        }

        @Override
        public String targetName() {
            return prefix + super.targetName();
        }
    }

    @Parameters(separators = "=")
    public static class Options {

        @Parameter(
                names = {"--graph_file", "-a"},
                splitter = NoSplitter.class,
                description = "JSON files representing dependency-graph.",
                required = true
        ) List<String> artifacts = new ArrayList<>();

        @Parameter(
                names = {"--output_macro_file_path"},
                description = "Path to output macros bzl file",
                required = true
        ) String output_macro_file = "";

        @Parameter(
                names = {"--output_target_build_files_base_path"},
                description = "Base path to output alias targets BUILD.bazel files"
        ) String output_target_build_files_base_path = "";

        @Parameter(
                names = {"--package_path"},
                description = "Package path for for transitive rules."
        ) String package_path = "";

        @Parameter(
                names = {"--rule_prefix"},
                description = "Prefix to add to all rules."
        ) String rule_prefix = "";

        @Parameter(
                names = {"--create_deps_sub_folders"},
                description = "Generate sub-folders matching dependencies tree.",
                arity = 1
        ) boolean create_deps_sub_folders = true;

        @Parameter(
                names = {"--fetch_srcjar"},
                description = "Will also try to locate srcjar for the dependency.",
                arity = 1
        ) boolean fetch_srcjar = true;
    }

    /**
     * Jcommander defaults to splitting each parameter by comma. For example,
     * --a=group:artifact:[x1,x2] is parsed as two items 'group:artifact:[x1' and 'x2]',
     * instead of the intended 'group:artifact:[x1,x2]'
     *
     * For more information: http://jcommander.org/#_splitting
     */
    public static class NoSplitter implements IParameterSplitter {

        @Override
        public List<String> split(String value) {
            return Collections.singletonList(value);
        }
    }
}
