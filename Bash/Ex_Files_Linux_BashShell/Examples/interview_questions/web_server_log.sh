#!/bin/bash

# Web Server Log Analysis Script: Write a script to analyze web 
# server logs and generate reports on traffic, errors, etc.

access_log="/var/log/apache/access.log"
error_log="/var/log/apache/error.log"

# Analyze access log
echo "Top 10 IP addresses:"
awk '{print $1}' "$access_log" | sort | uniq -c | sort -nr | head -n 10

# Analyse error log
echo "Errors by type:"
awk '{print $9}' "$error_log" | sort | uniq -c | sort -nr
