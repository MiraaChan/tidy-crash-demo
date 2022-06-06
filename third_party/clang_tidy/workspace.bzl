"""load clang-tidy binary and some config for run"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def clean_dep(dep):
    return str(Label(dep))

def repo():
    http_archive(
        name = "clang_tidy_raw",
        sha256 = "8be2fcee41856610244a1dc5efd6d7ebce957f9a87f58a7f0af6e2242c7cd0f9",
        build_file = clean_dep("//third_party/clang_tidy:clang_tidy.BUILD"),
        urls = [
            "https://github.com/MiraaChan/clang-tidy-15/releases/download/clang-tidy-15/clang-tidy-15-fcade8e91eaeb682c7b882bfd56836b66cd91960.tar.gz",
        ],
    )
