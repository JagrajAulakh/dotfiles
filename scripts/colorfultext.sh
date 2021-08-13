FONTPATH="/usr/share/figlet/fonts"
FONTTOUSE="$(ls -I fonts ""$FONTPATH/*.flf"" | shuf -n 1)"
PATHTOFONT="$FONTTOUSE"

echo -e "$1" | figlet -f "$PATHTOFONT" | lolcat
