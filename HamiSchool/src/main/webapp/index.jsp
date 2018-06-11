<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <title>新闻详情</title>
</head>
<body>
<h3>显示某个人的收藏测试</h3>
<ul>
    <c:forEach items="${clist}" var="collection">
        <li>${collection.title}</li>
    </c:forEach>

</ul>

<h3>显示某个人未读消息测试</h3>
<ul>
    <c:forEach items="${mlist}" var="message">
        <li>${message}</li>
    </c:forEach>

</ul>

<a href="#">查看新闻列表</a>









</body>
</html>
