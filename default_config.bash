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
export DEFAULT_HTTPS_PORT=9090


# DEFAULT_SERVER_ADDRESS is the address or domain name that refers to this
# server from computers (nodes) that access the stream programs that
# access the USRPs. This address will be used to let the CRTS spectrum
# feed program and the CRTS Controllers connect to this server.  You want
# this to be the IP4 address of the computer that you are running the web
# server on.   Fro example DEFAULT_SERVER_ADDRESS=192.168.40.141
#
export DEFAULT_SERVER_ADDRESS=192.168.40.141



# Version of CRTS to download and install
#
export CRTS_TAG=master




##########################################################################
#    Things to configure, but maybe not so much.
##########################################################################

# Where is the base directory of the encap system.  Where files get
# installed.
#
export PREPREFIX=/usr/local

# where to put the top CRTS source directory
#
export CRTS_BUILDDIR=../crts-$CRTS_TAG

# Where CRTS is installed
#
export CRTS_PREFIX=$PREPREFIX/encap/crts-$CRTS_TAG

# Where Stuff in this package is installed
#
export CORNET_PREFIX=$PREPREFIX/encap/cornet

