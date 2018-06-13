<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>demo</title>

<script src="${pageContext.request.contextPath }/js/jquery-2.1.4.min.js"></script>

<script language="javascript">
/* 	function get_mobile_code(){
        $.post('sms.jsp', {mobile:jQuery.trim($('#mobile').val())}, function(msg) {
			//alert(222);
			alert(${codephone });
            alert(jQuery.trim(unescape(msg)));
			if(msg==2){
				RemainTime();
			}
        });
	}; */
	var countdown=60; 
	function settime(obj) { 
    if (countdown == 0) { 
        obj.removeAttribute("disabled");    
        obj.value="免费获取验证码"; 
        countdown = 60; 
        return;
    } else { 
        obj.setAttribute("disabled", true); 
        obj.value="重新发送(" + countdown + ")"; 
        countdown--; 
    } 
setTimeout(function() { 
    settime(obj) }
    ,1000) 
}
</script>
</head>

<body>
<form action="reg.jsp" method="post" name="formUser" onsubmit="return register();">
	<table width="100%"  border="0" align="left" cellpadding="5" cellspacing="3">
		<tr>
		<td>手机号</td>
		<td>
		<input id="mobile" name="mobile" type="text" size="25" class="inputBg" /><span style="color:#FF0000"> *</span> 
        <input id="zphone" type="button" value=" 发送验证码 " onclick="settime(this);" />
        </td>
        </tr>
		<tr>
			<td>验证码 </td>
			<td><input type="text" size="8" name="mobile_code" class="inputBg" />
			
			</td>
		
		</tr>
		
	</table>
</form>
</body>
</html>