#

set -ex

cd $CRTS_BUILDDIR/dependencies/gnuradio
make
make install
