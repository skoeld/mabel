# The following dependencies were calculated from:
#
# generate_workspace --repository=https://maven.google.com/ --repository=https://repo1.maven.org/maven2/ --repository=https://jcenter.bintray.com/ --artifact=com.google.guava:guava:20.0 --artifact=com.beust:jcommander:1.72 --artifact=org.eclipse.aether:aether-api:1.1.0 --artifact=org.eclipse.aether:aether-spi:1.1.0 --artifact=org.eclipse.aether:aether-impl:1.1.0 --artifact=org.eclipse.aether:aether-util:1.1.0 --artifact=org.eclipse.aether:aether-transport-http:1.1.0 --artifact=org.eclipse.aether:aether-transport-classpath:1.1.0 --artifact=org.eclipse.aether:aether-transport-wagon:1.1.0 --artifact=org.eclipse.aether:aether-transport-file:1.1.0 --artifact=org.eclipse.aether:aether-connector-basic:1.1.0 --artifact=org.apache.maven:maven-aether-provider:3.2.3 --artifact=org.apache.maven:maven-model:3.2.3 --artifact=org.apache.maven:maven-model-builder:3.2.3 --artifact=org.apache.maven:maven-repository-metadata:3.2.3 --artifact=org.apache.maven:maven-artifact:3.5.0 --artifact=org.codehaus.plexus:plexus-interpolation:1.24 --artifact=org.codehaus.plexus:plexus-utils:3.0.24 --artifact=org.apache.httpcomponents:httpclient:4.5.3 --artifact=org.apache.commons:commons-lang3:jar:3.8.1 --artifact=com.google.code.findbugs:jsr305:3.0.2 --artifact=junit:junit:4.12 --artifact=org.mockito:mockito-core:2.23.4 --rule_prefix=bazel_mvn_deps --macro_prefix=bazel_mvn_deps


# Loading a drop-in replacement for native.http_file
load('@bazel_tools//tools/build_defs/repo:http.bzl', 'http_file')

