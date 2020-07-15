#!/bin/bash
# Program name: pingall.sh
date
cat ~/ip-address |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo "node $output is alive" 
    else
    echo "node $output is down"
    fi
done
