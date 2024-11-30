#!/bin/bash

# Automating user management tasks using a shell script can save time and ensure consistency 
# when dealing with user accounts on a Unix-like system. Below is an example of a shell script that 
# demonstrates how to automate user creation, modification, and deletion: 

# Define variables

ACTION="$1" # First argument: create, modify, or delete
USERNAME="$2" # second argument: username

#Functions to create a new user
create_user() {
    if [ -z "$USERNAME" ]; then
        echo "Usage: $0 create <username>" #o/p : Usage: ./script_name create <username>
        exit 1
    fi

    useradd -m -s /bin/bash "$USERNAME" #-m create home directory for user -s set default shell to /bin/bash
    echo "User $USERNAME created."
}


# Function to modify an existing user
modify_user() {
    if [ -z "$USERNAME" ]; then 
        echo "Usage: $0 modify <username>"
        exit 1
    fi

    usermod -s /bin/bash "$USERNAME"
    echo "User $USERNAME modified."
}


# Function to delete an existing user
delete_user() {
    if [ -z $USERNAME ]; then
        echo "Usage: $0 delete <username>"
        exit 1
    fi

    userdel -r "$USERNAME" # sudo userdel -f lijo : forcefully delete the username even if the mailpool don't found

    # userdel: lijo mail spool (/var/mail/lijo) not found
    echo "User $USERNAME deleted."
}


# main script

case "$ACTION" in
    create)
        create_user
        ;;
    modify)
        modify_user
        ;;
    delete)
        delete_user
        ;;
    *)
        echo "Usage: $0 {create|modify|delete} <username>"
        exit 1
        ;;
esac 
