#!/bin/bash
set -ex
export NOCONFIGURE=true
export CC="i686-pc-mingw32-gcc -mno-cygwin -g"
export CXX="i686-pc-mingw32-g++ -mno-cygwin -g"
export CFLAGS='-I/cygdrive/c/PROGRA~1/MONO-2~1.6/include/atk-1.0 -I/cygdrive/c/PROGRA~1/MONO-2~1.6/include/cairo -I/cygdrive/c/PROGRA~1/MONO-2~1.6/include/FONTCO~1 -I/cygdrive/c/PROGRA~1/MONO-2~1.6/include/FREETY~1 -I/cygdrive/c/PROGRA~1/MONO-2~1.6/include/gail-1.0 -I/cygdrive/c/PROGRA~1/MONO-2~1.6/include/GDK-PI~1.0 -I/cygdrive/c/PROGRA~1/MONO-2~1.6/include/glib-2.0 -I/cygdrive/c/PROGRA~1/MONO-2~1.6/include/gtk-2.0 -I/cygdrive/c/PROGRA~1/MONO-2~1.6/include/LIBGLA~1.0 -I/cygdrive/c/PROGRA~1/MONO-2~1.6/include/libpng14 -I/cygdrive/c/PROGRA~1/MONO-2~1.6/include/libxml2 -I/cygdrive/c/PROGRA~1/MONO-2~1.6/include/mono-2.0 -I/cygdrive/c/PROGRA~1/MONO-2~1.6/include/pango-1.0 -I/cygdrive/c/PROGRA~1/MONO-2~1.6/include -I/cygdrive/c/PROGRA~1/MONO-2~1.6/lib/glib-2.0/include -I/usr/include' 
export PKG_CONFIG_PATH=/cygdrive/c/PROGRA~1/MONO-2~1.6/lib/PKGCON~1

cd $(dirname $0)
./autogen.sh
./configure --prefix=$(wlp /usr/local)
make -j8 -k
make install
cp /usr/local/lib/bin/cygbeagrepglue-0.dll ~/bin/windows/ext/libbeagrepglue.dll
