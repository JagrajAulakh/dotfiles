killall conky 2> /dev/null
sleep 0.3s
conky -c ~/.config/conky/conky.conf &
conky -c ~/.config/conky/music.conf &
conky -c ~/.config/conky/time.conf &
