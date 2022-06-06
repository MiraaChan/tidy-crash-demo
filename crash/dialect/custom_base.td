#ifndef CUSTOM_DIALECT_CUSTOM_BASE
#define CUSTOM_DIALECT_CUSTOM_BASE

include "mlir/IR/AttrTypeBase.td"
include "mlir/IR/OpBase.td"

def CustomDialect : Dialect {
    let name = "cus";
    let description = [{
        custom graph representaion optimize dialect
    }];
    let dependentDialects = [
        "arith::ArithmeticDialect",
        "tensor::TensorDialect",
    ];
    let cppNamespace = "::mlir::custom";
}

class Custom_Type<string name, string typeMnemonic> : TypeDef<CustomDialect, name> {
    let mnemonic = typeMnemonic;
}

#endif /* CUSTOM_DIALECT_CUSTOM_BASE*/