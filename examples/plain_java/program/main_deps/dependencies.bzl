# Auto-generated by https://github.com/menny/bazel-mvn-deps


# Loading a drop-in replacement for native.http_file
load('@bazel_tools//tools/build_defs/repo:http.bzl', 'http_file')

# Repository rules macro to be run in the WORKSPACE file.
def generate_workspace_rules():
    # from com.google.guava:guava:20.0
    http_file(name = 'com_google_guava__guava__20_0',
        urls = ['https://repo1.maven.org/maven2/com/google/guava/guava/20.0/guava-20.0.jar'],
        downloaded_file_path = 'guava-20.0.jar',
    )


# Transitive rules macro to be run in the BUILD.bazel file.
# If you use kt_* rules, you MUST provide the correct rule implementation when call this macro, if you decide
# not to provide those implementations we'll try to use java_* rules.

# This is a help macro to handle Kotlin rules.
def kotlin_jar_support(name, deps, exports, runtime_deps, jar, kt_jvm_import=None, kt_jvm_library=None):
    #In case the developer did not provide a kt_* impl, we'll try to use java_*, should work
    if kt_jvm_import == None:
        native.java_import(name = name,
            jars = [jar],
            deps = deps,
            exports = exports,
            runtime_deps = runtime_deps,
        )
    else:
        kt_jvm_import(name = '{}_kotlin_jar'.format(name),
            jars = [jar],
        )
        kt_jvm_library(name = name,
            deps = deps + [':{}_kotlin_jar'.format(name)],
            exports = exports + [':{}_kotlin_jar'.format(name)],
            runtime_deps = runtime_deps,
        )

def generate_transitive_dependency_targets(kt_jvm_import=None, kt_jvm_library=None):
    # from com.google.guava:guava:20.0
    native.alias(name = 'com_google_guava__guava',
        actual = ':com_google_guava__guava__20_0',
        visibility = ['//visibility:public'],
    )

    # from com.google.guava:guava:20.0
    native.java_import(name = 'com_google_guava__guava__20_0',
        jars = ['@com_google_guava__guava__20_0//file'],
        licenses = ['notice'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )


