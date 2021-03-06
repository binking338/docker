#!/bin/sh
[ -z $PASSWORD ] && PASSWORD=$(date +%s | sha256sum | base64 | head -c 16 ; echo)
echo "--> server_addr: $SERVER_ADDR"
echo "--> server_port: $SERVER_PORT"
echo "--> password: $PASSWORD"
echo "--> method: $METHOD"
echo "--> timeout: $TIMEOUT"
#------------------------------------------------------------------------------
# Configure the ssserver:
#------------------------------------------------------------------------------
env ssserver -s 0.0.0.0 -p $SERVER_PORT -m ${METHOD:-'aes-256-cfb'} -k $PASSWORD -t $TIMEOUT