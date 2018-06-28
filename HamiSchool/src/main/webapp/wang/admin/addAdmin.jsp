<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>增加管理员</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/pintuer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/admin.css">
<script src="${pageContext.request.contextPath }/wang/script/jquery-1.11.2.js"></script>
<script src="${pageContext.request.contextPath }/wang/script/pintuer.js"></script>
<script type="text/javascript">
	
</script>
  <style>
    #adminName{
      float: right;
    }
  </style>
</head>
<body>
<div class="panel">
  <div class="panel-head">
    <strong><span class="icon-key"></span>增加管理员</strong>
    <div class="form-group" id="adminName">
      <div class="label">
        <%--<label for="sitename">管理员：</label>--%>
        <input type="text" readOnly="true"  class="input1" name="admin.nickname"  value="操作人员：${admin.nickname }"/>
      </div>
      <%--<div >
        <input type="text" readOnly="true"  class="input w50" name="admin.nickname"  value="${admin.nickname }"/>

      </div>--%>
    </div>
  </div>
  <div class="body-content">
    <form method="post" class="form-x" action="${pageContext.request.contextPath }/admin/updateAdmin.action">
    <%--<div class="form-group">
        <div class="label">
          <label for="sitename">管理员：</label>
        </div>
        <div class="field">
           <input type="text" readOnly="true"  class="input w50" name="admin.nickname"  value="${admin.nickname }"/>
          
        </div>
      </div>  --%>
        
      <div class="form-group">
        <div class="label">
          <label for="sitename">用户名：</label>
        </div>
        <div class="field">
        	<input type='hidden' name='admin.adminId' value='${admin.adminId }'>
          <input type="hidden"  class="input w50" id="oldPass" name="oldPass" size="50" value="${admin.password }"/>
          <input type="text"  class="input w50" id="mpass" name="mpass" size="50" placeholder="请输入要添加的管理的昵称" data-validate="required:请输入要添加的管理的昵称" />
        </div>
      </div>      
      <div class="form-group">
        <div class="label">
          <label for="sitename">联系方式：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" name="admin.password" size="50" placeholder="请输入真实可靠的联系方式" data-validate="required:请输入真实可靠的联系方式,<%--length#>=5:新密码不能小于5位--%>" />
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label for="sitename">权限：</label>
        </div>
        <div class="field">
          <select>
            <option value="0">请选择</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
          </select>
          <%--<input type="password" class="input w50" name="renewpass" size="50" placeholder="请输入权限" data-validate="required:请再次输入新密码,repeat#admin.password:两次输入的密码不一致" />--%>
        </div>
      </div>
      
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit" onclick='updateSuccess()'> 提交</button>   
          <button class="button bg-main " type="submit" onclick='updateSuccess()'> 退出</button>
        </div>
      </div>      
    </form>
  </div>
</div>
</body>
</html>
