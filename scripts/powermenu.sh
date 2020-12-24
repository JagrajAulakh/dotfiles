#!/bin/bash

choice=$(~/scripts/prompt.sh "Power Options" "Lock\nLog Out\nSuspend\nShutdown\nReboot")

if [ "$choice" == "Lock" ]; then
	/home/juggy1233/scripts/lock.sh
fi
if [ "$choice" == "Log Out" ]; then
	i3-msg exit
	bspc quit
	pkill dwm
fi
if [ "$choice" == "Suspend" ]; then
	systemctl suspend
fi
if [ "$choice" == "Shutdown" ]; then
	# if mount | grep /mnt/wd > /dev/null; then
	# 	echo "HERE"
	# 	notify-send "Aborting: /mnt/wd is mounted"
	# else
	shutdown -P now
	# fi
fi
if [ "$choice" == "Reboot" ]; then
	# if mount | grep /mnt/wd > /dev/null; then
	# 	notify-send "Aborting: /mnt/wd is mounted"
	# else
	reboot
	# fi
fi
