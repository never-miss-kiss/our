<%--
  Created by IntelliJ IDEA.
  User: Xiaoyi
  Date: 2018/6/7
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>a</title>
</head>
<body>

<C:forEach items="${requestScope.goods}" var="good">
    <tr>
        <td>${good.goodsId}</td>
        <td>${good.name}</td>
        <td>${good.price}</td>
    </tr>
</C:forEach>
</body>
</html>
