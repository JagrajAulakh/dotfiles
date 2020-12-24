FONTPATH="/usr/share/figlet/fonts/"
FONTTOUSE="$(ls -I fonts "$FONTPATH" | shuf -n 1)"
PATHTOFONT="$FONTPATH""$FONTTOUSE"

echo -e "$1" | figlet -f "$PATHTOFONT" | lolcat
