#

set -ex

cd $CRTS_BUILDDIR
./configure --prefix=$CRTS_PREFIX
make download
