
if [ -z "$1" ]; then
    echo "Usage: ./kill_process.sh <process_name>"
    exit 1
fi
pkill -9 "$1"
echo "Process '$1' has been forcefully terminated."

