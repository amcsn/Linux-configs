#!/bin/sh
INTERFACE="${1:-enp3s0}"
LABEL=""
state="$(cat /sys/class/net/$INTERFACE/operstate)"
if [ "$state" != "up" ]; then
	echo "$LABEL"
	#echo "$LABEL: down"
	#echo "#bf4040"
	exit 0
else
	echo "$LABEL"
	echo "#8FFFA2"
	exit 0
fi
