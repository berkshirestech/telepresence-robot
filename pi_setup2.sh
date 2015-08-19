#!/bin/bash

echo "Starting setup for telepresence robot at " $(date "+%Y.%m.%d-%H.%M.%S")
echo "Making backup of rc.local..."

if [ -e /etc/rc.local.backup ]
then
    echo "Backup of rc.local already exists... Did you already run this script?" 
    exit 1
else
    cp /etc/rc.local /etc/rc.local.backup
fi

echo "Replacing rc.local with new one..."

if [ -e ./rc.local ]
then
    cp ./rc.local /etc/rc.local
else
    echo "New rc.local not found..."
    exit 1
fi

echo "Done! Restart the raspberry pi to enable the robot"
