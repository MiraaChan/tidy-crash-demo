# tidy-crash-demo
Clang-tidy crash demo for this issue: https://github.com/llvm/llvm-project/issues/55715

## Previously on

Crashes are occurred when i use clang-tidy with mlir dialects called in my project.

Code building and testing is fine, only crashed when i use clang-tidy check.

Every thing is fine, when i use old version of llvm-project(commit id: a48300a).
The commit id of llvm-project which I've forked recently is 6edbdf8.

Besides,the commit id of llvm that I built the clang-tidy is fcade8e.

For convenience, I've provided the [binary file](https://github.com/MiraaChan/clang-tidy-15/releases/download/clang-tidy-15/clang-tidy-15-fcade8e91eaeb682c7b882bfd56836b66cd91960.tar.gz) of clang-tidy that I built.


## Reproduce
How to reproduce
```
bazel build --config=clang-tidy //crash:CrashTest
```

Preprocessed output:
```
bazel build --save_temps --keep_going //crash:CrashTest
```

