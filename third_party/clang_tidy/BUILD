package(default_visibility = ["//visibility:public"])

sh_binary(
    name = "clang_tidy",
    srcs = ["run_clang_tidy.sh"],
    data = [
        "//:clang_tidy_config",
        "@clang_tidy_raw//:clang-tidy",
        "@llvm-project//llvm:Support",
    ],
    tags = ["no-sandbox"],
)
