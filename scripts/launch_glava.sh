killall glava 2> /dev/null 
sleep 1s
cd ~/.config/glava
glava -d -e left_mon.glsl > /dev/null &
glava -d -e right_mon.glsl > /dev/null &
