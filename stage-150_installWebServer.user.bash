# Install cornet web server and supporting files.

set -ex

mkdir -p $CORNET_PREFIX/bin


cat << EOF > bin/cornet_webServer
#!/bin/bash

# This is a generated file.

EOF



sed\
 -e "s!@DEFAULT_HTTPS_PORT@!${DEFAULT_HTTPS_PORT}!g"\
 bin/cornet_webServer.in\
 >> bin/cornet_webServer

chmod 755 bin/cornet_webServer
cp bin/cornet_webServer $CORNET_PREFIX/bin
cp -r etc $CORNET_PREFIX/
