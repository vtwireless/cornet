#

set -ex

apt-get update

apt-get dist-upgrade -y

apt-get install -y\
 git\
 vim-gtk\
 build-essential\
 gcc-multilib\
 libgtk2.0-dev\
 libgtk-3-dev\
 devhelp\
 at\
 imagemagick-doc\
 imagemagick\
 graphviz-dev\
 curl\
 pkgconf\
 autoconf\
 libtool\
 automake\
 locate\
 cmake

date > ${0}.done
chown $USER ${0}.done

set +x

cat << EOF

#############################################################################
#############################################################################
#############################################################################

We'll reboot the system.


After this computer reboots, you'll need to login again and run:



      cd $PWD && ./Install
   


again.  Rebooting in 10 seconds.


EOF


# Mark this script as done so it does not run the next time we run
# ./Install .
#

count=10
while [ "$count" != "0" ] ; do
    sleep 1
    echo -n " $count"
    let count=$count-1
done

echo -e "\n\nBye\n"


reboot
