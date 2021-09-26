#!/bin/bash

HFISH_DIR="/opt/hfish/client"
cd $HFISH_DIR

CLIENT_URL=""
curl -k "$CLIENT_URL" -o client
chmod a+x client

nohup ./client >/dev/null 2>&1 &
ll 2>&1 &
