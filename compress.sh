#!/bin/bash

ARCHIVE_NAME="log_backup_$(date +%Y%m%d).tar.gz"
sudo tar -czf $ARCHIVE_NAME /var/log  # Create compressed archive
echo "Archive created: $ARCHIVE_NAME"
ls -lh $ARCHIVE_NAME                 # List the archive file

