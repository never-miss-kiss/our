<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>

<li class="panel-title">
    <div class="split-line"></div>
    <p> <span>关键词</span> </p>
</li>
<c:forEach items="${schools}" var="school">
    <li class="suggest-item">
        <a class="content" href="<%=basePath %>help/selectAllHelps.action?schoolId=${school.schoolId}">
            ${school.name}
        </a>
        <div class="cancel"></div>
    </li>
</c:forEach>

</html>
