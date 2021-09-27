#!/bin/bash

HFISH_DIR="/opt/hfish/client"
cd $HFISH_DIR

echo "download client"
curl -k "$CLIENT_URL" -o client.tgz
echo "download client ok!"

old_id=""
if test -f "config.ini"
then
  old_id=`grep "client_id" config.ini`
  echo "old client_id: $old_id"
fi

tar -xvzf client.tgz
echo "decompress client ok!"
rm -f client.tgz

if [ -n "$old_id" ]
then
  echo $old_id >> "config.ini"
fi

chmod a+x client

echo "Install client finish!"

./client
