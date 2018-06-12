<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/pintuer.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/admin.css">
<script src="${pageContext.request.contextPath }/wang/script/jquery-1.11.2.js"></script>
<script src="${pageContext.request.contextPath }/wang/script/pintuer.js"></script>
</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong></div>
  <table class="table table-hover text-center">
    <tr>
        <th width="10%">ID</th>
        <th width="30%">举报内容</th>
        <th width="10%">举报类型</th>
        <th width="10%">举报人ID</th>
        <th width="10%">被举报人ID</th>
        <th width="15%">举报时间</th>
        <!--   <th width="10%">排序</th> -->
        <th width="15%">操作</th>
    </tr>
   
   <c:forEach var="report" items="${reportList}">
	    <tr>
            <td>${report.reportId }</td>
            <td>${report.reasonRemark}</td>
            <td>${report.reasonCategoryId}</td>
            <td>${report.userId }</td>
            <td>${report.reportedUserId }</td>
            <td><fmt:formatDate value="${report.createTime}" pattern="yyyy-MM-dd hh:mm"/> </td>
	      
	      <td><div class="button-group">
	    
	      <a class="button border-red" onclick="return confirm('确定要删除吗？');" href="${pageContext.request.contextPath }/admin/deleteReport.action?reportId=${report.reportId}"><span class="icon-trash-o"></span> 删除</a>
	      </div></td>
	    </tr>
    </c:forEach>   
  </table>
</div>
  </body>
</html>
