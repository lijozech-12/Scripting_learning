#!/bin/bash

# Backup Verification Script: Write a script to verify the 
# integrity of backup files by comparing checksums. 

backup_file="/path/to/backup.tar.gz"
expected_checksum="expected_checksum"
actual_checksum=$(md5sum "$backup_file" | awk '{print $1}')

if [ "$actual_checksum" == "$expected_checksum"]; then
    echo "Backup integrity verified"
else
    echo "Backup integriy compromised"
fi