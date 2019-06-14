#

set -ex

cd $CRTS_BUILDDIR/dependencies/uhd
make
make install
