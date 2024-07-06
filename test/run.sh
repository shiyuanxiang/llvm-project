#!/bin/bash
if [ $# -lt 1 ]; then
    cd ../llvm-project
    ./run.sh
    exit 0
fi
fname=$1
if [ -z $fname ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi
# clang++ -fsanitize=address -O1 -fno-omit-frame-pointer -g tmp.cc -o asan.out
clang++ -fsanitize=address $fname.cc -g -o $fname-asan.out
clang++ -emit-llvm -S -fsanitize=address $fname.cc -o $fname-asan.ll
echo "=============================asan.out============================="
.\/$fname-asan.out


# clang++ -fsanitize=memory $fname.cc -g -o $fname-msan-g.out
# clang++ -fsanitize=memory -fsanitize-memory-track-origins=2  $fname.cc -g -o $fname-msan-g.out
clang++ -fsanitize=memory  $fname.cc -g -o $fname-msan-g.out
clang++ -fsanitize=memory $fname.cc -o $fname-msan.out
# clang++ -emit-llvm -S -fsanitize=memory $fname.cc -o $fname-msan.ll
clang++ -emit-llvm -S -fsanitize=memory $fname.cc -g -o $fname-msan-g.ll
clang++ -emit-llvm -S $fname.cc -o $fname-ori.ll
echo "=============================msan.out============================="
.\/$fname-msan-g.out



