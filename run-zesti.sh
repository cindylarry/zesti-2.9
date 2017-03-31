#!/bin/bash

rm -rf build
mkdir build
cd build
../configure  LDFLAGS="-L/home/klee/libs/lib/"  --with-llvm=/home/klee/llvm29-master/   --with-llvm-build-mode=Release --with-stp=/home/klee/stp-r940/install 
make ENABLE_OPTIMIZATION=1 -j `nproc`

