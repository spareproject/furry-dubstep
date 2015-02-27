#!/bin/bash
##########################################################################################################################################################################################################################################
function cgi {
if [[ -z $HTTP_COOKIE ]];then COOKIEZ="UNSET";
elif [[ ! -z $HTTP_COOKIE ]];then COOKIEZ="SET";fi
echo -e "secure \r
Set-Cookie: test0=testing; test1=testing; Version=1 \r
Content-type:text/html\n\n
"
}
function html {
echo "
<!DOCTYPE html>
<html>
<head>
<meta http-equiv='Refresh' content='57;url='bash.cgi'/>
<meta charset='utf-8'/>
<link rel='stylesheet' type='text/css' href='/default.css'>
<title>spareProject...</title>
</head>
<body>
"
}
function header {
echo "
<div id='panel' class='top'>
<a class='menu left' href='/cgi-bin/index.cgi'><h3><b>[spareProject.localdomain]</b></h3></a>
<a class='menu left' href='/cgi-bin/login.cgi'><h3><b>[login]<b></h3></a>
<a class='menu left' href='/cgi-bin/debug.cgi'><h3><b>[debug]</b></h3></a>
<a class='menu right' href=#><h3><b>[ `date` ]</b></h3></a>
</div>
<div id='spacer'>a</div>
"
}
function footer {
echo "
<div id='spacer'>a</div>
<div id='panel' class='bottom'>Footer</div>
</body>
</html>
"
}
##########################################################################################################################################################################################################################################
declare -A POST
declare -A GET
function input {
  read -r POST_
  if [ ! -z ${POST_} ]
    then
      echo "${REMOTE_ADDR}:${POST_}<br>" >> /home/nginx/webpanel/cgi-bin/logs/post.log
      POST_="${POST_}&";KEY="";CACHE=""
      for i in `echo  ${POST_} | grep -o .`; do
        if [[ "${i}" == "=" ]]; then KEY=${CACHE};CACHE=""
        elif [[ "$i" == "&" ]]; then POST[${KEY}]=${CACHE};CACHE=""
        else CACHE+=${i};fi
      done
  fi
  if [ ! -z $QUERY_STRING ]
    then
      echo "${REMOTE_ADDR}:${QUERY_STRING}<br>" >> /home/nginx/webpanel/cgi-bin/logs/get.log
      GET_="${QUERY_STRING}&";KEY="";CACHE=""
      for i in `echo  ${GET_} | grep -o .`; do
        if [[ "${i}" == "=" ]];then KEY=${CACHE};CACHE=""
        elif [[ "$i" == "&" ]];then GET[${KEY}]=${CACHE};CACHE=""
        else CACHE+=${i};fi
      done
  fi
  if [[ "${POST[clear]}" == "clear" ]]; then echo "" > /home/nginx/webpanel/cgi-bin/logs/get.log; echo "" > /home/nginx/webpanel/cgi-bin/logs/post.log; fi
}
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
function login { 
echo "
<fieldset class='login'>
<legend><h3><b>$FUNCNAME</b></h3></legend>
<form action='#' method='post'>
<table>
<tr>
<td><input type='text' name='username' value='username'></td><td><a href=/cgi-bin/index.cgi>index</a></td>
</tr>
<tr>
<td><input type='password' name='password' value='password'></td><td><input type='submit' name='login' value='login'></td>
</tr>
</table>
</form>
</fieldset>
"
}
###########################################################################################################################################################################################################################################

