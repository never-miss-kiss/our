<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
	<script src="${pageContext.request.contextPath }/script/jquery-1.11.2.js"></script>
	<script src="${pageContext.request.contextPath }/script/pintuer.js"></script>  
  </head>
  
  <body>
    <button class="button border-dot" onclick="window.location.href='../help/helpList.jsp'"> 跑腿</button>
    <button class="button border-dot" onclick="window.location.href='${pageContext.request.contextPath }/admin/goodsList.action'"> 二手商品</button>
  	<button class="button border-dot" onclick="window.location.href='${pageContext.request.contextPath }/admin/selectAllUser.action'"> 用户中心</button>
  	<button class="button border-dot" onclick="window.location.href='${pageContext.request.contextPath }/admin/reportList.action'">举报管理</button>
  </body>
</html>
