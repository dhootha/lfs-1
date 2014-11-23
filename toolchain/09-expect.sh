#!/bin/sh
#
# Expect
set -e
WGETLIST="\
http://prdownloads.sourceforge.net/expect/expect5.45.tar.gz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf expect5.45
tar -xvf expect5.45.tar.gz
cd expect5.45
cp -v configure{,.orig}
sed 's:/usr/local/bin:/bin:' configure.orig > configure
./configure --prefix=/tools       \
            --with-tcl=/tools/lib \
            --with-tclinclude=/tools/include
make -j 5
#make test
make SCRIPTS="" install




