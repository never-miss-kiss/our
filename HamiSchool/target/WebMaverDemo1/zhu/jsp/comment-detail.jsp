<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="OrcasThemes">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>评论详情</title>
    <link rel="stylesheet" href="<%= basePath %>zhu/bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="<%= basePath %>zhu/js/jquery-1.12.1.min.js"></script>
    <script type="text/javascript" src="<%= basePath %>zhu/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="<%= basePath %>zhu/js/jquery-1.11.2.js"></script>

    <link href="<%= basePath %>zhu/Gallery_files/bootstrap.css" rel="stylesheet" type="text/css" media="all">
    <script src="<%= basePath %>zhu/Gallery_files/bootstrap-3.3.7/dist/js/jquery.min.js"></script>
    <link href="<%= basePath %>zhu/Gallery_files/style.css" rel="stylesheet" type="text/css" media="all">
    <link rel="stylesheet" type="text/css" href="<%= basePath %>zhu/Gallery_files/style_common.css">
    <link href="<%= basePath %>zhu/Gallery_files/css" rel="stylesheet" type="text/css">
    <link href="<%= basePath %>zhu/Gallery_files/css(1)" rel="stylesheet" type="text/css">
    <link href="<%= basePath %>zhu/Gallery_files/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src="<%= basePath %>zhu/Gallery_files/wow.min.js.下载"></script>
    <script src="<%= basePath %>zhu/Gallery_files/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
    <!-- Bootstrap core CSS -->
    <link href="<%= basePath %>zhu/css/bootstrap.css" rel="stylesheet">
    <!-- Custom styles for this template -->

    <link rel="stylesheet" href="<%= basePath %>zhu/css/screen.css">
    <link rel="stylesheet" href="<%= basePath %>zhu/css/animation.css">
    <!--[if IE 7]>

    <![endif]-->
    <link rel="stylesheet" href="<%= basePath %>zhu/css/font-awesome.min.css">
    <!--[if lt IE 8]>
    <link rel="stylesheet" href="<%= basePath %>zhu/css/ie.css" type="text/css" media="screen, projection">
    <![endif]-->
    <link href="<%= basePath %>zhu/css/lity.css" rel="stylesheet">

    <link href="<%= basePath %>zhu/css/shopdetail.css" rel="stylesheet" type="text/css">
    <script src="<%= basePath %>zhu/js/common.js"></script>
    <script src="<%= basePath %>zhu/js/lity.js"></script>

    <style>

    </style>
</head>
<body>
评论详情
<div class="content">
<div class="row comment-posts">
    <div class="col-sm-11">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <strong>
                        ${uname}
                    </strong>
                    <span class="pull-right"><fmt:formatDate value="${goodsComment.releaseTime}" pattern="yyyy-MM-dd "/></span>
                </div>
                <div class="panel-body">
                    <c:out value="${goodsComment.content}"></c:out>
                </div>
                <div class="panel-footer">
                    共${count}条回复
                </div>
            </div>
    </div>
    <div class="col-sm-11">
        <C:forEach items="${goodsCommentReply}" var="reply">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <strong>
                        <C:forEach items="${username}" var="u">
                            <C:if test="${u.key eq reply.goodsCommentReplyId}">
                                <C:out value="${u.value}"></C:out>
                            </C:if>
                        </C:forEach>
                    </strong>
                    <span class="pull-right"><fmt:formatDate value="${reply.createTime}" pattern="yyyy-MM-dd "/></span>
                </div>
                <div class="panel-body">
                    <c:out value="${reply.content}"></c:out>
                </div>
                <div class="panel-footer">
                    <a href="<%= basePath %>goods/findGoodsCommentDetail.action?goodsCommentId=${comment.goodsCommentId}" class="badge">
                        <%--<C:forEach items="${count}" var="c">--%>
                            <%--<C:if test="${c.key eq comment.goodsCommentId}">--%>
                                <%--<C:out value="${c.value}"></C:out>--%>
                            <%--</C:if>--%>
                        <%--</C:forEach>--%>
                        回复
                    </a>
                </div>
            </div>
        </C:forEach>
    </div>
</div>
</div>
</body>
</html>
