#!/bin/sh

./configure ac_cv_f77_mangling="lower case, underscore, no extra underscore" \
  --prefix=$PREFIX --includedir=$PREFIX/include/opt++ \
  --disable-static --enable-shared
make -j${CPU_COUNT}
make check -j${CPU_COUNT}
make install
