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

11111111111111
<c:forEach items="${helpInfos}"  var="helpInfo">

    <a href="#">${helpInfo.name}</a><br/>

</c:forEach>


</body>
</html>
