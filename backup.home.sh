#!/bin/bash

# Step 1: Create a timestamped backup directory
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_DIR="/backups/home_backup_$TIMESTAMP"
mkdir -p "$BACKUP_DIR"

# Step 2: Copy /home to the backup directory
cp -r /home "$BACKUP_DIR"

# Step 3: Compress the backup
tar -czvf "$BACKUP_DIR.tar.gz" -C "/backups" "home_backup_$TIMESTAMP"

# Step 4: Verify the integrity of the backup
tar -tzf "$BACKUP_DIR.tar.gz" > /dev/null && echo "Backup successful!" || echo "Backup failed!"

