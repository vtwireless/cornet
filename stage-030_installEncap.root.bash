#

set -ex

mkdir -p $PREPREFIX/sbin/
# The encap wrapper is a csh script.
apt-get install -y csh perl
cp encap.pl encap $PREPREFIX/sbin/
chmod 755 $PREPREFIX/sbin/encap
