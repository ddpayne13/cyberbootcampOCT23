#!/bin/bash
# Create a script that you think you would use in a daily job routine No right or Wrong anwsers here
# You could ping all the devices in your network?
# Run a script to reset your ip address?
# Create a script that does some math?

network="192.168.1"  # Replace this with your network prefix

for ((i=1; i<=254; i++)); do
    ip="$network.$i"
    ping -c 1 -W 1 "$ip" &> /dev/null
    if [ $? -eq 0 ]; then
        echo "Device with IP $ip is reachable"
    fi
done