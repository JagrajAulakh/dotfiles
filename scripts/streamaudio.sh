#!/bin/sh

DEFAULT_OUTPUT="alsa_output.pci-0000_00_1f.3.analog-stereo"
MIC_INPUT="alsa_input.pci-0000_00_1f.3.analog-stereo"

# Make virtual sink for routing audio to discord
echo "Making sink 'toDiscord'"
pactl load-module module-null-sink sink_name=toDiscord
pacmd 'update-sink-proplist toDiscord device.description="Audio to Discord"'
pacmd 'update-sink-proplist toDiscord device.profile.description="Audio to Discord"'

# Make virtual sink for routing audio to both discord and headphones
echo "Making sink 'Both'"
pactl load-module module-null-sink sink_name=Both
pacmd 'update-sink-proplist Both device.description="Both"'
pacmd 'update-sink-proplist Both device.profile.description="Both"'


# Point the "Both" virtual sink to "toDiscord" and DEFAULT_OUTPUT
echo "Routing Microphone to toDiscord"
pactl load-module module-loopback source=$MIC_INPUT sink=toDiscord
echo "Routing Both to toDiscord"
pactl load-module module-loopback source=Both.monitor sink=toDiscord
echo "Routing Both to default output"
pactl load-module module-loopback source=Both.monitor sink=$DEFAULT_OUTPUT


