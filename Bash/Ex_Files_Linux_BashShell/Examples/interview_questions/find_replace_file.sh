#!/bin/bash

# Shell script to perform a find and replace operation in multiple files using tools like sed (stream 
# editor) or grep (with perl regex). Below is an example using sed to perform a find and replace 
# operation: 

# Define Variables

SEARCH_STRING="old_string"
REPLACE_STRING="new_string"
FILES_DIR="/path/to/files/directory"

#perform find and replace using sed
find "$FILES_DIR" -type f exec sed -i "s/$SEARCH_STRING/$REPLACE_STRING/g" {} +

echo "Find and replace complete!"


# find "$FILES_DIR": This part of the command starts by searching within the directory specified by 
# the $FILES_DIR variable.

# -type f: This option tells find to look for files only (not directories).

# -exec sed -i "s/$SEARCH_STRING/$REPLACE_STRING/g" {} +: 
# This part uses the -exec option to execute a command on each file found. The command being executed 
# is sed -i "s/$SEARCH_STRING/$REPLACE_STRING/g", which performs an in-place substitution of $SEARCH_STRING 
# with $REPLACE_STRING in each file. The {} is a placeholder for the current file being processed, and the + 
# at the end allows find to pass multiple files to sed at once, which is more efficient than processing each 
# file individually.

# /g option will tell sed command to replace all the occurance of the particular string.