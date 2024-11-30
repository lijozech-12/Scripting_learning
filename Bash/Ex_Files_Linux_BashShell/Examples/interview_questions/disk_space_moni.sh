#!/bin/bash

# Disk Space Monitoring Script: Write a script to monitor disk 
# space usage and send alerts if thresholds are exceeded. 

threshold=90
disk_usage=$(df -h | grep "/dev/sda1" | awk '{print $5}' | tr -d '%')

# df -h: This command displays disk space usage in a human-readable format (e.g., in GB or MB).

# grep "/dev/sda1": This filters the output of df -h to show only the line that contains /dev/sda1, which is the device name for a specific disk partition.

# awk '{print $5}': This extracts the fifth field from the filtered line. In the output of df -h, the fifth field typically represents the percentage of disk space used.

# tr -d '%': This removes the percentage sign from the extracted value, leaving only the numeric part.

if [ "$disk_usage" -gt "$threshold" ];
then
    echo "Disk space usage exceeded $threshold%"
    # send alert here
fi