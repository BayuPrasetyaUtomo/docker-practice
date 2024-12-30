#!/bin/sh

HOST_TIMESTAMP=$(date +%F_%H-%M-%S)
SINGAPORE_TIMESTAMP=$(env TZ=Asia/Singapore date +%F_%H-%M-%S)

echo "$GREETING $NAME, currently it's $HOST_TIMESTAMP in the host timezone and $SINGAPORE_TIMESTAMP in Asia/Singapore timezone when this script is running"