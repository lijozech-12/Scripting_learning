#!/bin/bash

while true; do
    clear #clear the terminal

    echo "System Resource Monitoring"
    echo "---------------------------"

    # Display CPU usage
    echo "CPU Usage:"
    top -n 1 -b | grep "Cpu"

    # top -n 1 -b: This runs the top command in batch mode (-b) and limits it to a single iteration (-n 1). 
    # Batch mode is useful for scripting because it outputs the information in a format that can be easily parsed.

    # Display memory usage
    echo -e "\nMemory Usage:"
    free -h

    # Display disk space usage
    echo -e "\nDisk Space Usage:"
    df -h

    sleep 5 # Wait for 5 sec before the next update
done

    # The -e option enables the interpretation of backslash escapes. Here are some common backslash escapes you can use with echo -e:

    # \n: New line

    # \t: Horizontal tab

    # \\: Backslash

    # \a: Alert (bell)

    # \b: Backspace

    # \c: Suppress trailing newline