#! /bin/bash
#read-menus: a menu driven system information programme
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
    if [[ "$REPLY" == 0 ]]; then
        echo "programme terminated"
        exit
    fi
    if [[ "$REPLY" == 1 ]]; then
        echo "Hostname: $HOSTNAME"
        uptime
        exit
    fi
    if [[ "$REPLY" == 2 ]]; then
        df -h
        exit
    fi
    if [[ "$REPLY" == 3 ]]; then
        if [[ "id -u" -eq 0 ]]; then
            echo "Home space utilization (All users)"
            du -sh /root/*
        else
            echo "Home space utilisation ($USER)"
            du -sh "$HOME"
        fi
        exit
    fi
else
    echo "Invalid entry." >&2
    exit 1
fi