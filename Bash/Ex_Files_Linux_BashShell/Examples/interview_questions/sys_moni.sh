#!/bin/bash

# System Monitoring Script: Develop a script to monitor system 
# resource usage and send alerts if thresholds are exceeded. 

cpu_threshold=90
mem_threshold=90

# top -bn1: Runs the top command in batch mode (-b) for one iteration (-n1).

# grep "Cpu(s)": Filters the output to find the line containing "Cpu(s)".

# sed "s/.*, *\([0-9.]*\)%* id.*/\1/": Uses sed to extract the idle CPU percentage.

# awk '{print 100 - $1}': Uses awk to subtract the idle percentage from 100, giving you the CPU usage.

cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')

# top -bn1:

# -b: Runs top in batch mode, making it suitable for non-interactive scripts.
# -n1: Limits the output to one iteration.
# This command outputs detailed information about CPU and memory usage.
# grep "Cpu(s)":

# Filters lines containing the string Cpu(s), which typically describes CPU usage in top output.
# s: Indicates the substitution operation.
# /,.* *\([0-9.]*\)%* id.*/\1/:
# .*,: Matches any text (.*) followed by a comma (,) and possibly spaces (*).
# \([0-9.]*\): Captures a sequence of numbers and dots ([0-9.]) and stores it in a group (\(...\)).
# %*: Matches zero or more % symbols.
# id.*: Matches a space followed by "id" and any additional characters (.*).
# \1: Refers to the first captured group, i.e., the sequence of numbers and dots from \([0-9.]*\).

# awk '{print 100 - $1}':

# Takes the idle percentage ($1) from sed output and subtracts it from 100 to calculate the CPU usage percentage.

mem_usage=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

# free:

# Displays memory usage statistics.
# grep Mem:

# Extracts the line containing memory usage information.
# awk '{print $3/$2 * 100.0}':

# $3: Represents the used memory.
# $2: Represents the total memory.
# $3/$2 * 100.0: Computes the percentage of memory in use.

if (( $(echo "$cpu_usage > $cpu_threshold" | bc -l) )) || (( $(echo "$mem_usage > $mem_threshold" | bc -l))); then
    echo "High CPU or memory usage detected!"
    # send alert here
fi