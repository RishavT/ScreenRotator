#!/bin/bash
# This script rotates the screen and touchscreen input 180 degrees, disables the touchpad, and enables the virtual keyboard
matrix="1 0 0 0 1 0 0 0 1"
if [[ "$1" == "left" ]]
then
	matrix="0 1 0 -1 0 1 0 0 1"
fi
xinput set-prop 'Wacom HID 52A2 Finger' 'Coordinate Transformation Matrix' $matrix
# xinput disable 'SynPS/2 Synaptics TouchPad'
