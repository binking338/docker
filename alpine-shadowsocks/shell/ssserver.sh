#!/bin/sh

#------------------------------------------------------------------------------
# Configure the ssserver:
#------------------------------------------------------------------------------
env ssserver -s 0.0.0.0 -p $SERVER_PORT -m ${METHOD:-'aes-256-cfb'} -k $PASSWORD -t $TIMEOUT