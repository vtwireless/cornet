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


# Mark this script as done so it does not run the next time we run
# "sudo ./Install" .
#

date > ${0}.done
chown $USER ${0}.done

set +x

seconds=10

cat << EOF

#############################################################################
#############################################################################
#############################################################################

We'll reboot the system.


After this computer reboots, you'll need to login again and run:



      cd $PWD && ./Install
   


again.  Rebooting in $seconds seconds.


EOF


set +ex
while [ "$seconds" != "0" ] ; do
    sleep 1
    echo -n " $seconds"
    let seconds=$seconds-1
done

echo -e "\n\nBye\n"

sleep 1

set -e

reboot

# We'll get wacked by the reboot
sleep 10

