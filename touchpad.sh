#!/bin/bash

# list options
# xinput --list-props "SynPS/2 Synaptics TouchPad"

tp="ETPS/2 Elantech Touchpad"

xinput --set-prop --type=int --format=32 "$tp" "Synaptics Two-Finger Pressure" 4

# Below width 1 finger touch, above width simulate 2 finger touch. - value=pad-pixels
xinput --set-prop --type=int --format=32 "$tp" "Synaptics Two-Finger Width" 8

# vertical scrolling, horizontal scrolling - values: 0=disable 1=enable
xinput --set-prop --type=int --format=8  "$tp" "Synaptics Two-Finger Scrolling" 1 1

# vertical, horizontal, corner - values: 0=disable  1=enable
xinput --set-prop --type=int --format=8  "$tp" "Synaptics Edge Scrolling" 0 0 0

# stabilize 2 finger actions - value=pad-pixels
xinput --set-prop --type=int --format=32 "$tp" "Synaptics Jumpy Cursor Threshold" 250

# pad corners rt rb lt lb tap fingers 1 2 3 (can't simulate more then 2 tap fingers AFAIK) - values: 0=disable 1=left 2=middle 3=right etc. (in FF 8=back 9=forward)
xinput --set-prop --type=int --format=8  "$tp" "Synaptics Tap Action" 0 0 0 0 1 2 3   

# Natural scrolling by swapping button 5 and 4 
xinput set-button-map "$tp" 1 2 3 5 4 6 7 8 9 10 11 12

