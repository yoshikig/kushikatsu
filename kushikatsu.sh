#!/bin/sh

PROXY_HOST=$1
TARGET_HOST=$2
TARGET_PORT=$3

if ping -c 1 -W 1 $TARGET_HOST > /dev/null 2>&1; then
  exec nc $TARGET_HOST $TARGET_PORT
else
  exec ssh -W $TARGET_HOST:$TARGET_PORT $PROXY_HOST
fi
