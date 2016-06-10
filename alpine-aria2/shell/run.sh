echo "--> generating token"
tk=$(date +%s | sha256sum | base64 | head -c 16 ; echo) : ${TOKEN:=$tk}
echo "--> token: $TOKEN"

aria2c --dir=/downloads --rpc-secret=$TOKEN --enable-rpc=true --rpc-listen-all=true --rpc-allow-origin-all=true

echo