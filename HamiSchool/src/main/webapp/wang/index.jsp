<%--
  Created by IntelliJ IDEA.
  User: WWX
  Date: 2018/6/6
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <title>测试页</title>
    <style>
        #test{
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>
 <%--欢迎${allAdmin}--%>

<h2 id="test">这是一个测试网页，并没有内容显示</h2>
${user}
</body>
</html>
