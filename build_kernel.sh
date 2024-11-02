#!/bin/bash

export PATH=$(pwd)/clang/bin:$PATH
export CROSS_COMPILE=$(pwd)/clang/bin/aarch64-linux-gnu-
export CC=$(pwd)/clang/bin/clang
export CLANG_TRIPLE=aarch64-linux-gnu-
export ARCH=arm64
export PLATFORM_VERSION=12
export LOCALVERSION=-ViP3R🐍-v1.0-NETHUNTER-RELOADED
export KBUILD_BUILD_USER=IamCOD3X
export KBUILD_BUILD_HOST=RYZEN
export DTC_EXT=/usr/bin/dtc

export KCFLAGS=-w
export CONFIG_SECTION_MISMATCH_WARN_ONLY=y

make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y LLVM=1 LLVM_IAS=1 a34x_defconfig
make -C $(pwd) O=$(pwd)/out KCFLAGS=-w CONFIG_SECTION_MISMATCH_WARN_ONLY=y LLVM=1 LLVM_IAS=1 -j8

