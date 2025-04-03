#!/bin/bash

# Step 1: List all log files in /var/log
echo "Log files in /var/log:"
find /var/log -type f -name "*.log"

# Step 2: Archive the logs
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
tar -czvf "/var/log/log_backup_$TIMESTAMP.tar.gz" /var/log/*.log

# Step 3: Truncate (clear) the log files
find /var/log -type f -name "*.log" -exec truncate -s 0 {} \;

# Step 4: Confirm the operation
echo "Logs archived and cleared."

 
