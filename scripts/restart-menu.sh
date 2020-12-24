#!/bin/bash

ANS="$(~/scripts/prompt.sh 'Restart' 'picom\ndunst\nglava\npolybar\nconky')"

case "$ANS" in 
"picom")
	~/scripts/launch_picom.sh
	notify-send "$ANS Has Restarted" "$ANS has restarted."
	;;
"dunst")
	killall dunst
	dunst &
	sleep 0.3s
	notify-send "$ANS Has Restarted" "$ANS has restarted. This is a test notification."
	;;
"polybar")
	~/scripts/launch_polybar.sh
	notify-send "$ANS Has Restarted" "$ANS has restarted."
	;;
"glava")
	~/scripts/launch_glava.sh
	notify-send "$ANS Has Restarted" "$ANS has restarted."
	;;
"conky")
	~/scripts/launch_conky.sh
	notify-send "$ANS Has Restarted" "$ANS has restarted."
	;;
esac
