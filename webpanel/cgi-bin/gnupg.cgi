#!/bin/bash
#`sudo iptables -A KNOCK_ONE -p udp -d 127.0.0.1 --dport 14523 -s $REMOTE_ADDR -m recent --set --name KNOCK_TWO `
source ./functions/wrapper.sh
##########################################################################################################################################################################################################################################
cgi
html
input
header
##########################################################################################################################################################################################################################################
echo "<fieldset><legend><h1>gnupg</h1></legend>"
echo -e "public keys\n<pre>"
gpg --homedir ../gnupg --list-public-keys
echo -e "private keys\n"
gpg --homedir ../gnupg --list-secret-keys
echo "
</pre></fieldset>
"

##########################################################################################################################################################################################################################################
footer
###########################################################################################################################################################################################################################################