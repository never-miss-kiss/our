<%--
  Created by IntelliJ IDEA.
  User: WWX
  Date: 2018/6/19
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html xml:lang="zh-CN" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/main.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/base.min.css">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <script type="text/javascript" async="" src="%E4%B8%AA%E4%BA%BA%E4%B8%AD%E5%BF%83_files/mstr.js"></script>
    <%--<script type="text/javascript" async="" src="%E4%B8%AA%E4%BA%BA%E4%B8%AD%E5%BF%83_files/jquery.js"></script>--%>
    <script type="text/javascript" async="" src="/wang/js/jquery.js"></script>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta charset="UTF-8">
    <title>个人中心</title>
    <meta name="viewport" content="width=1226">
    <meta name="description" content="">
</head>
<body>



<div class="breadcrumbs">
    <div class="container">
        <a href=""
           onclick="">首页</a><span
            class="sep">&gt;</span><span>个人中心</span></div>
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
                                    <li><a href="${pageContext.request.contextPath}/home/AllGoodsInUser.action"
                                           onclick="">我的商品</a>
                                    </li>
                                    <li><a href=""
                                           onclick="">我的跑腿</a>
                                    </li>
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
                                <li class="active"><a href="<%= basePath%>/home/personalCenter.action" onclick="">我的个人中心</a>
                                </li>
                                <li><a href="" onclick="">消息通知<i class="J_miMessageTotal"></i></a>
                                </li>

                                <li><a href="<%= basePath%>/home/favGoodsInUser.action?userId=${user.userId}" onclick="">喜欢的商品</a></li>
                            </ul>
                        </div>

                    </div>
                    <div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">账户管理</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li><a href="${pageContext.request.contextPath}/home/forUpdateUser.action?userId=${user.userId}" <%--target="_blank"--%>
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
                    <div class="uc-content-box portal-content-box">
                        <div class="box-bd">
                            <div class="portal-main clearfix">
                                <div class="user-card">
                                    <h2 class="username">欢迎--${user.nickname}</h2>
                                    <p class="tip">您好～</p>
                                    <a class="link" href="${pageContext.request.contextPath}/home/forUpdateUser.action?userId=${user.userId}"
                                       onclick="">修改个人信息&gt;
                                    </a>
                                    <img class="avatar" src="img" width="150" height="150">
                                </div>
                                <div class="user-actions">
                                    <ul class="action-list">

                                        <li>用户名：<span>${user.nickname}</span></li>
                                        <li>绑定手机：<span class="tel">${user.telphone}</span></li>

                                        <li>绑定邮箱：<span class="tel">${user.email}</span></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="portal-sub">
                                <ul class="info-list clearfix">
                                    <li>
                                        <h3>未处理订单：<span class="num">0</span></h3><!--订单状态   过期订单-->
                                        <a href="" data-stat-id="86225729718e7f6e"
                                           onclick="">查看未处理订单<i
                                                class="iconfont"></i></a>
                                        <img src="" alt="">
                                    </li>
                                    <li>
                                        <h3>跑腿任务：<span class="num">0</span></h3>
                                        <a href=""
                                           onclick="">查看接受的跑腿任务<i
                                                class="iconfont"></i></a>
                                        <img src="" alt="">
                                    </li>
                                    <li>
                                        <h3>发布任务：<span class="num">4</span></h3>
                                        <a href=""
                                           onclick="">查看已发布的任务<i
                                                class="iconfont"></i></a>
                                        <img src="" alt="">
                                    </li>
                                    <li>
                                        <h3>收藏的商品：<span class="num">10</span></h3>
                                        <a href=""
                                           onclick="">查看喜欢的商品<i
                                                class="iconfont"></i></a>
                                        <img src="" alt="">
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- .modal-globalSites END -->

<script type="text/javascript" async="" src="%E4%B8%AA%E4%BA%BA%E4%B8%AD%E5%BF%83_files/xmst.js"></script>
<script src="%E4%B8%AA%E4%BA%BA%E4%B8%AD%E5%BF%83_files/base.js"></script>

<script type="text/javascript" src="%E4%B8%AA%E4%BA%BA%E4%B8%AD%E5%BF%83_files/user.js"></script>




</body>
</html>
