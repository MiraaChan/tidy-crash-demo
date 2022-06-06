package(default_visibility = ["//visibility:public"])

platform(
    name = "x64_windows-clang-cl",
    constraint_values = [
        "@platforms//cpu:x86_64",
        "@platforms//os:windows",
        "@bazel_tools//tools/cpp:clang-cl",
    ],
)

filegroup(
    name = "clang_tidy_config",
    data = [".clang-tidy"],
    visibility = ["//visibility:public"],
)
