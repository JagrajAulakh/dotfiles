volnoti -t 1 -a 0.2 -r 25 2> /dev/null
vol=$(pulseaudio-ctl current)

num=${vol:0:-1}
volnoti-show $num
