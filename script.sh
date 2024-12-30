#!/bin/bash

# script.sh
HOST_TIMESTAMP=$(date)
TIMESTAMP=$(TZ=Asia/Tokyo date +%Y-%m-%d_%H-%M-%S)

FILENAME="/output/README.md"

# Ensure the output directory exists
mkdir -p /output

# Print the greeting and names
echo "${GREETING} ${NAME}"

# Set the timestamps
HOST_TIMESTAMP=$(date)
TIMESTAMP=$(TZ=Asia/Tokyo date +%Y-%m-%d_%H-%M-%S)

# Print the timestamps
echo "Local time: $HOST_TIMESTAMP"
echo "Tokyo time: $TIMESTAMP"

# Write the timestamps to README.md
echo "HOST_TIMESTAMP=$HOST_TIMESTAMP // \`$HOST_TIMESTAMP\`" >> $FILENAME
echo "TIMESTAMP=$TIMESTAMP // \`$TIMESTAMP\`" >> $FILENAME

# Keep only the last 6 lines in README.md
tail -n 6 $FILENAME > $FILENAME.tmp && mv $FILENAME.tmp $FILENAME