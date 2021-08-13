feh --bg-fill ~/Pictures/wall.jpg &
xset r rate 160 30
~/scripts/launch_picom.sh &
/usr/lib/mate-polkit/polkit-mate-authentication-agent-1 &
dunst &
~/scripts/launch_polybar.sh &
~/scripts/launch_glava.sh &
~/scripts/launch_conky.sh &

nm-applet &
blueman-tray &
clementine &
~/scripts/touchpad.sh
