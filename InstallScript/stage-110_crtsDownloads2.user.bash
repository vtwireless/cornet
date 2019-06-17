# Configure and download more stuff for building crts

set -ex

cd $CRTS_BUILDDIR
./configure --prefix=$CRTS_PREFIX
make download
