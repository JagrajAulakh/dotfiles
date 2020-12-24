MACROS=$(ls -w 1 ~/macros/*.macro | cut -d"/" -f5)

ANS=$(~/scripts/prompt.sh "Macro:" "$MACROS")

# echo $ANS
if [ -n "$ANS" ]; then
	echo "RUNNING MACRO"
	cat ~/macros/$ANS | xmacroplay
fi

echo "DONE"
