<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
<script src="${pageContext.request.contextPath }/script/jquery-1.11.2.js"></script>
<script src="${pageContext.request.contextPath }/script/pintuer.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
<div class="panel">
  <div class="panel-head"><strong><span class="icon-key"></span> 修改个人信息</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="${pageContext.request.contextPath }/admin/admin_updateAdmin">
    <div class="form-group">
        <div class="label">
          <label for="sitename">管理员：</label>
        </div>
        <div class="field">
           <input type="text" readOnly="true"  class="input w50" name="admin.adminName"  value="${AdminInfo.adminName }"/> 
          
        </div>
      </div>  
        
      <div class="form-group">
        <div class="label">
          <label for="sitename">原始密码：</label>
        </div>
        <div class="field">
        	<input type='hidden' name='admin.adminId' value='${AdminInfo.adminId }'>
          <input type="hidden"  class="input w50" id="oldPass" name="oldPass" size="50" value="${AdminPwd }"/>
          <input type="password"  class="input w50" id="mpass" name="mpass" size="50" placeholder="请输入原始密码" data-validate="required:请输入原始密码,repeat#oldPass:密码错误" />
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">新密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" name="admin.password" size="50" placeholder="请输入新密码" data-validate="required:请输入新密码,length#>=5:新密码不能小于5位" />         
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">确认新密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input w50" name="renewpass" size="50" placeholder="请再次输入新密码" data-validate="required:请再次输入新密码,repeat#admin.password:两次输入的密码不一致" />          
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit" onclick='updateSuccess()'> 提交</button>   
        </div>
      </div>      
    </form>
  </div>
</div>
</body>
</html>
