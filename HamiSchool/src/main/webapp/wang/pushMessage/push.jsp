<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'push.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">   
	<link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }//wang/css/admin.css">
	<script src="${pageContext.request.contextPath }/wang/script/jquery-1.11.2.js"></script>
	<script src="${pageContext.request.contextPath }/wang/script/pintuer.js"></script>
	<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath }/My97DatePicker/WdatePicker.js"></script>
  </head>
  
  <body>
<div class="panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 推送信息</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="${pageContext.request.contextPath }/admin/admin_addMes"> 
  
  	 <div class="form-group">
        <div class="label">
          <label for="sitename">管理员：</label>
        </div>
        <div class="field">
           <input type="text" readOnly="true"  class="input w50" name="pushMessage.adminName"  value="${AdminInfo.adminName }"/> 
          
        </div>
      </div> 
      
      <div class="form-group">
        <div class="label">
          <label for="sitename">消息内容：</label>
        </div>
        <div class="field">
          <textarea name="pushMessage.pushContext" class="input" style="height:250px; border:1px solid #ddd;"></textarea>
          <div class="tips"></div>
        </div>
      </div>
      
      <div class="form-group">
        
          <label for="sitename">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发送日期：&nbsp;&nbsp;</label>
          <input type='text' class="Wdate" onClick="WdatePicker()" readonly="readonly" name='pushMessage.pushDate'>
      
      </div>
      
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit"> 提交</button>   
        </div>
      </div>      
    </form>
  </div>
</div>
  </body>
</html>
