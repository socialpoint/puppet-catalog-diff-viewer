#!/bin/bash

USER_NAME=admin
PASSWD=$(openssl rand -base64 16)
CRYPTPASS=`openssl passwd -5 ${PASSWD}`

echo "${USER_NAME}:${CRYPTPASS}" >> /etc/nginx/.htpasswd
echo "login with user: ${USER_NAME}"
echo "login with pwd: ${PASSWD}"