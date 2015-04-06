#!/bin/bash
##########################################################################################################################################################################################################################################
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
function otp { 
echo "
<fieldset class='otp'>
<legend><h3><b>$FUNCNAME</b></h3></legend>
<form action='#' method='post'>
<table>
<tr>
<td><input type='text' name='otp' value='otp'></td><td><input type='submit' name='otp' value='submit'></td><td><a href=/cgi-bin/index.cgi>index</a></td>
</tr>
</table>
</form>
</fieldset>
"
}
###########################################################################################################################################################################################################################################

