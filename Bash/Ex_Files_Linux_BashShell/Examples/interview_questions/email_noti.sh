#!/bin/bash

# Email Notification Script: Develop a script to send email 
# notifications for various events or alerts. 

subject="Alert: High CPU Usage"
body="CPU usage exceeded 90%"
recipient="user@example.com"
echo "$body" | mail -s "$subject" "$recipient"

