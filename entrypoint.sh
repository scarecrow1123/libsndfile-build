#! /bin/bash
set -e

mkdir libsndfile_build
git clone --depth 1 --branch v1.0.29 https://github.com/erikd/libsndfile
cd libsndfile
./autogen.sh
./configure --enable-werror --prefix=/usr/libsndfile/libsndfile_build
make
make install
rm -r /usr/libsndfile/libsndfile
