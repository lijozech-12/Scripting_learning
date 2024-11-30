#!/bin/bash

# Log Analysis and Reporting Script: Develop a script to 
# analyze logs, extract relevant data, and generate reports. 

log_file="/path/to/logfile.log"
error_count=$(grep -c "ERROR" "$log_file")
warning_count=$(grep -c "WARNING" "$log_file")
echo "Error count: $error_count"
echo "Warning count: $warning_count"