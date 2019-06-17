# Build and install crts

set -ex

cd $CRTS_BUILDDIR
make
make install
