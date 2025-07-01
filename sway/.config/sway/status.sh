#!/bin/bash

while true; do
    # Battery info (assumes BAT0)
    if [ -d /sys/class/power_supply/BAT0 ]; then
        BATTERY=$(cat /sys/class/power_supply/BAT0/capacity)
        STATUS=$(cat /sys/class/power_supply/BAT0/status)
        BAT_DISPLAY="BAT: $BATTERY% ($STATUS)"
    else
        BAT_DISPLAY="BAT: N/A"
    fi

    # Date/time
    TIME=$(date +'%F  %X')

    # Print status line
    echo "$BAT_DISPLAY | $TIME"

    sleep 1
done

