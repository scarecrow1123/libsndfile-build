#! /bin/bash
set -e

mkdir libsndfile_build
git clone https://github.com/erikd/libsndfile
cd libsndfile
./autogen.sh
./configure --enable-werror --prefix=/usr/libsndfile/libsndfile_build
make
make install
rm -r /usr/libsndfile/libsndfile
