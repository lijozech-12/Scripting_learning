#!/bin/bash

# Password Rotation Script: Develop a script to rotate 
# passwords for user accounts at regular intervals.

user="username"
new_password=$(openssl rand -base64 12)

# The echo command constructs the string john:new_secure_password.

# The pipe (|) passes this string to the chpasswd command.

# chpasswd updates the password for the user john to new_secure_password.

echo "$user:$new_password" | chpasswd