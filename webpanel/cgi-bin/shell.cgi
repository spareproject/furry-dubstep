#!/bin/bash
#`sudo iptables -A KNOCK_ONE -p udp -d 127.0.0.1 --dport 14523 -s $REMOTE_ADDR -m recent --set --name KNOCK_TWO `
source ./functions/wrapper.sh
##########################################################################################################################################################################################################################################
cgi
html
input
header

echo "
<fieldset><legend>shell - everything that can go wrong</legend>
<form action='/cgi-bin/shell.cgi' method='post'>
<table><tr>
"
if [[ ${POST[shell]} ]];then
echo ${POST[shell]}
TEMP=`echo ${POST[shell]} | sed 's/+/ /g'`
eval ${TEMP}

fi
echo "
<td class='stretch'><input class='stretch' type="text" name="shell"></td>
<td><input type='submit'><td>
</tr></table>
</fieldset>
</form>


</div>
"

footer
###########################################################################################################################################################################################################################################
