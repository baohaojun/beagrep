#!/bin/bash
set -ex
TEMP=$(getopt -o s: --long start: -n $(basename $0) -- "$@")
start=
eval set -- "$TEMP"
while true; do
    case "$1" in
        -s|--start)
            start=$2
            shift 2
            ;;
        --)
            shift
            break
            ;;
        *)
            die "internal error"
            ;;
    esac
done

export mono_dir=/cygdrive/c/PROGRA~1/MONO-2~1.6/

if test $# = 1; then
    export mono_dir=$(cygpath -a -m -s "$1"|perl -npe 's!^(.):!"/cygdrive/" . lc($1)!e')
fi
export PATH=$PATH:$mono_dir/bin

export NOCONFIGURE=true
export CC="i686-pc-mingw32-gcc -g"
export CXX="i686-pc-mingw32-g++ -g"
export CFLAGS=$(
    for x in $mono_dir/include/*/; do
        echo -n " "-I$(cygpath -asm $x |perl -npe 's!^(.):!"/cygdrive/" . lc($1)!e'|tr -d \\n)
    done
    echo -n " "-I$mono_dir/include -I$mono_dir/lib/glib-2.0/include -I/usr/include)

export PKG_CONFIG_PATH=$mono_dir/lib/pkgconfig

cd $(dirname $0)
if test "$start"; then
    set +ex
    $start
    exit
fi
./autogen.sh
./configure --prefix=$(wlp /usr/local)
make -j8 -k
make install
cp /usr/local/lib/bin/cygbeagrepglue-0.dll ~/bin/windows/ext/libbeagrepglue.dll
