#!/bin/env bash
DIR="/mnt/git/furry-dubstep"
chown nginx:nginx ${DIR}
chown -R root:nginx   ${DIR}/config
chown -R root:root    ${DIR}/fcgiwrap.sock
chown -R nginx:nginx  ${DIR}/ftp
chown -R cgi:cgi      ${DIR}/ftp/cgi-bin
chown -R cgi:cgi      ${DIR}/ftp/ftp
chown -R root:nginx  ${DIR}/keys
chown -R nginx:nginx  ${DIR}/logs
chown -R root:root    ${DIR}/old
chown -R root:root    ${DIR}/perms-usable.sh
chown -R root:root    ${DIR}/perms-upload.sh
chown -R admin:wheel  ${DIR}/README.md
chown -R nginx:nginx  ${DIR}/template
chown -R cgi:cgi      ${DIR}/template/cgi-bin
chown -R nginx:nginx  ${DIR}/webpanel
chown -R cgi:cgi      ${DIR}/webpanel/cgi-bin
chown -R cgi:cgi      ${DIR}/webpanel/database
chown -R cgi:cgi      ${DIR}/webpanel/gnupg
chown root:root       ${DIR}/webserver.start
chown root:root       ${DIR}/webserver.stop
chmod 750             ${DIR}/config
chmod 640             ${DIR}/config/*
chmod 750 -R          ${DIR}/ftp
chmod 750             ${DIR}/keys
chmod 640             ${DIR}/keys/*
chmod 750             ${DIR}/logs
chmod 640             ${DIR}/logs/*
chmod 750 -R          ${DIR}/old
chmod 750             ${DIR}/perms-usable.sh
chmod 750             ${DIR}/perms-upload.sh
chmod 640             ${DIR}/README.md
chmod 750 -R          ${DIR}/template
chmod 750 -R          ${DIR}/webpanel
chmod 750             ${DIR}/webserver.start
chmod 750             ${DIR}/webserver.stop
