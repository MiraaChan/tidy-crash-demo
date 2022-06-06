#ifndef CUSTOM_DIALECT_CUSTOM_TYPES
#define CUSTOM_DIALECT_CUSTOM_TYPES

include "crash/dialect/custom_base.td"

def Custom_VTensorType : Custom_Type<"VTensor", "vtensor"> {
  let summary = "value scementic tensor";
  let description = [{
    an immutable tensor representing any data type or any rank tensor.
  }];
}

#endif /* CUSTOM_DIALECT_CUSTOM_TYPES */
