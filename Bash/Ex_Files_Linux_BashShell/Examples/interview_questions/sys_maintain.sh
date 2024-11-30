#!/bin/bash

# System Maintenance Script: Create a script to perform 
# routine system maintenance tasks like cleaning up temporary files, 
# updating packages, etc. 

# Clean up temporary files
rm -rf /tmp/*
# Update packages
apt-get update && apt-get upgrade -y