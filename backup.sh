
BACKUP_DIR="/tmp/backup"
ARCHIVE_NAME="backup-$(date +%Y-%m-%d).tar.gz"
mkdir -p "$BACKUP_DIR"
find . -maxdepth 1 -name "*.c" -o -name "*.py" -exec cp {} "$BACKUP_DIR" \;
cd /tmp
tar -czvf "$ARCHIVE_NAME" "$BACKUP_DIR"
udisksctl mount -b /dev/sdb1
mv "$ARCHIVE_NAME" /run/media/$USER/PENDRIVE_NAME/  # Replace PENDRIVE_NAME with the actual mount point name
udisksctl unmount -b /dev/sdb1
rm -rf "$BACKUP_DIR"
echo "Backup completed successfully!"
