# This file gets sourced by other bash files.

# Copy this file to config.bash and then edit config.bash,
# then run ./Install

# If you wish to add a configuration variable that is accessible in all
# stage scripts, just add it here, and that's it.  Add it here with
# "export" and use it in your stage script.  stage*.bash scripts run in
# the numbered order.  The number of the stage script is determines the
# order in which it runs.

# To change the versions of node JS, UHD, and GNUradio make changes to the
# CRTS code at https://github.com/vtwireless/crts .  Ya, since CRTS is
# very dependent on UHD and GNUradio, and UHD and GNUradio are changing
# often, we keep that information in CRTS,
# https://github.com/vtwireless/crts


##########################################################################
#    Things to configure
##########################################################################

# The default HTTPS port used for the CRTS web server when it is run using
# the wrapper script "run_web_server" in this package.
#
# This you will likely need to change if you will run the web server.
#
export DEFAULT_HTTPS_PORT=9090


# The default HTTPS Address, like foo in https://foo.com, so we know how
# to connect to the web server from the Internet using a web broswer.
#
# This is not the same as DEFAULT_SERVER_ADDRESS which is not necessarily
# accessible from the Internet.
#
export DEFAULT_HTTPS_HOSTNAME=kermit.wireless.vt.edu



# Version of CRTS to download and install
#
export CRTS_TAG=master




##########################################################################
#    Things to configure, but maybe not so much.
##########################################################################


# DEFAULT_SERVER_ADDRESS is the address or domain name that refers to this
# server from computers (nodes) that access the stream programs that
# access the USRPs. This address will be used to let the CRTS spectrum
# feed program and the CRTS Controllers connect to this server.  You want
# this to be the IP4 address of the computer that you are running the web
# server on.   For example DEFAULT_SERVER_ADDRESS=192.168.40.141
#
# This is not necessarily an address that is accessible from the Internet.
#
# Since we get the address from a program there may be no need to change
# this.
#
# Clearly this will fail unless ifconfig is installed.
#
export DEFAULT_SERVER_ADDRESS=$(
/sbin/ifconfig eth1 | grep -e  'inet[^6]' | awk '{print $2}')



# Where is the base directory of the encap system.  Where files get
# installed.
#
export PREPREFIX=/usr/local

# where to put the top CRTS source directory
#
export CRTS_BUILDDIR=crts-$CRTS_TAG

# Where CRTS is installed
#
export CRTS_PREFIX=$PREPREFIX/encap/crts-$CRTS_TAG

# Where Stuff in this package is installed
#
export CORNET_PREFIX=$PREPREFIX/encap/cornet

# The installer user that is own of this source directory and who
# is the owner of the encap directory $PREPREFIX/encap/
#
export INST_USER="$(stat --printf='%U' README.md)"

