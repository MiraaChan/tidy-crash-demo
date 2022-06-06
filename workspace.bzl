"""workspace"""

load("//third_party/bazel_skylib:workspace.bzl", bazel_skylib = "repo")
load("//third_party/llvm:workspace.bzl", llvm = "repo")
load("//third_party/clang_tidy:workspace.bzl", clang_tidy = "repo")

def initialize_repo():
    """initialize this repo"""
    bazel_skylib()
    llvm()
    clang_tidy()
