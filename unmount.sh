#!/bin/sh
onLogout() {
    echo 'Logging out' >> /Users/joshsullivan/logs/logout.sh.log
    echo Unmounting directory
    diskutil unmount /Volumes/MIS\ Munki
    exit
}

trap 'onLogout' SIGINT SIGHUP SIGTERM
while true; do
    sleep 86400 &
    wait $!
done
