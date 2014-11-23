#!/bin/sh
#
# Perl
set -e
WGETLIST="\
http://www.cpan.org/src/5.0/perl-5.20.0.tar.bz2"
cd $LFS/sources
wget -c $WGETLIST
rm -rf perl-5.20.0
tar -xvf perl-5.20.0.tar.bz2
cd perl-5.20.0
sh Configure -des -Dprefix=/tools -Dlibs=-lm
make -j 5
cp -v perl cpan/podlators/pod2man /tools/bin
mkdir -pv /tools/lib/perl5/5.20.0
cp -Rv lib/* /tools/lib/perl5/5.20.0

