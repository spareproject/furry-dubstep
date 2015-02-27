#!/bin/bash
#`sudo iptables -A KNOCK_ONE -p udp -d 127.0.0.1 --dport 14523 -s $REMOTE_ADDR -m recent --set --name KNOCK_TWO `
source wrapper.sh
##########################################################################################################################################################################################################################################
cgi
html
input
header

echo -e "
<fieldset><legend><h1>i can has cookies?</h1></legend>
COOKIE: ${HTTP_COOKIE[@]} <br>
Expires: Fri, 28 Feb 2015 24:00:00 GMT carriage return <br>
echo "testing: ${COOKIEZ}"
"
if [[ ${COOKIEZ} == SET ]];then echo set
elif [[ ${COOKIEZ} == UNSET ]];then echo unset;fi
echo "
</fieldset>
"
echo "
<fieldset>
<legend><h1>index.cgi</h1></legend>
$HTTP_COOKIE
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
Some text to test overflow<br>
</fieldset>
"

footer
###########################################################################################################################################################################################################################################
