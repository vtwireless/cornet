#

set -ex

mkdir -p $PREPREFIX/sbin/
mkdir -p $PREPREFIX/encap
chown $INST_USER:$INST_USER $PREPREFIX/encap
# The encap wrapper is a csh script.
apt-get install -y csh perl
cp encap.pl encap $PREPREFIX/sbin/
chmod 755 $PREPREFIX/sbin/encap
