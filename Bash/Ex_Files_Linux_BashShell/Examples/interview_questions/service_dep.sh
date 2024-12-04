#!/bin/bash
# Service Dependency Checking Script: Write a script to check 
# for dependencies before starting a service.

if ! command -v "dependency_command" &> /dev/null; then
    echo "Dependency not found, exiting"
    exit 1
fi


if ! command -v "dependency_command" &> /dev/null; then:

# command -v "dependency_command": This checks if the command dependency_command is available in the 
# system's PATH.

# &> /dev/null: Redirects both standard output and standard error to /dev/null, effectively silencing any 
# output.

# if ! ...; then: The ! negates the condition. If the command is not found, the condition becomes true, 
# and the script will execute the commands inside the then block.