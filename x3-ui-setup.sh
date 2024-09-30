#!/bin/bash

apt update && apt upgrade -y

port=$((RANDOM % 20001 + 40000))
rnd_curl=$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 25 | head -n 1)

echo "Port: $port"
echo "Random URL: $rnd_curl"

bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
bash <(curl -Ls https://raw.githubusercontent.com/ZERDICORP/x3-ui-setup/refs/heads/main/x3-ui-autossl.sh?token=GHSAT0AAAAAACW4LBNB5HHIB3IMQWUSMJJ6ZX2HZDQ)

server_ip=$(curl -4 -s ifconfig.me)
echo "https://$server_ip:$port/$rnd_curl"