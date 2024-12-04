#!/bin/bash
process_name="my_process"
max_memory=1000000 # 1MB
pid=$(pgrep "$process_name")
if [ -n "$pid" ]; then
    mem_usage=$(ps -p "$pid" -o rss=)
    # ps: The command to display information about active processes.

    # -p "$pid": Specifies the process ID ($pid) of the process you want to inspect.

    # -o rss=: Specifies the output format to display only the RSS value, without a header.
    
    if [ "$mem_usage" -gt "$max_memory" ]; then
        kill "$pid"
        echo "Process $process_name killed due to high memory usage"
    fi
fi