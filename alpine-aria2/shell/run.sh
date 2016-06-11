echo "--> generating token"
tk=$(date +%s | sha256sum | base64 | head -c 16 ; echo) : ${TOKEN:=$tk}
echo "--> token: $TOKEN"
touch /etc/arai2/aria2.session
aria2c --conf-path=/etc/aria2/aria2.conf