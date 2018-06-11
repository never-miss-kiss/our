<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zh-cn">
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
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong></div>
  <table class="table table-hover text-center">
    <tr>
      <th width="10%">ID</th>
      <th width="45%">反馈内容</th>
      <th width="15%">邮箱</th>
      <th width="15%">其他联系方式</th>
    <!--   <th width="10%">排序</th> -->
      <th width="15%">操作</th>
    </tr>
   
   <c:forEach var="e" items="${feedback }">
	    <tr>
	      <td>${e.backId }</td>     
	      <td>${e.content }</td>     
	      <td>${e.email }</td>
	      <td>${e.otherContact }</td>
	      
	      <td><div class="button-group">
	    
	      <a class="button border-red" onclick="return confirm('确定要删除吗？');" href="${pageContext.request.contextPath }/feedBack/feedBack_deleteBack?feedBack.backId=${e.backId}"><span class="icon-trash-o"></span> 删除</a>
	      </div></td>
	    </tr>
    </c:forEach>   
  </table>
</div>
  </body>
</html>
