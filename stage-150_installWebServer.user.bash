# Build and install crts

set -ex

mkdir -p $CORNET_PREFIX/bin


sed\
 -e "s!@DEFAULT_SERVER_ADDRESS@!${DEFAULT_SERVER_ADDRESS}!g"\
 -e "s!@DEFAULT_HTTPS_PORT@!${DEFAULT_HTTPS_PORT}!g"\
 cornet_webServer.in\
 > cornet_webServer

cp cornet_webServer $CORNET_PREFIX/bin
chmod 755 $CORNET_PREFIX/bin/cornet_webServer
