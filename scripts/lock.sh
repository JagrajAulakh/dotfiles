#!/bin/bash
TMPBG=/tmp/screen.png
LOCK=$HOME/scripts/lock_blue.png
RES=1920x1080
 
ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -i $LOCK -filter_complex "[0:v]boxblur=5:1,hue=s=0.2[bg];[1:v]scale=iw*0.5:-1[lock];[bg][lock]overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" -vframes 1 $TMPBG
i3lock -e -i $TMPBG

