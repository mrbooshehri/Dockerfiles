#!/bin/bash

SERVER_ADDRESS=178.22.126.76
USERNAME=m.booshehri
PASSWORD=m.booshehri123
#PORT=your_custom_port

FINGERPRINT=$(openssl s_client -connect $SERVER_ADDRESS:${PORT:-4090} < /dev/null 2>/dev/null | openssl x509 -fingerprint -md5 -noout -in /dev/stdin  | cut -d= -f2)

(
#server
sleep 1
echo "$SERVER_ADDRESS"

#autodetect
sleep 1
echo "no"

#fingerprint ..
sleep 1
echo "$FINGERPRINT"

#username
sleep 1
echo "$USERNAME"

#password
sleep 1
echo "$PASSWORD"

sleep 1) | dpkg -i /tmp/kerio.deb
