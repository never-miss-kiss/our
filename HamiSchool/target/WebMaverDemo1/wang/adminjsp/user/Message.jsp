<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>消息中心</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">   
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
	<script src="${pageContext.request.contextPath }/script/jquery-1.11.2.js"></script>
	<script src="${pageContext.request.contextPath }/script/pintuer.js"></script> 
  </head>
<body>
<div class="panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 发送信息</strong></div>
  <div class="body-content">
	<form method="post" action="${pageContext.request.contextPath }/adminUser/adminUser_addMes">
		<div class="form-group desp">
   			<div class="label">
   				<label for="sitename"><span class="desname">管理员：</span></label>
   				<label for="sitename"><span class="field des">${AdminInfo.adminName }</span></label>
   			</div>
    	</div>
        <div class="form-group desp">
   			<div class="label">
   				<label for="sitename"><span class="desname">接收用户：</span></label>
   				<label for="sitename"><span class="field des">${users.nickname }</span></label>
   			</div>
    	</div>    
      	<div class="form-group desp">
 			<div class="label">
 				<label for="sitename"><span class="desname">消息内容：</span></label><br/>
 				<label for="sitename"><span class="field desname "><textarea name="cont" class="tesar" style="height:250px; border:1px solid #ddd;"></textarea></span></label>
 			</div>
      	</div>         
        <button class="button bg-main icon-check-square-o ret desname" type="submit"> 提交</button>   
	</form>
   </div>    
  </div>
  </body>
</html>
