#!/bin/bash
echo " "
cd /tmp
rm -R /tmp/* 2>/dev/null
echo "Trying to remove /tmp/.X0-lock"
rm /tmp/.X0-lock 2>/dev/null
#echo " "
#echo "Starting Xvfb"
#Xvfb :0 -screen 0 1024x768x16 &
#DISPLAY=:0.0 wine64 /some.file.exe 2>&1
/usr/bin/tail -f /var/log/dpkg.log

