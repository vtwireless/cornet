# Download crts and get ready to build crts dependencies
# nodeJS, uhd, and GNUradio

set -ex

DIR="$PWD"

source GetSrcFromGithub.bash

#Usage: GetSrcFromGithub user package tag tarname [sha512]

GetSrcFromGithub vtwireless crts $CRTS_TAG crts-$CRTS_TAG


set -ex

mkdir -p $CRTS_BUILDDIR
tar --directory=$CRTS_BUILDDIR\
 --strip-components=1\
 -xzf crts-$CRTS_TAG.tar.gz


sed -e "s!@root@!${PREPREFIX}/encap!g" prefixes.in > $CRTS_BUILDDIR/dependencies/prefixes


cd $CRTS_BUILDDIR
./bootstrap
cd dependencies

# This should download the source for nodeJS, UHD, and GNUradio
make download

