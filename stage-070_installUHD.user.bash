# build and install UHD

set -ex

cd $CRTS_BUILDDIR/dependencies/uhd
make
make install
