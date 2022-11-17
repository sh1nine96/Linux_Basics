#! /bin/bash
#while-menu: a menu driven system information programme
DELAY=3 #number of seconds to display the results
while true; do
    clear
    echo "
    Please select:
    1. Display system information
    2. display disk size
    3. Display home space utilization
    0. Quit
    "
    read -p "Enter selection [0-3] -> "
    if [[ "$REPLY" =~ ^-?[0-3]$ ]]; then
        if [[ "$REPLY" == 1 ]]; then
            echo "Hostname: $HOSTNAME"
            uptime
            sleep "$DELAY"
            continue
        fi
        if [[ "$REPLY" == 2 ]]; then
            df -h
            sleep "$DELAY"
            continue
        fi
        if [[ "$REPLY" == 3 ]]; then
            if [[ "id -u" -eq 0 ]]; then
                echo "Home space utilization (All users)"
                du -sh /root/*
            else
                echo "Home space utilisation ($USER)"
                du -sh "$HOME"
            fi
        sleep "$DELAY"
        continue
        fi
        if [[ "$REPLY" == 0 ]]; then
            break
        fi
    else
        echo "Invalid entry." >&2
        sleep "$DELAY"
    fi
done
echo "Programme terminated"