# Repository rules macro to be run in the WORKSPACE file.
def generate_bazel_mvn_deps_workspace_rules():
    # org.apache.httpcomponents:httpclient:jar:4.5.3
    http_file(name = 'bazel_mvn_deps___org_apache_httpcomponents__httpcore__4_4_6',
        urls = ['https://repo1.maven.org/maven2/org/apache/httpcomponents/httpcore/4.4.6/httpcore-4.4.6.jar'],
        downloaded_file_path = 'httpcore-4.4.6.jar',
    )


    http_file(name = 'bazel_mvn_deps___org_eclipse_aether__aether-transport-wagon__1_1_0',
        urls = ['https://repo1.maven.org/maven2/org/eclipse/aether/aether-transport-wagon/1.1.0/aether-transport-wagon-1.1.0.jar'],
        downloaded_file_path = 'aether-transport-wagon-1.1.0.jar',
    )


    # org.eclipse.aether:aether-transport-http:jar:1.1.0 got requested version
    # org.eclipse.aether:aether-transport-classpath:jar:1.1.0 got requested version
    # org.eclipse.aether:aether-impl:jar:1.1.0 got requested version
    # org.eclipse.aether:aether-connector-basic:jar:1.1.0 got requested version
    # org.eclipse.aether:aether-transport-file:jar:1.1.0 got requested version
    # org.eclipse.aether:aether-transport-wagon:jar:1.1.0 got requested version
    # org.apache.maven:maven-aether-provider:jar:3.2.3 wanted version 0.9.0.M2
    http_file(name = 'bazel_mvn_deps___org_eclipse_aether__aether-util__1_1_0',
        urls = ['https://repo1.maven.org/maven2/org/eclipse/aether/aether-util/1.1.0/aether-util-1.1.0.jar'],
        downloaded_file_path = 'aether-util-1.1.0.jar',
    )


    http_file(name = 'bazel_mvn_deps___org_mockito__mockito-core__2_23_4',
        urls = ['https://repo1.maven.org/maven2/org/mockito/mockito-core/2.23.4/mockito-core-2.23.4.jar'],
        downloaded_file_path = 'mockito-core-2.23.4.jar',
    )


    # com.kohlschutter.junixsocket:junixsocket-native-common:jar:2.0.4
    http_file(name = 'bazel_mvn_deps___com_kohlschutter_junixsocket__junixsocket-common__2_0_4',
        urls = ['https://repo1.maven.org/maven2/com/kohlschutter/junixsocket/junixsocket-common/2.0.4/junixsocket-common-2.0.4.jar'],
        downloaded_file_path = 'junixsocket-common-2.0.4.jar',
    )


    # org.apache.maven:maven-aether-provider:jar:3.2.3 got requested version
    # org.apache.maven:maven-model-builder:jar:3.2.3 got requested version
    http_file(name = 'bazel_mvn_deps___org_apache_maven__maven-model__3_2_3',
        urls = ['https://repo1.maven.org/maven2/org/apache/maven/maven-model/3.2.3/maven-model-3.2.3.jar'],
        downloaded_file_path = 'maven-model-3.2.3.jar',
    )


    # org.apache.maven:maven-aether-provider:jar:3.2.3 got requested version
    http_file(name = 'bazel_mvn_deps___org_apache_maven__maven-model-builder__3_2_3',
        urls = ['https://repo1.maven.org/maven2/org/apache/maven/maven-model-builder/3.2.3/maven-model-builder-3.2.3.jar'],
        downloaded_file_path = 'maven-model-builder-3.2.3.jar',
    )


    http_file(name = 'bazel_mvn_deps___org_eclipse_aether__aether-transport-http__1_1_0',
        urls = ['https://repo1.maven.org/maven2/org/eclipse/aether/aether-transport-http/1.1.0/aether-transport-http-1.1.0.jar'],
        downloaded_file_path = 'aether-transport-http-1.1.0.jar',
    )


    # org.apache.maven:maven-aether-provider:jar:3.2.3 got requested version
    http_file(name = 'bazel_mvn_deps___org_apache_maven__maven-repository-metadata__3_2_3',
        urls = ['https://repo1.maven.org/maven2/org/apache/maven/maven-repository-metadata/3.2.3/maven-repository-metadata-3.2.3.jar'],
        downloaded_file_path = 'maven-repository-metadata-3.2.3.jar',
    )


    http_file(name = 'bazel_mvn_deps___org_apache_maven__maven-aether-provider__3_2_3',
        urls = ['https://repo1.maven.org/maven2/org/apache/maven/maven-aether-provider/3.2.3/maven-aether-provider-3.2.3.jar'],
        downloaded_file_path = 'maven-aether-provider-3.2.3.jar',
    )


    # com.kohlschutter.junixsocket:junixsocket-native-common:jar:2.0.4
    http_file(name = 'bazel_mvn_deps___org_scijava__native-lib-loader__2_0_2',
        urls = ['https://repo1.maven.org/maven2/org/scijava/native-lib-loader/2.0.2/native-lib-loader-2.0.2.jar'],
        downloaded_file_path = 'native-lib-loader-2.0.2.jar',
    )


    # org.eclipse.aether:aether-transport-http:jar:1.1.0 got requested version
    # org.eclipse.aether:aether-spi:jar:1.1.0 got requested version
    # org.eclipse.aether:aether-transport-classpath:jar:1.1.0 got requested version
    # org.eclipse.aether:aether-impl:jar:1.1.0 got requested version
    # org.eclipse.aether:aether-util:jar:1.1.0 got requested version
    # org.eclipse.aether:aether-connector-basic:jar:1.1.0 got requested version
    # org.eclipse.aether:aether-transport-file:jar:1.1.0 got requested version
    # org.eclipse.aether:aether-transport-wagon:jar:1.1.0 got requested version
    # org.apache.maven:maven-aether-provider:jar:3.2.3 wanted version 0.9.0.M2
    http_file(name = 'bazel_mvn_deps___org_eclipse_aether__aether-api__1_1_0',
        urls = ['https://repo1.maven.org/maven2/org/eclipse/aether/aether-api/1.1.0/aether-api-1.1.0.jar'],
        downloaded_file_path = 'aether-api-1.1.0.jar',
    )


    # junit:junit:jar:4.12
    http_file(name = 'bazel_mvn_deps___org_hamcrest__hamcrest-core__1_3',
        urls = ['https://repo1.maven.org/maven2/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar'],
        downloaded_file_path = 'hamcrest-core-1.3.jar',
    )


    http_file(name = 'bazel_mvn_deps___org_apache_maven__maven-artifact__3_5_0',
        urls = ['https://repo1.maven.org/maven2/org/apache/maven/maven-artifact/3.5.0/maven-artifact-3.5.0.jar'],
        downloaded_file_path = 'maven-artifact-3.5.0.jar',
    )


    # org.apache.maven:maven-artifact:jar:3.5.0 wanted version 3.5
    http_file(name = 'bazel_mvn_deps___org_apache_commons__commons-lang3__3_8_1',
        urls = ['https://repo1.maven.org/maven2/org/apache/commons/commons-lang3/3.8.1/commons-lang3-3.8.1.jar'],
        downloaded_file_path = 'commons-lang3-3.8.1.jar',
    )


    # log4j:log4j:bundle:1.2.17
    http_file(name = 'bazel_mvn_deps___org_apache_openejb__javaee-api__5_0-2',
        urls = ['https://repo1.maven.org/maven2/org/apache/openejb/javaee-api/5.0-2/javaee-api-5.0-2.jar'],
        downloaded_file_path = 'javaee-api-5.0-2.jar',
    )


    http_file(name = 'bazel_mvn_deps___com_beust__jcommander__1_72',
        urls = ['https://repo1.maven.org/maven2/com/beust/jcommander/1.72/jcommander-1.72.jar'],
        downloaded_file_path = 'jcommander-1.72.jar',
    )


    # org.apache.httpcomponents:httpclient:jar:4.5.3
    http_file(name = 'bazel_mvn_deps___commons-logging__commons-logging__1_2',
        urls = ['https://repo1.maven.org/maven2/commons-logging/commons-logging/1.2/commons-logging-1.2.jar'],
        downloaded_file_path = 'commons-logging-1.2.jar',
    )


    # org.apache.maven:maven-model-builder:jar:3.2.3 wanted version 1.19
    http_file(name = 'bazel_mvn_deps___org_codehaus_plexus__plexus-interpolation__1_24',
        urls = ['https://repo1.maven.org/maven2/org/codehaus/plexus/plexus-interpolation/1.24/plexus-interpolation-1.24.jar'],
        downloaded_file_path = 'plexus-interpolation-1.24.jar',
    )


    # com.kohlschutter.junixsocket:junixsocket-common:jar:2.0.4
    # com.kohlschutter.junixsocket:junixsocket-native-common:jar:2.0.4 got requested version
    http_file(name = 'bazel_mvn_deps___log4j__log4j__1_2_17',
        urls = ['https://repo1.maven.org/maven2/log4j/log4j/1.2.17/log4j-1.2.17.jar'],
        downloaded_file_path = 'log4j-1.2.17.jar',
    )


    http_file(name = 'bazel_mvn_deps___org_eclipse_aether__aether-connector-basic__1_1_0',
        urls = ['https://repo1.maven.org/maven2/org/eclipse/aether/aether-connector-basic/1.1.0/aether-connector-basic-1.1.0.jar'],
        downloaded_file_path = 'aether-connector-basic-1.1.0.jar',
    )


    # org.eclipse.aether:aether-transport-http:jar:1.1.0
    http_file(name = 'bazel_mvn_deps___org_slf4j__jcl-over-slf4j__1_6_2',
        urls = ['https://repo1.maven.org/maven2/org/slf4j/jcl-over-slf4j/1.6.2/jcl-over-slf4j-1.6.2.jar'],
        downloaded_file_path = 'jcl-over-slf4j-1.6.2.jar',
    )


    # org.mockito:mockito-core:jar:2.23.4
    http_file(name = 'bazel_mvn_deps___net_bytebuddy__byte-buddy__1_9_3',
        urls = ['https://repo1.maven.org/maven2/net/bytebuddy/byte-buddy/1.9.3/byte-buddy-1.9.3.jar'],
        downloaded_file_path = 'byte-buddy-1.9.3.jar',
    )


    # org.apache.maven:maven-aether-provider:jar:3.2.3 wanted version 0.9.0.M2
    http_file(name = 'bazel_mvn_deps___org_eclipse_aether__aether-impl__1_1_0',
        urls = ['https://repo1.maven.org/maven2/org/eclipse/aether/aether-impl/1.1.0/aether-impl-1.1.0.jar'],
        downloaded_file_path = 'aether-impl-1.1.0.jar',
    )


    # org.mockito:mockito-core:jar:2.23.4
    http_file(name = 'bazel_mvn_deps___org_objenesis__objenesis__2_6',
        urls = ['https://repo1.maven.org/maven2/org/objenesis/objenesis/2.6/objenesis-2.6.jar'],
        downloaded_file_path = 'objenesis-2.6.jar',
    )


    http_file(name = 'bazel_mvn_deps___com_google_code_findbugs__jsr305__3_0_2',
        urls = ['https://repo1.maven.org/maven2/com/google/code/findbugs/jsr305/3.0.2/jsr305-3.0.2.jar'],
        downloaded_file_path = 'jsr305-3.0.2.jar',
    )


    http_file(name = 'bazel_mvn_deps___com_google_guava__guava__20_0',
        urls = ['https://repo1.maven.org/maven2/com/google/guava/guava/20.0/guava-20.0.jar'],
        downloaded_file_path = 'guava-20.0.jar',
    )


    # org.apache.maven:maven-model-builder:jar:3.2.3 wanted version 3.0.17
    # org.apache.maven.wagon:wagon-provider-api:jar:1.0 wanted version 1.4.2
    # org.apache.maven:maven-aether-provider:jar:3.2.3 wanted version 3.0.17
    # org.apache.maven:maven-model:jar:3.2.3 wanted version 3.0.17
    # org.apache.maven:maven-artifact:jar:3.5.0 got requested version
    # org.apache.maven:maven-repository-metadata:jar:3.2.3 wanted version 3.0.17
    http_file(name = 'bazel_mvn_deps___org_codehaus_plexus__plexus-utils__3_0_24',
        urls = ['https://repo1.maven.org/maven2/org/codehaus/plexus/plexus-utils/3.0.24/plexus-utils-3.0.24.jar'],
        downloaded_file_path = 'plexus-utils-3.0.24.jar',
    )


    # org.slf4j:jcl-over-slf4j:jar:1.6.2
    http_file(name = 'bazel_mvn_deps___org_slf4j__slf4j-api__1_6_2',
        urls = ['https://repo1.maven.org/maven2/org/slf4j/slf4j-api/1.6.2/slf4j-api-1.6.2.jar'],
        downloaded_file_path = 'slf4j-api-1.6.2.jar',
    )


    # org.eclipse.aether:aether-transport-wagon:jar:1.1.0
    http_file(name = 'bazel_mvn_deps___org_apache_maven_wagon__wagon-provider-api__1_0',
        urls = ['https://repo1.maven.org/maven2/org/apache/maven/wagon/wagon-provider-api/1.0/wagon-provider-api-1.0.jar'],
        downloaded_file_path = 'wagon-provider-api-1.0.jar',
    )


    # net.bytebuddy:byte-buddy-agent:jar:1.9.3 got requested version
    # net.bytebuddy:byte-buddy:jar:1.9.3
    http_file(name = 'bazel_mvn_deps___com_google_code_findbugs__findbugs-annotations__3_0_1',
        urls = ['https://repo1.maven.org/maven2/com/google/code/findbugs/findbugs-annotations/3.0.1/findbugs-annotations-3.0.1.jar'],
        downloaded_file_path = 'findbugs-annotations-3.0.1.jar',
    )


    # org.mockito:mockito-core:jar:2.23.4
    http_file(name = 'bazel_mvn_deps___net_bytebuddy__byte-buddy-agent__1_9_3',
        urls = ['https://repo1.maven.org/maven2/net/bytebuddy/byte-buddy-agent/1.9.3/byte-buddy-agent-1.9.3.jar'],
        downloaded_file_path = 'byte-buddy-agent-1.9.3.jar',
    )


    # org.apache.maven:maven-model-builder:jar:3.2.3 got requested version
    # org.apache.maven:maven-aether-provider:jar:3.2.3
    http_file(name = 'bazel_mvn_deps___org_codehaus_plexus__plexus-component-annotations__1_5_5',
        urls = ['https://repo1.maven.org/maven2/org/codehaus/plexus/plexus-component-annotations/1.5.5/plexus-component-annotations-1.5.5.jar'],
        downloaded_file_path = 'plexus-component-annotations-1.5.5.jar',
    )


    http_file(name = 'bazel_mvn_deps___org_eclipse_aether__aether-transport-classpath__1_1_0',
        urls = ['https://repo1.maven.org/maven2/org/eclipse/aether/aether-transport-classpath/1.1.0/aether-transport-classpath-1.1.0.jar'],
        downloaded_file_path = 'aether-transport-classpath-1.1.0.jar',
    )


    http_file(name = 'bazel_mvn_deps___org_eclipse_aether__aether-transport-file__1_1_0',
        urls = ['https://repo1.maven.org/maven2/org/eclipse/aether/aether-transport-file/1.1.0/aether-transport-file-1.1.0.jar'],
        downloaded_file_path = 'aether-transport-file-1.1.0.jar',
    )


    http_file(name = 'bazel_mvn_deps___junit__junit__4_12',
        urls = ['https://repo1.maven.org/maven2/junit/junit/4.12/junit-4.12.jar'],
        downloaded_file_path = 'junit-4.12.jar',
    )


    # org.apache.httpcomponents:httpclient:jar:4.5.3
    http_file(name = 'bazel_mvn_deps___commons-codec__commons-codec__1_9',
        urls = ['https://repo1.maven.org/maven2/commons-codec/commons-codec/1.9/commons-codec-1.9.jar'],
        downloaded_file_path = 'commons-codec-1.9.jar',
    )


    # net.bytebuddy:byte-buddy-agent:jar:1.9.3
    http_file(name = 'bazel_mvn_deps___com_kohlschutter_junixsocket__junixsocket-native-common__2_0_4',
        urls = ['https://repo1.maven.org/maven2/com/kohlschutter/junixsocket/junixsocket-native-common/2.0.4/junixsocket-native-common-2.0.4.jar'],
        downloaded_file_path = 'junixsocket-native-common-2.0.4.jar',
    )


    # org.eclipse.aether:aether-transport-http:jar:1.1.0 got requested version
    # org.eclipse.aether:aether-transport-classpath:jar:1.1.0 got requested version
    # org.eclipse.aether:aether-impl:jar:1.1.0 got requested version
    # org.eclipse.aether:aether-connector-basic:jar:1.1.0 got requested version
    # org.eclipse.aether:aether-transport-file:jar:1.1.0 got requested version
    # org.eclipse.aether:aether-transport-wagon:jar:1.1.0 got requested version
    # org.apache.maven:maven-aether-provider:jar:3.2.3 wanted version 0.9.0.M2
    http_file(name = 'bazel_mvn_deps___org_eclipse_aether__aether-spi__1_1_0',
        urls = ['https://repo1.maven.org/maven2/org/eclipse/aether/aether-spi/1.1.0/aether-spi-1.1.0.jar'],
        downloaded_file_path = 'aether-spi-1.1.0.jar',
    )


    # org.eclipse.aether:aether-transport-http:jar:1.1.0 wanted version 4.3.5
    http_file(name = 'bazel_mvn_deps___org_apache_httpcomponents__httpclient__4_5_3',
        urls = ['https://repo1.maven.org/maven2/org/apache/httpcomponents/httpclient/4.5.3/httpclient-4.5.3.jar'],
        downloaded_file_path = 'httpclient-4.5.3.jar',
    )



