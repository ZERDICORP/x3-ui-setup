#!/bin/bash

apt update && apt upgrade -y

bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
bash <(curl -Ls https://raw.githubusercontent.com/cyb3rm4gus/3x-ui-auto_add_ssl/refs/heads/main/3x-ui-autossl.sh)

x-ui restart
