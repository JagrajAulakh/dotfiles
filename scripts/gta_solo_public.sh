GTAPID=$(pgrep GTA5.exe || echo -1)
DURATION=9

if [[ $GTAPID != -1 ]]; then
	echo "Suspending process for ""$DURATION""s"
	kill -STOP $GTAPID && sleep "$DURATION""s" && kill -CONT $GTAPID
else
	echo "GTA IS NOT RUNNING!"
fi
