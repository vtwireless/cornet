#

set -ex

cd $CRTS_BUILDDIR/dependencies/node
make
make install
