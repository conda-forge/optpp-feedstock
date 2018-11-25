#!/bin/sh

autoreconf -vfi
export LDFLAGS="${LDFLAGS} -Wl,-no-undefined"
./configure \
  --prefix=$PREFIX --includedir=$PREFIX/include/opt++ \
  --disable-static --enable-shared || cat config.log
make -j${CPU_COUNT}
make check -j${CPU_COUNT}
make install
