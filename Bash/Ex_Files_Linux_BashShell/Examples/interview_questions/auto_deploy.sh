#!/bin/bash

# Automated Deployment Script: Develop a script to automate the 
# deployment of applications or configurations to multiple servers. 

servers=("server1" "server2" "server3")
for server in "${server[@]}"; do 
    scp "app.tar.gz" "user@$server:/path/to/destination/"

    ssh "user@$server" "tar -xzvf /path/to/destination/app.tar.gz -C /path/to/app"
    #additional deployment steps here
Done