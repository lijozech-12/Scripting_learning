#!/bin/bash

# Service Restart Script: Create a script to restart a service if it 
# becomes unresponsive or crashes. 

service_name="myservice"
# systemctl: A command used to examine and control the systemd system and service manager.

# is-active: A subcommand of systemctl that checks if the specified service is active (i.e., running).

# --quiet: An option that suppresses the output of the systemctl command. It makes the command run silently, only returning an exit status.

# "$service_name": The variable containing the name of the service you want to check.

# The if statement checks the exit status of the systemctl is-active --quiet "$service_name" command:

# If the service is active, the command returns an exit status of 0 (true), and the then block is executed.

# If the service is not active, the command returns a non-zero exit status (false), and the else block (if present) is executed.
if systemctl is-active --quiet "$service_name";
then
    systemctl restart "$service_name"
    echo "Service $service_name restarted"
else
    echo "Service $service_name is not running"
fi
