#!/bin/env bash

# need to set uid/gid everytime it gets pulled...
DIR="/mnt/git/furry-dubstep"

chown -R nginx:nginx  ${DIR}/config
chown -R root:root    ${DIR}/fcgiwrap.sock
chown -R nginx:nginx  ${DIR}/keys
chown -R nginx:nginx  ${DIR}/logs
chown -R root:root    ${DIR}/old
chown -R root:root    ${DIR}/perms.sh
chown -R admin:wheel  ${DIR}/README.md
chown -R nginx:nginx  ${DIR}/webpanel
chown -R cgi:cgi      ${DIR}/webpanel/cgi-bin
chown -R cgi:cgi      ${DIR}/webpanel/database
chown root:root       ${DIR}/webserver.start
chown root:root       ${DIR}/webserver.stop

chmod 750 /mnt/git/furry-dubstep/config
chmod 640 /mnt/git/furry-dubstep/config/*

chmod 750 /mnt/git/furry-dubstep/keys
chmod 640 /mnt/git/furry-dubstep/keys/*

chmod 750 /mnt/git/furry-dubstep/logs
chmod 640 /mnt/git/furry-dubstep/logs/*

chmod 750 -R /mnt/git/furry-dubstep/old

chmod 750 /mnt/git/furry-dubstep/perms.sh

chmod 640 /mnt/git/furry-dubstep/README.md

chmod -R 750 /mnt/git/furry-dubstep/webpanel

chmod 750 /mnt/git/furry-dubstep/webserver.start
chmod 750 /mnt/git/furry-dubstep/webserver.start
