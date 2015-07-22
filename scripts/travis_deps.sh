#!/usr/bin/env sh

set -eux

apt-get update
apt-get install -y indent astyle delta libbenchmark-timer-perl \
  libexporter-lite-perl libfile-which-perl libgetopt-tabular-perl \
  libregexp-common-perl libsys-cpu-perl flex build-essential libz-dev

apt-get install -y python-software-properties wget
add-apt-repository -y ppa:ubuntu-toolchain-r/test
add-apt-repository -y 'deb http://llvm.org/apt/precise/ llvm-toolchain-precise-3.6 main'
wget -O - http://llvm.org/apt/llvm-snapshot.gpg.key | apt-key add -
apt-get update
apt-get install -y llvm-3.6 clang-3.6 libclang-3.6-dev clang-format-3.6 libedit-dev
