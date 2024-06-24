#!/bin/bash

if grep -q "Chrom" /etc/lsb-release ; then
    DOWNLOADS_DIR="/home/chronos/user/Downloads"
else
    DOWNLOADS_DIR="$HOME/Downloads"
fi

RECOVERY_KEY_URL="raw.githubusercontent.com/?/?/?/"
RECOVERY_KEY_FILE="serial scrambler"

mkdir -p "$DOWNLOADS_DIR" echo "checking if downloads directory exists"


echo "Do you with to download the serial number scrambler? (ssr) (y/n)" -n 1 -r
echo    # Move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Aborting the process."
    exit 1
fi

echo "Thanks for testing out the ssr, Downloading now 
echo "Downloading the ssr file..."
cd "$DOWNLOADS_DIR" || exit 1
curl -L -o "$RECOVERY_KEY_FILE" "$RECOVERY_KEY_URL"


