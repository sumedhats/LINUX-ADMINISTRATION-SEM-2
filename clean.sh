#!/bin/bash

echo "Listing all .tmp files in /tmp:"
ls /tmp/*.tmp 2>/dev/null     

echo "Deleting .tmp files..."
rm -f /tmp/*.tmp               

echo "After cleanup:"
ls /tmp/*.tmp 2>/dev/null      

