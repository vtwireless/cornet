#

set -ex

rm -f /etc/skel/.bashrc
cp skel/.bashrc /etc/skel
cp -r skel/.vim /etc/skel
cp skel/.vimrc /etc/skel
