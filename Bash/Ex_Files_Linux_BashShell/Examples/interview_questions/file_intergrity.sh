#!/bin/bash

# File Integrity Checking Script: Develop a script to check the 
# integrity of files using checksums or cryptographic hashes.

file="/path/to/file"
checksum=$(md5sum "$file" | awk '{print $1}')
if [ "$checksum" == "expected_checksum" ]; then
    echo "File integrity verified"
else
    echo "File integrity compromised"
fi