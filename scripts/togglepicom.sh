#!/usr/bin/env bash

# Try to get a list of PIDs for appropriate conky's
running=$(pgrep picom)

# if running is empty
if [[ -z "$running" ]]; then
	~/scripts/launch_picom.sh
	~/scripts/launch_glava.sh
else
    #Kill all of the PIDs listed in $running
	killall picom glava
fi