# Transitive rules macro to be run in the BUILD.bazel file.
# If you use kt_* rules, you MUST provide the correct rule implementation when call this macro, if you decide
# not to provide those implementations we'll try to use java_* rules.
def generate_bazel_mvn_deps_transitive_dependency_rules(kt_jvm_import=None, kt_jvm_library=None):
    native.java_import(name = 'bazel_mvn_deps___org_apache_httpcomponents__httpcore__4_4_6',
        jars = ['@bazel_mvn_deps___org_apache_httpcomponents__httpcore__4_4_6//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_apache_httpcomponents__httpcore',
        actual = 'bazel_mvn_deps___org_apache_httpcomponents__httpcore__4_4_6',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_eclipse_aether__aether-transport-wagon__1_1_0',
        jars = ['@bazel_mvn_deps___org_eclipse_aether__aether-transport-wagon__1_1_0//file'],
        deps = [
            ':bazel_mvn_deps___org_apache_maven_wagon__wagon_provider_api', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_api', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_spi', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_util', 
        ],
        exports = [
            ':bazel_mvn_deps___org_apache_maven_wagon__wagon_provider_api', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_api', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_spi', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_util', 
        ],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_eclipse_aether__aether_transport_wagon',
        actual = 'bazel_mvn_deps___org_eclipse_aether__aether-transport-wagon__1_1_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_eclipse_aether__aether-util__1_1_0',
        jars = ['@bazel_mvn_deps___org_eclipse_aether__aether-util__1_1_0//file'],
        deps = [':bazel_mvn_deps___org_eclipse_aether__aether_api'],
        exports = [':bazel_mvn_deps___org_eclipse_aether__aether_api'],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_eclipse_aether__aether_util',
        actual = 'bazel_mvn_deps___org_eclipse_aether__aether-util__1_1_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_mockito__mockito-core__2_23_4',
        jars = ['@bazel_mvn_deps___org_mockito__mockito-core__2_23_4//file'],
        deps = [
            ':bazel_mvn_deps___net_bytebuddy__byte_buddy', 
            ':bazel_mvn_deps___net_bytebuddy__byte_buddy_agent', 
            ':bazel_mvn_deps___org_objenesis__objenesis', 
        ],
        exports = [
            ':bazel_mvn_deps___net_bytebuddy__byte_buddy', 
            ':bazel_mvn_deps___net_bytebuddy__byte_buddy_agent', 
            ':bazel_mvn_deps___org_objenesis__objenesis', 
        ],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_mockito__mockito_core',
        actual = 'bazel_mvn_deps___org_mockito__mockito-core__2_23_4',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___com_kohlschutter_junixsocket__junixsocket-common__2_0_4',
        jars = ['@bazel_mvn_deps___com_kohlschutter_junixsocket__junixsocket-common__2_0_4//file'],
        deps = [':bazel_mvn_deps___log4j__log4j'],
        exports = [':bazel_mvn_deps___log4j__log4j'],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___com_kohlschutter_junixsocket__junixsocket_common',
        actual = 'bazel_mvn_deps___com_kohlschutter_junixsocket__junixsocket-common__2_0_4',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_apache_maven__maven-model__3_2_3',
        jars = ['@bazel_mvn_deps___org_apache_maven__maven-model__3_2_3//file'],
        deps = [':bazel_mvn_deps___org_codehaus_plexus__plexus_utils'],
        exports = [':bazel_mvn_deps___org_codehaus_plexus__plexus_utils'],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_apache_maven__maven_model',
        actual = 'bazel_mvn_deps___org_apache_maven__maven-model__3_2_3',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_apache_maven__maven-model-builder__3_2_3',
        jars = ['@bazel_mvn_deps___org_apache_maven__maven-model-builder__3_2_3//file'],
        deps = [
            ':bazel_mvn_deps___org_apache_maven__maven_model', 
            ':bazel_mvn_deps___org_codehaus_plexus__plexus_component_annotations', 
            ':bazel_mvn_deps___org_codehaus_plexus__plexus_interpolation', 
            ':bazel_mvn_deps___org_codehaus_plexus__plexus_utils', 
        ],
        exports = [
            ':bazel_mvn_deps___org_apache_maven__maven_model', 
            ':bazel_mvn_deps___org_codehaus_plexus__plexus_component_annotations', 
            ':bazel_mvn_deps___org_codehaus_plexus__plexus_interpolation', 
            ':bazel_mvn_deps___org_codehaus_plexus__plexus_utils', 
        ],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_apache_maven__maven_model_builder',
        actual = 'bazel_mvn_deps___org_apache_maven__maven-model-builder__3_2_3',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_eclipse_aether__aether-transport-http__1_1_0',
        jars = ['@bazel_mvn_deps___org_eclipse_aether__aether-transport-http__1_1_0//file'],
        deps = [
            ':bazel_mvn_deps___org_apache_httpcomponents__httpclient', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_api', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_spi', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_util', 
            ':bazel_mvn_deps___org_slf4j__jcl_over_slf4j', 
        ],
        exports = [
            ':bazel_mvn_deps___org_apache_httpcomponents__httpclient', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_api', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_spi', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_util', 
            ':bazel_mvn_deps___org_slf4j__jcl_over_slf4j', 
        ],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_eclipse_aether__aether_transport_http',
        actual = 'bazel_mvn_deps___org_eclipse_aether__aether-transport-http__1_1_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_apache_maven__maven-repository-metadata__3_2_3',
        jars = ['@bazel_mvn_deps___org_apache_maven__maven-repository-metadata__3_2_3//file'],
        deps = [':bazel_mvn_deps___org_codehaus_plexus__plexus_utils'],
        exports = [':bazel_mvn_deps___org_codehaus_plexus__plexus_utils'],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_apache_maven__maven_repository_metadata',
        actual = 'bazel_mvn_deps___org_apache_maven__maven-repository-metadata__3_2_3',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_apache_maven__maven-aether-provider__3_2_3',
        jars = ['@bazel_mvn_deps___org_apache_maven__maven-aether-provider__3_2_3//file'],
        deps = [
            ':bazel_mvn_deps___org_apache_maven__maven_model', 
            ':bazel_mvn_deps___org_apache_maven__maven_model_builder', 
            ':bazel_mvn_deps___org_apache_maven__maven_repository_metadata', 
            ':bazel_mvn_deps___org_codehaus_plexus__plexus_component_annotations', 
            ':bazel_mvn_deps___org_codehaus_plexus__plexus_utils', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_api', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_impl', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_spi', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_util', 
        ],
        exports = [
            ':bazel_mvn_deps___org_apache_maven__maven_model', 
            ':bazel_mvn_deps___org_apache_maven__maven_model_builder', 
            ':bazel_mvn_deps___org_apache_maven__maven_repository_metadata', 
            ':bazel_mvn_deps___org_codehaus_plexus__plexus_component_annotations', 
            ':bazel_mvn_deps___org_codehaus_plexus__plexus_utils', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_api', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_impl', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_spi', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_util', 
        ],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_apache_maven__maven_aether_provider',
        actual = 'bazel_mvn_deps___org_apache_maven__maven-aether-provider__3_2_3',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_scijava__native-lib-loader__2_0_2',
        jars = ['@bazel_mvn_deps___org_scijava__native-lib-loader__2_0_2//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_scijava__native_lib_loader',
        actual = 'bazel_mvn_deps___org_scijava__native-lib-loader__2_0_2',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_eclipse_aether__aether-api__1_1_0',
        jars = ['@bazel_mvn_deps___org_eclipse_aether__aether-api__1_1_0//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_eclipse_aether__aether_api',
        actual = 'bazel_mvn_deps___org_eclipse_aether__aether-api__1_1_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_hamcrest__hamcrest-core__1_3',
        jars = ['@bazel_mvn_deps___org_hamcrest__hamcrest-core__1_3//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_hamcrest__hamcrest_core',
        actual = 'bazel_mvn_deps___org_hamcrest__hamcrest-core__1_3',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_apache_maven__maven-artifact__3_5_0',
        jars = ['@bazel_mvn_deps___org_apache_maven__maven-artifact__3_5_0//file'],
        deps = [
            ':bazel_mvn_deps___org_apache_commons__commons_lang3', 
            ':bazel_mvn_deps___org_codehaus_plexus__plexus_utils', 
        ],
        exports = [
            ':bazel_mvn_deps___org_apache_commons__commons_lang3', 
            ':bazel_mvn_deps___org_codehaus_plexus__plexus_utils', 
        ],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_apache_maven__maven_artifact',
        actual = 'bazel_mvn_deps___org_apache_maven__maven-artifact__3_5_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_apache_commons__commons-lang3__3_8_1',
        jars = ['@bazel_mvn_deps___org_apache_commons__commons-lang3__3_8_1//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_apache_commons__commons_lang3',
        actual = 'bazel_mvn_deps___org_apache_commons__commons-lang3__3_8_1',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_apache_openejb__javaee-api__5_0-2',
        jars = ['@bazel_mvn_deps___org_apache_openejb__javaee-api__5_0-2//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_apache_openejb__javaee_api',
        actual = 'bazel_mvn_deps___org_apache_openejb__javaee-api__5_0-2',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___com_beust__jcommander__1_72',
        jars = ['@bazel_mvn_deps___com_beust__jcommander__1_72//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___com_beust__jcommander',
        actual = 'bazel_mvn_deps___com_beust__jcommander__1_72',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___commons-logging__commons-logging__1_2',
        jars = ['@bazel_mvn_deps___commons-logging__commons-logging__1_2//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___commons_logging__commons_logging',
        actual = 'bazel_mvn_deps___commons-logging__commons-logging__1_2',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_codehaus_plexus__plexus-interpolation__1_24',
        jars = ['@bazel_mvn_deps___org_codehaus_plexus__plexus-interpolation__1_24//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_codehaus_plexus__plexus_interpolation',
        actual = 'bazel_mvn_deps___org_codehaus_plexus__plexus-interpolation__1_24',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___log4j__log4j__1_2_17',
        jars = ['@bazel_mvn_deps___log4j__log4j__1_2_17//file'],
        deps = [':bazel_mvn_deps___org_apache_openejb__javaee_api'],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___log4j__log4j',
        actual = 'bazel_mvn_deps___log4j__log4j__1_2_17',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_eclipse_aether__aether-connector-basic__1_1_0',
        jars = ['@bazel_mvn_deps___org_eclipse_aether__aether-connector-basic__1_1_0//file'],
        deps = [
            ':bazel_mvn_deps___org_eclipse_aether__aether_api', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_spi', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_util', 
        ],
        exports = [
            ':bazel_mvn_deps___org_eclipse_aether__aether_api', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_spi', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_util', 
        ],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_eclipse_aether__aether_connector_basic',
        actual = 'bazel_mvn_deps___org_eclipse_aether__aether-connector-basic__1_1_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_slf4j__jcl-over-slf4j__1_6_2',
        jars = ['@bazel_mvn_deps___org_slf4j__jcl-over-slf4j__1_6_2//file'],
        deps = [':bazel_mvn_deps___org_slf4j__slf4j_api'],
        exports = [':bazel_mvn_deps___org_slf4j__slf4j_api'],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_slf4j__jcl_over_slf4j',
        actual = 'bazel_mvn_deps___org_slf4j__jcl-over-slf4j__1_6_2',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___net_bytebuddy__byte-buddy__1_9_3',
        jars = ['@bazel_mvn_deps___net_bytebuddy__byte-buddy__1_9_3//file'],
        deps = [':bazel_mvn_deps___com_google_code_findbugs__findbugs_annotations'],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___net_bytebuddy__byte_buddy',
        actual = 'bazel_mvn_deps___net_bytebuddy__byte-buddy__1_9_3',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_eclipse_aether__aether-impl__1_1_0',
        jars = ['@bazel_mvn_deps___org_eclipse_aether__aether-impl__1_1_0//file'],
        deps = [
            ':bazel_mvn_deps___org_eclipse_aether__aether_api', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_spi', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_util', 
        ],
        exports = [
            ':bazel_mvn_deps___org_eclipse_aether__aether_api', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_spi', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_util', 
        ],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_eclipse_aether__aether_impl',
        actual = 'bazel_mvn_deps___org_eclipse_aether__aether-impl__1_1_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_objenesis__objenesis__2_6',
        jars = ['@bazel_mvn_deps___org_objenesis__objenesis__2_6//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_objenesis__objenesis',
        actual = 'bazel_mvn_deps___org_objenesis__objenesis__2_6',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___com_google_code_findbugs__jsr305__3_0_2',
        jars = ['@bazel_mvn_deps___com_google_code_findbugs__jsr305__3_0_2//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___com_google_code_findbugs__jsr305',
        actual = 'bazel_mvn_deps___com_google_code_findbugs__jsr305__3_0_2',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___com_google_guava__guava__20_0',
        jars = ['@bazel_mvn_deps___com_google_guava__guava__20_0//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___com_google_guava__guava',
        actual = 'bazel_mvn_deps___com_google_guava__guava__20_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_codehaus_plexus__plexus-utils__3_0_24',
        jars = ['@bazel_mvn_deps___org_codehaus_plexus__plexus-utils__3_0_24//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_codehaus_plexus__plexus_utils',
        actual = 'bazel_mvn_deps___org_codehaus_plexus__plexus-utils__3_0_24',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_slf4j__slf4j-api__1_6_2',
        jars = ['@bazel_mvn_deps___org_slf4j__slf4j-api__1_6_2//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_slf4j__slf4j_api',
        actual = 'bazel_mvn_deps___org_slf4j__slf4j-api__1_6_2',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_apache_maven_wagon__wagon-provider-api__1_0',
        jars = ['@bazel_mvn_deps___org_apache_maven_wagon__wagon-provider-api__1_0//file'],
        deps = [':bazel_mvn_deps___org_codehaus_plexus__plexus_utils'],
        exports = [':bazel_mvn_deps___org_codehaus_plexus__plexus_utils'],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_apache_maven_wagon__wagon_provider_api',
        actual = 'bazel_mvn_deps___org_apache_maven_wagon__wagon-provider-api__1_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___com_google_code_findbugs__findbugs-annotations__3_0_1',
        jars = ['@bazel_mvn_deps___com_google_code_findbugs__findbugs-annotations__3_0_1//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___com_google_code_findbugs__findbugs_annotations',
        actual = 'bazel_mvn_deps___com_google_code_findbugs__findbugs-annotations__3_0_1',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___net_bytebuddy__byte-buddy-agent__1_9_3',
        jars = ['@bazel_mvn_deps___net_bytebuddy__byte-buddy-agent__1_9_3//file'],
        deps = [
            ':bazel_mvn_deps___com_google_code_findbugs__findbugs_annotations', 
            ':bazel_mvn_deps___com_kohlschutter_junixsocket__junixsocket_native_common', 
        ],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___net_bytebuddy__byte_buddy_agent',
        actual = 'bazel_mvn_deps___net_bytebuddy__byte-buddy-agent__1_9_3',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_codehaus_plexus__plexus-component-annotations__1_5_5',
        jars = ['@bazel_mvn_deps___org_codehaus_plexus__plexus-component-annotations__1_5_5//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_codehaus_plexus__plexus_component_annotations',
        actual = 'bazel_mvn_deps___org_codehaus_plexus__plexus-component-annotations__1_5_5',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_eclipse_aether__aether-transport-classpath__1_1_0',
        jars = ['@bazel_mvn_deps___org_eclipse_aether__aether-transport-classpath__1_1_0//file'],
        deps = [
            ':bazel_mvn_deps___org_eclipse_aether__aether_api', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_spi', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_util', 
        ],
        exports = [
            ':bazel_mvn_deps___org_eclipse_aether__aether_api', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_spi', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_util', 
        ],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_eclipse_aether__aether_transport_classpath',
        actual = 'bazel_mvn_deps___org_eclipse_aether__aether-transport-classpath__1_1_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_eclipse_aether__aether-transport-file__1_1_0',
        jars = ['@bazel_mvn_deps___org_eclipse_aether__aether-transport-file__1_1_0//file'],
        deps = [
            ':bazel_mvn_deps___org_eclipse_aether__aether_api', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_spi', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_util', 
        ],
        exports = [
            ':bazel_mvn_deps___org_eclipse_aether__aether_api', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_spi', 
            ':bazel_mvn_deps___org_eclipse_aether__aether_util', 
        ],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_eclipse_aether__aether_transport_file',
        actual = 'bazel_mvn_deps___org_eclipse_aether__aether-transport-file__1_1_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___junit__junit__4_12',
        jars = ['@bazel_mvn_deps___junit__junit__4_12//file'],
        deps = [':bazel_mvn_deps___org_hamcrest__hamcrest_core'],
        exports = [':bazel_mvn_deps___org_hamcrest__hamcrest_core'],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___junit__junit',
        actual = 'bazel_mvn_deps___junit__junit__4_12',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___commons-codec__commons-codec__1_9',
        jars = ['@bazel_mvn_deps___commons-codec__commons-codec__1_9//file'],
        deps = [],
        exports = [],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___commons_codec__commons_codec',
        actual = 'bazel_mvn_deps___commons-codec__commons-codec__1_9',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___com_kohlschutter_junixsocket__junixsocket-native-common__2_0_4',
        jars = ['@bazel_mvn_deps___com_kohlschutter_junixsocket__junixsocket-native-common__2_0_4//file'],
        deps = [
            ':bazel_mvn_deps___com_kohlschutter_junixsocket__junixsocket_common', 
            ':bazel_mvn_deps___log4j__log4j', 
            ':bazel_mvn_deps___org_scijava__native_lib_loader', 
        ],
        exports = [
            ':bazel_mvn_deps___com_kohlschutter_junixsocket__junixsocket_common', 
            ':bazel_mvn_deps___log4j__log4j', 
            ':bazel_mvn_deps___org_scijava__native_lib_loader', 
        ],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___com_kohlschutter_junixsocket__junixsocket_native_common',
        actual = 'bazel_mvn_deps___com_kohlschutter_junixsocket__junixsocket-native-common__2_0_4',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_eclipse_aether__aether-spi__1_1_0',
        jars = ['@bazel_mvn_deps___org_eclipse_aether__aether-spi__1_1_0//file'],
        deps = [':bazel_mvn_deps___org_eclipse_aether__aether_api'],
        exports = [':bazel_mvn_deps___org_eclipse_aether__aether_api'],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_eclipse_aether__aether_spi',
        actual = 'bazel_mvn_deps___org_eclipse_aether__aether-spi__1_1_0',
        visibility = ['//visibility:public'],
    )


    native.java_import(name = 'bazel_mvn_deps___org_apache_httpcomponents__httpclient__4_5_3',
        jars = ['@bazel_mvn_deps___org_apache_httpcomponents__httpclient__4_5_3//file'],
        deps = [
            ':bazel_mvn_deps___commons_codec__commons_codec', 
            ':bazel_mvn_deps___commons_logging__commons_logging', 
            ':bazel_mvn_deps___org_apache_httpcomponents__httpcore', 
        ],
        exports = [
            ':bazel_mvn_deps___commons_codec__commons_codec', 
            ':bazel_mvn_deps___commons_logging__commons_logging', 
            ':bazel_mvn_deps___org_apache_httpcomponents__httpcore', 
        ],
        runtime_deps = [],
    )

    native.alias(name = 'bazel_mvn_deps___org_apache_httpcomponents__httpclient',
        actual = 'bazel_mvn_deps___org_apache_httpcomponents__httpclient__4_5_3',
        visibility = ['//visibility:public'],
    )


