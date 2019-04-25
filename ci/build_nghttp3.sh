#!/bin/sh
#build nghttp3 (for Travis)

cd ..
git clone https://github.com/ngtcp2/nghttp3
cd nghttp3
autoreconf -i
./configure --prefix=$PWD/build --enable-lib-only
make -j$(nproc) check
make install
cd ..
