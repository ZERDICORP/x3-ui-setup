#!/bin/bash

apt update && apt upgrade -y

bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh)
bash <(curl -Ls https://raw.githubusercontent.com/ZERDICORP/x3-ui-setup/main/x3-ui-autossl.sh)