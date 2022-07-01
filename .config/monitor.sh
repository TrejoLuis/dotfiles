#!/bin/sh

##if [ $(xrandr | grep "HDMI-A-0 connected")  ]; then
if xrandr | grep -q "HDMI-A-0 connected"; then
#	echo "DUAL MONITOR"
	xrandr --output eDP --primary --auto --output HDMI-A-0 --auto --right-of eDP
else
#	echo "SINGLE MONITOR"
	xrandr --output eDP --auto --output HDMI-A-0 --off
fi
#Dual monitor
#xrandr --auto --output eDP --primary --auto --output HDMI-A-0 --right-of eDP --auto
