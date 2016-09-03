#!/bin/sh
onLogout() {
    echo 'Logging out' >> /var/log/logout.sh.log
    echo Unmounting directory
    diskutil unmount /Volumes/name_of_volume
    exit
}

trap 'onLogout' SIGINT SIGHUP SIGTERM
while true; do
    sleep 86400 &
    wait $!
done
