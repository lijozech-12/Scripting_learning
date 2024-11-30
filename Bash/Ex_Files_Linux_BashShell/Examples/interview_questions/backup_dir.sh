#!/bin/bash

# Shell script that you can use to backup a directory using the tar command: 

source_dir="/path/to/source/dir"

backup_dir="/path/to/backup/dir"

backup_filename="backup_$(data +%Y%m%d%H%M%S).tar.gz"

# The format string following the + determines how the date and time will be formatted.
# %Y: Year with century (e.g., 2024)

# %m: Month as a two-digit number (e.g., 11 for November)

# %d: Day of the month as a two-digit number (e.g., 29)

# %H: Hour in 24-hour format (e.g., 20 for 8 PM)

# %M: Minute as a two-digit number (e.g., 20)

# %S: Second as a two-digit number (e.g., 00)



#creating dir if it's doesn't exist
mkdir -p "$backup_dir"

#create the backup using tar
tar -czvf "$backup_dir/$backup_filename" "$source_dir"
# -c: Create a new archive.

# -z: Compress the archive using gzip.

# -v: Verbose mode, which means it will list the files being processed.

# -f: Specify the name of the archive file.

if [ $? -eq 0 ]; then
    echo "Backup successful: $backup_filename created in $backup_dir"
else 
    echo "backup failed"
fi 



###########################################
# another method

backup_dir="/path/to/backup" 
source_dir="/path/to/source" 
timestamp=$(date +"%Y%m%d%H%M%S") 
tar -czf "$backup_dir/backup_$timestamp.tar.gz" "$source_dir" 