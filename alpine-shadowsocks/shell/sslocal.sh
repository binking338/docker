#!/bin/sh

echo "--> local_addr: $LOCAL_ADDR"
echo "--> local_port: $LOCAL_PORT"
#------------------------------------------------------------------------------
# Configure the sslocal:
#------------------------------------------------------------------------------
env sslocal -s $SERVER_ADDR -p $SERVER_PORT -k $PASSWORD -b $LOCAL_ADDR -l $LOCAL_PORT -m ${METHOD:-'aes-256-cfb'} -t $TIMEOUT