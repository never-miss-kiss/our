<%--
  Created by IntelliJ IDEA.
  User: WWX
  Date: 2018/6/15
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zh-CN" xml:lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">

    <title>个人中心首页</title>
    <%--<link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/pintuer.css">--%>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/main_p.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/main.min.css">



</head>
<body>

<div class="page-main user-main">
    <div class="container">
        <div class="row">
            <div class="span4">
                <div class="uc-box uc-sub-box">
                    <div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">订单中心</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li <%--class="active"--%> id="goods"><a href="${pageContext.request.contextPath}/home/AllGoodsInUserId.action?goodsList"
                                       onclick="" >我的商品</a>
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
                    <div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">个人中心</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li <%--class="active"--%>><a href="${pageContext.request.contextPath }/wang/personalcenter/perInfo.jsp" onclick="">我的个人中心</a>
                                </li>
                                <li><a href="" onclick="">消息通知<i class="J_miMessageTotal"></i></a>
                                </li>

                                <li><a href="" onclick="">喜欢的商品</a></li>
                            </ul>
                        </div>
                    </div>
                    <%--<div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">我的反馈</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li><a href="" onclick="">反馈记录</a>
                                </li>
                                <li><a href="" onclick="">申请反馈</a>
                                </li>
                                <li><a href="" onclick="">反馈通知</a>
                                </li>
                            </ul>
                        </div>
                    </div>--%>
                    <div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">账户管理</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li><a href="#" target="_blank"
                                       onclick="">个人信息</a>
                                </li>
                                <li><a href="#"
                                       target="_blank"
                                       onclick="">修改密码</a>
                                </li>
                                <li><a href="#" target="_blank"
                                       onclick="">申请认证</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <%--<div class="span16">
                <div class="protal-content-update hide">
                    <div class="protal-username">
                        Hi, 狗蛋
                    </div>
                    <p class="msg">我们做了一个小升级：你的用户名可以直接修改啦，去换个酷炫的名字吧。<a
                            href="#" target="_blank"
                            onclick="">
                        立即前往&gt;</a></p>
                </div>
                <div class="uc-box uc-main-box">
                    <div class="uc-content-box portal-content-box">
                        <div class="box-bd">
                            <div class="portal-main clearfix">
                                <div class="user-card">
                                    <h2 class="username">狗蛋</h2>
                                    <p class="tip">你好～</p>
                                    <a class="link" href="#" target="_blank"
                                       onclick="">修改个人信息
                                        &gt;</a>
                                    <img class="avatar" src="#" width="150"
                                         height="150" alt="哈哈">
                                </div>
                                <div class="user-actions">
                                    <ul class="action-list">
                                        <li>绑定手机：<span class="tel">156********78</span></li>

                                        <li>绑定邮箱：<span class="tel">95******9@q*.com</span></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="portal-sub">
                                <ul class="info-list clearfix">
                                    <li>
                                        <h3>买入商品：<span class="num">0</span></h3>
                                        <a href="#" onclick="">查看买过的商品<i class="iconfont"></i></a>
                                        <img src="#" alt="">
                                    </li>
                                    <li>
                                        <h3>卖出商品：<span class="num">0</span></h3>
                                        <a href="#" onclick="">查看卖出的宝贝<i class="iconfont"></i></a>
                                        <img src="#" alt="">
                                    </li>
                                    <li>
                                        <h3>发布任务：<span class="num">4</span></h3>
                                        <a href="#"
                                           onclick="">查看发布的任务<i class="iconfont"></i></a>
                                        <img src="./个人中心_files/portal-icon-3.png" alt="">
                                    </li>
                                    <li>
                                        <h3>喜欢的商品：<span class="num">2</span></h3>
                                        <a href="#"
                                           onclick="">查看喜欢的商品<i class="iconfont"></i></a>
                                        <img src="#" alt="">
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>--%>
        </div>
    </div>
</div>
</body>
</html>