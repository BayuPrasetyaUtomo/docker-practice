#!/bin/sh

# script.sh
HOST_TIMESTAMP=$(date)
TIMESTAMP=$(TZ=Asia/Tokyo date +%Y-%m-%d_%H-%M-%S)

FILENAME="README.md"

# Write the timestamps to README.md
echo "HOST_TIMESTAMP=$(date) // \`$HOST_TIMESTAMP\`" >> $FILENAME
echo "TIMESTAMP=$(TZ=Asia/Tokyo date +%Y-%m-%d_%H-%M-%S) // \`$TIMESTAMP\`" >> $FILENAME
tail -n 6 $FILENAME > $FILENAME.tmp && mv $FILENAME.tmp $FILENAME