#!/bin/sh

set -xe

cc -Wall -Wextra -o example example.c
# sudo apt-get update
# sudo apt-get install clang
# sudo apt-get install gcc-multilib
# sudo apt-get install lld-8
#clang -Wall -Wextra --target=wasm32 -o wasm.o -c ./wasm.c
clang++ -Wall -Wextra -Oz --target=wasm32 -emit-llvm -c -S -o wasm.ll wasm.c
llc-6.0 -march=wasm32 -filetype=obj wasm.ll
#wasm-ld-6.0 --no-entry --export-all -o wasm.wasm wasm.o
#wasm-ld-8 --no-entry -o wasm.wasm wasm.o
#wasm-ld-8 --no-entry --export-all --allow-undefined -o wasm.wasm wasm.o
wasm-ld-8 --import-memory --no-entry --export-all -o wasm.wasm wasm.o