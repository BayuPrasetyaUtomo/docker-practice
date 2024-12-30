#!/bin/sh

HOST_TIMESTAMP=$(date +%F %H-%M-%S)
TIMESTAMP=$(TZ=Asia/Tokyo date +%Y-%m-%d_%H-%M-%S) # Tokyo time: Mon, Dec 30, 2024 12:28:18 PM

echo "${GREETING} ${NAME}"
echo "Local time: $HOST_TIMESTAMP"
echo "Tokyo time: $TIMESTAMP"