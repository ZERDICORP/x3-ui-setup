#!/bin/bash

apt update && apt upgrade -y

port=$((RANDOM % 20001 + 40000))
rnd_curl=$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 25 | head -n 1)

echo "Port: $port"
echo "Random URL: $rnd_curl"

bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
bash <(curl -Ls https://raw.githubusercontent.com/zerdicorp/3x-ui-setup/main/3x-ui-autossl.sh)

server_ip=$(curl -4 -s ifconfig.me)
echo "https://$server_ip:$port/$rnd_curl"