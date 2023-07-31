#!/bin/sh

python3 /usr/share/nginx/html/generate_reportlist.py
/usr/share/nginx/html/gen_password.sh
nginx -g "daemon off;"
