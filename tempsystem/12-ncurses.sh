#!/bin/sh
#
# Ncurses
set -e
WGETLIST="\
http://ftp.gnu.org/gnu//ncurses/ncurses-5.9.tar.gz"
cd $LFS/sources
wget -c $WGETLIST
rm -rf ncurses-5.9
tar -xvf ncurses-5.9.tar.gz
cd ncurses-5.9
./configure --prefix=/tools \
            --with-shared   \
            --without-debug \
            --without-ada   \
            --enable-widec  \
            --enable-overwrite
make -j 5
make install


