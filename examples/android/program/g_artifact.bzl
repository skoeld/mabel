
load("@mabel//rules/maven_deps:maven_deps_workspace_generator.bzl", "artifact")

def g_artifact(coordinate):
    return artifact(coordinate, repositories=['https://maven.google.com/'])
