
if [ -z "$1" ]; then
    echo "Usage: ./archive.sh <directory>"
    exit 1
fi
DIR=$1
ARCHIVE_NAME="${DIR}_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf "$ARCHIVE_NAME" "$DIR"
echo "Archive created: $ARCHIVE_NAME"

