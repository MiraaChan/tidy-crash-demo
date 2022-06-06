load("@llvm-project//mlir:tblgen.bzl", "gentbl_cc_library", "gentbl_filegroup", "td_library")

package(default_visibility = ["//visibility:public"])

td_library(
    name = "td_files",
    srcs = [
        "custom_base.td",
        "custom_types.td",
    ],
    deps = [
        "@llvm-project//mlir:CallInterfacesTdFiles",
        "@llvm-project//mlir:ControlFlowInterfacesTdFiles",
        "@llvm-project//mlir:InferTypeOpInterfaceTdFiles",
        "@llvm-project//mlir:OpBaseTdFiles",
        "@llvm-project//mlir:SideEffectTdFiles",
        "@llvm-project//mlir:SubElementInterfacesTdFiles",
    ],
)


gentbl_cc_library(
    name = "custom_types_gen",
    tbl_outs = [
        (
            ["-gen-typedef-decls"],
            "custom_types.h.inc",
        ),
        (
            ["-gen-typedef-defs"],
            "custom_types.cpp.inc",
        ),
    ],
    tblgen = "@llvm-project//mlir:mlir-tblgen",
    td_file = "custom_types.td",
    deps = [":td_files"],
)

cc_library(
    name = "ir",
    hdrs = [
        "custom_types.h",
    ],
    textual_hdrs = [
        "custom_types.h.inc",
        "custom_types.cpp.inc",
    ],
    deps = [
        ":custom_types_gen",
        "@llvm-project//llvm:Support",
        "@llvm-project//mlir:ControlFlowInterfaces",
        "@llvm-project//mlir:FuncDialect",
        "@llvm-project//mlir:IR",
        "@llvm-project//mlir:MemRefDialect",
        "@llvm-project//mlir:Parser",
        "@llvm-project//mlir:SideEffectInterfaces",
        "@llvm-project//mlir:SideEffects",
        "@llvm-project//mlir:Support",
        "@llvm-project//mlir:TensorDialect",
        "@llvm-project//mlir:Transforms",
    ],
)