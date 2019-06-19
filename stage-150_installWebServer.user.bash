# Install cornet web server and supporting files.

set -ex

mkdir -p $CORNET_PREFIX/bin


sed\
 -e "s!@DEFAULT_SERVER_ADDRESS@!${DEFAULT_SERVER_ADDRESS}!g"\
 -e "s!@DEFAULT_HTTPS_PORT@!${DEFAULT_HTTPS_PORT}!g"\
 -e "s!@DEFAULT_HTTPS_HOSTNAME@!${DEFAULT_HTTPS_HOSTNAME}!g"\
 -e "s!@CRTS_PREFIX@!${CRTS_PREFIX}!g"\
 bin/cornet_webServer.in\
 > bin/cornet_webServer

cp bin/cornet_webServer $CORNET_PREFIX/bin
chmod 755 $CORNET_PREFIX/bin/cornet_webServer
cp -r etc $CORNET_PREFIX/
