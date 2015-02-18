#!/bin/env bash

# need to set uid/gid everytime it gets pulled...

chown -R nginx:nginx /home/nginx
chown -R nginx:nginx /home/nginx/webpanel/cgi-bin
chown -R nginx:nginx /home/nginx/webpanel/database
