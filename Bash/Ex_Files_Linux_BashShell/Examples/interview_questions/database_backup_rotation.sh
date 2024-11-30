#!/bin/bash

# Database Backup Rotation Script: Write a script to rotate 
# database backups to prevent them from accumulating indefinitely.

backup_dir="/path/to/backups"
max_backups=5
backups=$(ls -t "$backup_dir" | wc -l)
if [ "$backups" -gt "$max_backups" ]; then
    oldest_backup=$(ls -t "$backup_dir" | tail -n 1)
    rm "$backup_dir/$oldest_backup"
fi