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


<c:forEach items="${helpComentReplyList}"  var="helpCommentReply">

    <a href="#">${helpCommentReply.user.nickname}</a><br/>
    <a href="#">${helpCommentReply.commentedUser.nickname}</a><br/>
    <a href="#">${helpCommentReply.helpCommentReplyId}</a><br/>
    <a href="#">${helpCommentReply.content}</a><br/>


</c:forEach>


</body>
</html>
