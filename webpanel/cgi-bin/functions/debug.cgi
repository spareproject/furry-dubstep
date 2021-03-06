#!/bin/bash
##########################################################################################################################################################################################################################################
function output {
echo "<fieldset><legend><h3><b>${FUNCNAME}</b></h3></legend>"
if [[ ! ${#POST[@]} -eq 0 ]];then echo -n "post: ";for i in ${!POST[@]};do echo "[${i}:${POST[${i}]}]";done;fi
if [[ ! ${#GET[@]} -eq 0 ]];then echo -n "get: ";for i in ${!GET[@]};do echo "[${i}:${GET[${i}]}]";done;fi
echo "</fieldset>"
}
##########################################################################################################################################################################################################################################
function log_fieldset {
echo "<fieldset><legend><h3><b>$FUNCNAME</b></h3></legend>"
echo "<fieldset><legend><h4>get.log</h4></legend>"
while read line; do echo -e "${line}\n";done < /home/nginx/webpanel/cgi-bin/logs/get.log
echo "</fieldset>"
echo "<fieldset><legend><h4>post.log</h4></legend>"
while read line; do echo -e "${line}\n";done < /home/nginx/webpanel/cgi-bin/logs/post.log
echo "</fieldset>"
echo "</fieldset>"
}
##########################################################################################################################################################################################################################################
function fcgiparams_fieldset {
echo "
<fieldset><legend><h3><b>$FUNCNAME</b></h3></legend>
<table>
<tr><td>QUERY_STRING</td><td>$QUERY_STRING</td></tr>
<tr><td>REQUEST_METHOD</td><td>$REQUEST_METHOD</td></tr>
<tr><td>CONTENT_TYPE</td><td>$CONTENT_TYPE</td></tr>
<tr><td>CONTENT_LENGTH</td><td>$CONTENT_LENGTH</td></tr>
<tr><td>SCRIPT_NAME</td><td>$SCRIPT_NAME</td></tr>
<tr><td>REQUEST_URI</td><td>$REQUEST_URI</td></tr>
<tr><td>DOCUMENT_URI</td><td>$DOCUMENT_URI</td></tr>
<tr><td>DOCUMENT_ROOT</td><td>$DOCUMENT_ROOT</td></tr>
<tr><td>SERVER_PROTOCOL</td><td>$SERVER_PROTOCOL</td></tr>
<tr><td>HTTPS</td><td>$HTTPS</td></tr>
<tr><td>GATEWAY_INTERFACE</td><td>$GATEWAY_INTERFACE</td></tr>
<tr><td>SERVER_SOFTWARE</td><td>$SERVER_SOFTWARE</td></tr>
<tr><td>REMOTE_ADDR</td><td>$REMOTE_ADDR</td></tr>
<tr><td>REMOTE_PORT</td><td>$REMOTE_PORT</td></tr>
<tr><td>SERVER_ADDR</td><td>$SERVER_ADDR</td></tr>
<tr><td>SERVER_PORT</td><td>$SERVER_PORT</td></tr>
<tr><td>SERVER_NAME</td><td>$SERVER_NAME</td></tr>
<tr><td>REDIRECT_STATUS</td><td>$REDIRECT_STATUS</td></tr>
</table>
</fieldset>
"
}
##########################################################################################################################################################################################################################################
function input_test {
echo "
<fieldset><legend><h3><b>$FUNCNAME</b></h3></legend>
<table>
<tr><form action='/cgi-bin/debug.cgi' method='get'>
<td>get</td>
<td><input type='text' name='get'></td>
<td><input type='submit'></td>
</form></tr>
<tr>
<form action='/cgi-bin/debug.cgi' method='post'>
<td>post</td>
<td><input type='text' name='post'></td>
<td><input type='submit'></td>
</form></tr>
<tr>
<form action='/cgi-bin/debug.cgi' method='post'>
<td>logs</td>
<td></td>
<td><input type='submit' name='clear' value='clear'></td>
</form>
</tr>
</table>
</fieldset>
"
}
##########################################################################################################################################################################################################################################

