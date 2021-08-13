#!/bin/sh

pactl set-source-mute alsa_input.pci-0000_00_1f.3.analog-stereo toggle
# killall dunst

MSG="$(pactl list sources | grep -A 10 "alsa.input" | grep "Mute" | tr -d "\t")"
OUTPUT="$(echo "$MSG" | grep -q yes && echo "Muted" || echo "Not Muted")"
notify-send -t 500 "$OUTPUT"
