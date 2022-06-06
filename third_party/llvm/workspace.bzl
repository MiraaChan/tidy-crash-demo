"""load llvm library"""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def repo():
    LLVM_COMMIT = "6edbdf80cac119f8f30d2ae6fa2972d9e778510b"
    LLVM_SHA256 = "dd7ca82116dbfc1ddd7159425965318dfbe7a39e5f150a19880f7f40c6118001"
    http_archive(
        name = "llvm-raw",
        build_file = "//third_party/llvm:BUILD",
        sha256 = LLVM_SHA256,
        strip_prefix = "llvm-project-" + LLVM_COMMIT,
        urls = [
            "https://github.com/llvm/llvm-project/archive/{commit}.tar.gz".format(commit = LLVM_COMMIT),
        ],
    )
