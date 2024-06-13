#!/bin/bash
/home/syx/cmake-3.29.2-linux-x86_64/bin/cmake -S llvm -B build -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra;compiler-rt"

echo "cmake build done."

sudo /home/syx/cmake-3.29.2-linux-x86_64/bin/cmake --build build --target install -j$(nproc)

echo "cmake install done."
