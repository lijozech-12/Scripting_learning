#!/bin/bash
# Service Status Monitoring Script: Develop a script to monitor 
# the status of critical services and take actions if they are down. 

services=("apache2" "mysql" "ssh")
for service in "${services[@]}"; do
    if systemctl is-active --quiet "$service";
    then
        echo "Service $service is running"
    else
        echo "Service $service is not running"
        # Restart service or send alert here
    fi
done