<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'pushList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
<link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/pintuer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/admin.css">
<script src="${pageContext.request.contextPath }/wang/script/jquery-1.11.2.js"></script>
<script src="${pageContext.request.contextPath }/wang/script/pintuer.js"></script>
  </head>
  
  <body>
  <div class="panel admin-panel">
  <div class="padding border-bottom">  
  <button type="button" class="button border-yellow" onclick="window.location.href='${pageContext.request.contextPath }/jsp/pushMessage/push.jsp'"><span class="icon-plus-square-o"></span> 推送消息</button>
  </div>
  <table class="table table-hover text-center">
    <tr>
      <th width="5%">ID</th>
      <th width="10%">发布者</th>
      <th width="60%">发布内容</th>
      <th width="15%">发布时间</th>
      <th width="10%">操作</th>
    </tr>
   
   <c:forEach var="e" items="${push }">
	    <tr>
	      <td>${e.pushMessageId }</td>     
	      <td>${e.adminName }</td>     
	      <td>${e.pushContext }</td>
	      <td><fmt:formatDate value='${e.pushDate }' pattern='yyyy-MM-dd' /></td>
	      
	      <td><div class="button-group">
	    
	      <a class="button border-red" onclick="return confirm('确定要删除吗？');" href="${pageContext.request.contextPath }/admin/admin_deletePush?pushMessage.pushMessageId=${e.pushMessageId}"><span class="icon-trash-o"></span> 删除</a>
	      </div></td>
	    </tr>
    </c:forEach>   
  </table>
</div>
  </body>
</html>
