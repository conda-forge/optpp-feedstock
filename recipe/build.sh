#!/bin/sh

autoreconf -i
export LDFLAGS="${LDFLAGS} -Wl,-no-undefined"
./configure \
  --prefix=$PREFIX --includedir=$PREFIX/include/opt++ \
  --disable-static --enable-shared
make -j${CPU_COUNT}
make check -j${CPU_COUNT}
make install
