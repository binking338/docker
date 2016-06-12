#!/bin/sh

#[ -z $RPC_SECRET ] && RPC_SECRET=$(date +%s | sha256sum | base64 | head -c 16 ; echo)
#echo "--> rpc_secret: $RPC_SECRET"

[ ! -r /etc/aria2/aria2.conf ] && mv /aria2.conf /etc/aria2/aria2.conf
aria2c --conf-path=/etc/aria2/aria2.conf