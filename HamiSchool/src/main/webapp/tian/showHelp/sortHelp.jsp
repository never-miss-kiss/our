<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<body>
<div class="rank-module" id="rankHelp">
    <div class="rank-tabs-bar">
        <label>排行榜</label>
        <ul class="rank-tabs-list" >
            <a href="javascript:sort(0,2)" ><li class="on">点击量</li></a>
            <a href="javascript:sort(0,3)" style="color: #000;"><li>截止日期</li></a>
            <a href="javascript:sort(0,4)"><li>标价</li></a>
        </ul>
        <div class="rank-module">
            <ul class="rank-list">
                <c:forEach items="${helpSorts}" var="helpInfo">
                    <li class="item"><span class="rank-index">${helpInfo.id}</span>
                        <a href="<%=basePath%>help/helpDetail.action?helpType=${helpInfo.helpType}&helpId=${helpInfo.helpId}" target="_blank" title="${helpInfo.title}">${helpInfo.title}</a>
                    </li>
                </c:forEach>
            </ul>
            <a class="complete-rank" target="_blank" href="#">查看完整榜单</a>
        </div>
    </div>


</div>

</body>
</html>
