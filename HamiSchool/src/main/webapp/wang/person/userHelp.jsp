<%--
  Created by IntelliJ IDEA.
  User: WWX
  Date: 2018/6/19
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>我的商品</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/base.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/main.min.css">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <script type="text/javascript" async="" src="%E4%B8%AA%E4%BA%BA%E4%B8%AD%E5%BF%83_files/mstr.js"></script>
    <%--<script type="text/javascript" async="" src="%E4%B8%AA%E4%BA%BA%E4%B8%AD%E5%BF%83_files/jquery.js"></script>--%>
    <script type="text/javascript" async="" src="/wang/js/jquery.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=1226">
    <meta name="description" content="">

    <script type="text/javascript">
        function getPage(curPage) {


            //将隐藏域的值变成curPage
            $("#curPage").val(curPage);

//             触发表单的提交事件
            document.getElementById("mainForm").submit();

        }
    </script>

    <style>
        #nullGoods{
            font-size: 20px;
            color: #B0B0B0;
        }
    </style>


</head>
<body>
<div class="breadcrumbs">
    <div class="container">
        <a href="<%= basePath%>/forum/list.action"
           onclick="">首页</a><span
            class="sep">&gt;</span><span>发布的任务</span></div>
</div>
<div class="page-main user-main">
    <div class="container">
        <div class="row">
            <div class="span4">
                <div class="uc-box uc-sub-box">
                    <div class="uc-nav-box">
                        <div class="uc-nav-box">
                            <div class="box-hd">
                                <h3 class="title">订单中心</h3>
                            </div>
                            <div class="box-bd">
                                <ul class="uc-nav-list">
                                    <li class="active"><a href="${pageContext.request.contextPath}/home/AllGoodsInUser.action"
                                           onclick="">我的商品</a>
                                    </li>
                                    <%--<li><a href=""
                                           onclick="">我的跑腿</a>
                                    </li>--%>
                                    <li><a href=""
                                           onclick="">我的任务</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">个人中心</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li><a href="${pageContext.request.contextPath }/home/personalCenter.action" onclick="">我的个人中心</a>
                                </li>
                                <li><a href="" onclick="">消息通知<i class="J_miMessageTotal"></i></a>
                                </li>
                                <li><a href="<%= basePath%>home/favGoodsInUser.action?userId=${user.userId}" onclick="">喜欢的商品</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">账户管理</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li><a href="${pageContext.request.contextPath}/home/forupdateUser.action?userId=${user.userId}" <%--target="_blank"--%>
                                       onclick="">个人信息</a>
                                </li>
                                <li><a href="" onclick="">修改密码</a>
                                </li>
                                <li><a href="" target="blank"
                                       onclick="">个人认证</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="span16">
                <div class="uc-box uc-main-box">
                    <div class="uc-content-box order-list-box">
                        <div class="box-hd">
                            <h1 class="title">发布的任务</h1>

                            <div class="more clearfix">
                                <ul class="filter-list J_orderType">
                                    <li class="first active">
                                        <a href="" data-type="0"
                                           onclick="">全部任务</a>
                                    </li>
                                    <li><a id="J_unpaidTab" href="" data-type="7"
                                           onclick="">帮我买</a>
                                    </li>
                                    <li><a id="J_sendTab" href="" data-type="8"
                                           onclick="">帮我排</a>
                                    </li>
                                    <li><a href="" data-type="5"
                                           onclick="">帮我取</a>
                                    </li>
                                    <li><a href="" data-type="5"
                                           onclick="">帮我送</a>
                                    </li>
                                </ul>
                                <form id="J_orderSearchForm" class="search-form clearfix" action="" method="get">
                                    <label for="search" class="hide">搜索</label>
                                    <input class="search-text" type="search" id="J_orderSearchKeywords" name="keywords" autocomplete="off" placeholder="输入商品名称">
                                    <input type="submit" class="search-btn iconfont" value="">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
