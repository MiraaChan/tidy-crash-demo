#include "crash/dialect/custom_types.h"
#include "mlir/IR/PatternMatch.h"
void CrashFunc(mlir::OpBuilder &builder) {
  auto context = builder.getContext();
  llvm::SmallVector<mlir::Type> output_types;
  output_types.push_back(mlir::custom::VTensorType::get(context));
}