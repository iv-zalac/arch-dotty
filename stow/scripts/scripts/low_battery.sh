#!/bin/bash

PERCENTAGE=15

battery_status=$(acpi -b | awk -F'[,:%]' '{print $2}' | tr -d ' ' ) 
battery_percentage=$(acpi -b | awk -F'[,:%]' '{print $3}' | tr -d ' ' ) 

export DISPLAY=:0
dbus-launch
export $(dbus-launch)

if [ "$battery_status" = "Discharging" ] && [ "$battery_percentage" -lt $PERCENTAGE ]
  then
    echo "we in bois"
    /usr/bin/notify-send --urgency=critical "low battery" "Charge the damn laptop!"
fi
#	if [ "$status" = Discharging -a "$capacity" -lt 5 ]; then
#		logger "Critical battery threshold"
#		systemctl hibernate
#	fi
#}
