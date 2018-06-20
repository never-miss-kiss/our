<%@ page import="com.gem.hami.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="zh-CN" xml:lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">

    <meta name="viewport" content="width=device-width">
    <title>Hami校园社区</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <!--<link rel="stylesheet" type="text/css" href="http://s1.bbs.xiaomi.cn/statics/css/zh-cn/index.css">-->



    <link rel="stylesheet" type="text/css" href="http://s1.bbs.xiaomi.cn/statics/css/zh-cn/ie8-header.css">
    <link rel="stylesheet" href="<%=path%>/sun/css/homepage.css">
    <link rel="stylesheet" href="<%=path%>/sun/css/index.css">
    <link rel="stylesheet" href="sun/css/sign.css">
    <link href="<%=path%>/sun/css/all.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="<%=path%>/bootstrap/js/jquery.min.js"></script>
    <script src="<%=path%>/bootstrap/jQuery.js"></script>
    <script src="<%=path%>/sun/js1/jquery-1.8.0.min.js"></script>
    <script src="<%=path%>/sun/js1/list.js"></script>

    <script>
        alert("123");
        alert(${sessionScope.userInfo});
    </script>
</head>

<body class="xmbbs_desktop" >
<%--<script>switchMobile.init()</script>--%>
<div class="main">
    <style>
        .xmcomm_header_wrap {
            position: relative;
            height: 50px;
            min-width: 990px;
            background: #5b5a5a;
            background: rgba(0, 0, 0, 0.67);
            -webkit-font-smoothing: antialiased
        }

        .xmcomm_header {
            position: relative;
            height: 50px;
            margin: 0 auto
        }





        .xmcomm_header .mobile_qr .qr span {
            display: block;
            height: 151px;
            background: url("//s1.bbs.xiaomi.cn/statics/images/header_qr.png") center no-repeat
        }

        .xmcomm_header .mobile_qr .qr strong {
            display: block;
            line-height: 24px;
            color: #454545;
            text-align: center
        }






        .xmcomm_header .header_menu {
            position: absolute;
            left: 50%;
            line-height: 50px;
            margin: 0 0 0 -243px;
            z-index: 100
        }

        .xmcomm_header .header_menu li {
            float: left;
            padding: 0 8px;
            color: #fff;
            font-size: 16px;
            z-index: 20
        }

        .xmcomm_header .header_menu li:last-child {
            padding: 0
        }

        .xmcomm_header .header_menu li:last-child:after {
            content: ".";
            width: 0;
            opacity: 0
        }

        .xmcomm_header .header_menu li a, .xmcomm_header .header_menu li span {
            color: #fff;
            cursor: pointer
        }

        .xmcomm_header .header_menu li a:hover, .xmcomm_header .header_menu li span:hover {
            color: #ff8b3d
        }

        .xmcomm_header .header_menu li span {
            *float: left;
            *padding-right: 20px
        }

        .xmcomm_header .header_menu li span i {
            width: 10px;
            height: 10px;
            background-position: 0 -49px;
            display: inline-block;
            margin: 6px 0 0 5px
        }






        .xmcomm_header .header_menu_list dl {
            line-height: 42px
        }

        .xmcomm_header .header_menu_list dl dt {
            float: left;
            width: 140px;
            color: #ff6700;
            text-align: right
        }

        .xmcomm_header .header_menu_list dl dd {
            margin-left: 150px;
            border-bottom: 1px solid #eee
        }

        .xmcomm_header .header_menu_list dl:last-child dd {
            border-bottom: none
        }

        .xmcomm_header .header_menu_list ul {
            overflow: auto
        }

        .xmcomm_header .header_menu_list ul li {
            float: left;
            padding: 0;
            width: 155px;
            list-style: none;
            color: #cacaca;
            text-align: left;
            white-space: nowrap
        }

        .xmcomm_header .header_menu_list ul li:before {
            content: "";
            display: inline-block;
            width: 6px;
            height: 6px;
            margin-right: 10px;
            margin-top: 18px;
            background: #cacaca;
            border-radius: 50%;
            vertical-align: top
        }

        .xmcomm_header .header_menu_list ul li a {
            color: #616161
        }

        .xmcomm_header .header_menu_list ul li a:hover {
            color: #ff7519
        }



        .xmcomm_header .header_more_list ul {
            margin: -6px 0 0 1px;
            width: 182px
        }

        .xmcomm_header .header_more_list ul li {
            float: left;
            padding: 0;
            margin: 0 0 0 48px;
            width: 133px;
            height: 30px;
            line-height: 30px;
            list-style-type: disc;
            border-right: 1px solid #dfdfdf;
            color: #6d6d6d;
            font-size: 14px;
            text-align: left
        }

        .xmcomm_header .header_more_list ul li a {
            color: #6d6d6d;
            line-height: 30px
        }

        .xmcomm_header .header_more_list ul li a:hover {
            color: #ff7519
        }



        @media screen and (max-width: 1500px) {
            .xmcomm_header {
                width: 990px
            }



            .xmcomm_header .header_menu {
                left: -10px;
                margin: 0 0 0 250px
            }




            .xmcomm_header .header_more_list ul {
                width: 364px
            }


        }

        @media \0screen\0 {
            .xmcomm_header .header_menu {
                left: -10px;
                margin: 0 0 0 250px
            }

            .xmcomm_header .header_menu .hidden {
                display: none
            }

            .xmcomm_header .header_menu_list {
                left: -240px
            }

            .xmcomm_header .header_more_list {
                width: 364px;
                left: 384px
            }

            .xmcomm_header .header_more_list ul {
                width: 364px
            }

            .xmcomm_header .header_more_list ul li.hide {
                display: list-item
            }

            .xmcomm_header .header_icon.header_revise {
                margin-top: 16px
            }
        }
    </style>

    <style type="text/css">
        /*body{*/
        /*margin:0;*/
        /*padding:0;*/
        /*}*/
        .text-content{
            min-width:1180px;
            border-bottom: 1px solid #e7e7e7;
            border-top: 1px solid #e7e7e7;
            background: #f4f4f4;
        }
        .text-content h1{
            text-align:center;
            font-size: 20px;
            padding-top: 50px;
            color: #EB4F38;
        }
        .text-content p{
            padding: 10px 100px 40px 100px;
            clear: both;
            color: #333;
            display: block;
            font-family: "Microsoft Yahei","Helvetica Neue",Helvetica,Arial,sans-serif;
            font-size: 16px;
            line-height: 1.6;
            margin: 0 auto;
            outline: medium none;
            position: relative;
            width: 900px;
            word-wrap: break-word;
        }
        .praise{
            width:20px;
            height:20px;
            margin: 50px auto;
            cursor: pointer;
            font-size: 12px;
            text-align:center;
            position: relative;
        }
        #praise{
            display:block;
            width:20px;
            height:20px;
            /*margin:0;*/
            /*margin:0 auto;*/
        }
        #praise-img{
            vertical-align: middle;
        }
        #praise-txt{
            height:20px;
            line-height:20px;
            display: block;
        }
        .praise img{
            width:20px;
            height:20px;
            display:block;
            vertical-align: middle;
            /*margin: 0 auto;*/
        }
        #praise img .animation{
            animation: myfirst 0.5s;
            -moz-animation: myfirst 0.5s;
            -webkit-animation: myfirst 0.5s;
            -o-animation: myfirst 0.5s;
        }
        #add-num{
            display:none;
        }
        #add-num .add-animation{
            color: #000;
            position:absolute;
            top:-15px;
            left: 10px;
            font-size: 15px;
            opacity: 0;
            filter: Alpha(opacity=0);
            -moz-opacity:0;
            animation: mypraise 0.5s ;
            -moz-animation: mypraise 0.5s ;
            -webkit-animation: mypraise 0.5s ;
            -o-animation: mypraise 0.5s ;
            font-style:normal;
        }
        .praise .hover , #add-num .add-animation.hover , #praise-txt.hover{
            color: #EB4F38;
        }
        @keyframes myfirst
        {
            0%{
                width:40px;
                height:40px;
            }
            50%{
                width:50px;
                height:50px;
            }
            100% {
                width:40px;
                height:40px;
            }
        }
        @-moz-keyframes myfirst
        {
            0%{
                width:40px;
                height:40px;
            }
            50%{
                width:50px;
                height:50px;
            }
            100% {
                width:40px;
                height:40px;
            }
        }
        @-webkit-keyframes myfirst
        {
            0%{
                width:40px;
                height:40px;
            }
            50%{
                width:50px;
                height:50px;
            }
            100% {
                width:40px;
                height:40px;
            }
        }
        @-o-keyframes myfirst
        {
            0%{
                width:40px;
                height:40px;
            }
            50%{
                width:50px;
                height:50px;
            }
            100% {
                width:40px;
                height:40px;
            }
        }
        @keyframes mypraise
        {
            0%{
                top:-15px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
            25%{
                top:-20px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            50%{
                top:-25px;
                opacity: 1;
                filter: Alpha(opacity=100);
                -moz-opacity:1;
            }
            75%{
                top:-30px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            100% {
                top:-35px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
        }
        @-moz-keyframes mypraise
        {
            0%{
                top:-15px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
            25%{
                top:-20px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            50%{
                top:-25px;
                opacity: 1;
                filter: Alpha(opacity=100);
                -moz-opacity:1;
            }
            75%{
                top:-30px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            100% {
                top:-35px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
        }
        @-webkit-keyframes mypraise
        {
            0%{
                top:-15px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
            25%{
                top:-20px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            50%{
                top:-25px;
                opacity: 1;
                filter: Alpha(opacity=100);
                -moz-opacity:1;
            }
            75%{
                top:-30px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            100% {
                top:-35px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
        }
        @-o-keyframes mypraise
        {
            0%{
                top:-15px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
            25%{
                top:-20px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            50%{
                top:-25px;
                opacity: 1;
                filter: Alpha(opacity=100);
                -moz-opacity:1;
            }
            75%{
                top:-30px;
                opacity: 0.5;
                filter: Alpha(opacity=50);
                -moz-opacity:0.5;
            }
            100% {
                top:-35px;
                opacity: 0;
                filter: Alpha(opacity=0);
                -moz-opacity:0;
            }
        }
    </style>

    <div class="xmcomm_header_wrap">
        <div class="xmcomm_header">

            <ul class="header_menu">
                <li><a href="http://www.xiaomi.cn/index.html">主页</a></li>
                <li><a href="<%=basePath%>/goods/findAllGoods.action">二手物品</a></li>
                <li><a href="<%=basePath%>help/selectAllHelps.action">
                    <span>跑腿</span></a>
                </li>
                <li><a href="http://wan.xiaomi.cn/" target="_blank">联系我们</a></li>
                <li><a href="http://pai.xiaomi.cn/" target="_blank">关于我们</a></li>
                <li><a href="https://s1.mi.com/m/ghd/2018/mst051002/index.html" target="_blank">更换学校</a></li>
            </ul>
        </div>
    </div>
    1${sessionScope.userInfo.nickname}<br/>
    2<% User user = (User) session.getAttribute("userInfo");%>

    <div class="head_wrap">
        <div class="header wrap_990">
            <div class="user_wrap">
                <div class="topbar-info J_userInfo " id="login">
                    <a class="loginbtn" href="http://bbs.xiaomi.cn/site/login"><%=user.getNickname()%></a>
                    <a href="http://account.xiaomi.com/pass/register" class="registerbtn">注册</a>
                </div>
            </div>
        </div>
    </div>
    <!-- 			<div class="bannerTop">
                    <a href="http://hd.xiaomi.cn/mipop/2016dl/" target="_blank" rel="noopener noreferrer" class="download_pc"><img src="http://cdn.fds.api.xiaomi.com/b2c-bbs-cms/2016/0819/20160819070742289.jpg"></a>
                </div> -->
    <div class="container_wrap wrap_990 clearfix">
        <div class="contain_left fr">
            <div class="left_wrap">
                <div class="sidebarplate"
                     onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;侧边栏&#39;, &#39;版块推荐&#39;]);">

                    <div class="sidebarplate_tab">
                        <div class="tab">
                            <span class="on">学校推荐</span>
                        </div>
                    </div>
                    <div>
                        <ul class="on">
                            <li><a href="" target="_blank"><span style="color:#ff0000;">河南科技大学</span></a></li>
                            <li><a href="" target="_blank"><span style="color:#ff0000;">郑州航院</span></a>
                            </li>
                            <li><a href="" target="_blank">南阳理工</a></li>
                            <li><a href="" target="_blank">山东师范大学</a></li>
                            <li><a href="" target="_blank">郑州大学</a></li>
                            <li><a href="" target="_blank">洛阳理工学院</a></li>
                            <li><a href="" target="_blank">河南师范大学</a></li>
                            <li><a href="" target="_blank">聊城大学</a></li>
                            <li><a href="" target="_blank">山东大学</a></li>
                            <li><a href="" target="_blank">齐鲁工业大学</a></li>
                            <li><a href="" target="_blank">新乡医学院</a></li>
                            <li><a href="" target="_blank">洛阳理工大学</a></li>
                            <li><a href="" target="_blank"></a></li>
                            <li><a href="" target="_blank"></a></li>

                        </ul>



                    </div>
                </div>
            </div>


            <div class="left_wrap">
                <div class="con">
                    <div class="hotspot">
                        <h3>大家都在搜</h3>
                    </div>
                    <div class="shareActive">
                        <a href="http://wan.xiaomi.cn/activity/detail/activity_id/177" target="_blank"
                           class="shareActive_img"><img src="../images/20180528010156209.jpg"></a> <span
                            class="shareActive_txt"> 飞利浦智睿床头灯</span>
                    </div>


                    <div class="shareActive">
                        <a href="http://bbs.xiaomi.cn/t-15121215" class="shareActive_img"><img
                                src="../images/20180424044403369.jpg"></a> <span class="shareActive_txt">小米校园女神团招募啦!</span>
                    </div>

                </div>
            </div>


            <div class="left_wrap">
                <div class="con">
                    <div class="hotspot">
                        <h3>这个地方放点啥</h3>
                        <img src="../images/20171128094227219.png" class="two_dimension_code">
                    </div>
                </div>
            </div>

            <div class="left_wrap">
                <div class="con">
                    <div class="hotspot">
                        <h3>这个地方放点啥</h3>
                        <img src="../images/20180320105715268.jpg" class="two_dimension_code">
                    </div>
                </div>
            </div>


        </div>
        <div class="contain_right fl clearfix ">


            <!--<div class="hostplate">-->
                <!--<span class="name">热门版块:</span>-->
                <!--<ul class="hostplate_con clearfix">-->
                    <!--<li class="list_item">-->
                        <!--<a href="http://bbs.xiaomi.cn/f-390" class="list_item_con"-->
                           <!--onclick="_hmt.push([&#39;_trackEvent&#39;, &#39;bbs首页&#39;, &#39;热门版块&#39;, &#39;&#39;]);">-->
                            <!--<img src="../T1SJJgBgbT1R4cSCrK.png">-->
                            <!--<span class="txt">MIUI功能与讨论</span>-->
                        <!--</a>-->
                    <!--</li>-->
                    <!--<li class="list_item">-->
                        <!--<a href="http://bbs.xiaomi.cn/f-475" class="list_item_con"-->
                           <!--onclick="_hmt.push([&#39;_trackEvent&#39;, &#39;bbs首页&#39;, &#39;热门版块&#39;, &#39;&#39;]);">-->
                            <!--<img src="../58101629cb677.png">-->
                            <!--<span class="txt">小米MIX 2</span>-->
                        <!--</a>-->
                    <!--</li>-->
                    <!--<li class="list_item">-->
                        <!--<a href="http://bbs.xiaomi.cn/f-487" class="list_item_con"-->
                           <!--onclick="_hmt.push([&#39;_trackEvent&#39;, &#39;bbs首页&#39;, &#39;热门版块&#39;, &#39;&#39;]);">-->
                            <!--<img src="../5915502dea48f.jpg">-->
                            <!--<span class="txt">小米6</span>-->
                        <!--</a>-->
                    <!--</li>-->
                    <!--<li class="list_item">-->
                        <!--<a href="http://bbs.xiaomi.cn/f-501" class="list_item_con"-->
                           <!--onclick="_hmt.push([&#39;_trackEvent&#39;, &#39;bbs首页&#39;, &#39;热门版块&#39;, &#39;&#39;]);">-->
                            <!--<img src="../5b03cca990b74.jpg">-->
                            <!--<span class="txt">小米8</span>-->
                        <!--</a>-->
                    <!--</li>-->
                <!--</ul>-->
            <!--</div>-->
            <div class="theme">
                <div class="theme_con">
                    <div class="theme_nav">
                        <a href="http://bbs.xiaomi.cn/" class="theme_nav_list current"
                           onclick="_hmt.push([&#39;_trackEvent&#39;, &#39;bbs首页&#39;, &#39;内容区&#39;, &#39;推荐button&#39;]);_msq.push([&#39;trackEvent&#39;, &#39;tj&#39;,&#39;&#39;,&#39;mibbis_c&#39;]);">
                            推荐
                        </a>
                        <a href="http://bbs.xiaomi.cn/l" class="theme_nav_list"
                           onclick="_hmt.push([&#39;_trackEvent&#39;, &#39;bbs首页&#39;, &#39;最新主题button&#39;, &#39;&#39;]);_msq.push([&#39;trackEvent&#39;, &#39;new&#39;,&#39;&#39;,&#39;mibbis_c&#39;]);">
                            最新主题
                        </a>
                        <a href="http://bbs.xiaomi.cn/thread/add" class="btn theme_nav_btn"
                           onclick="_hmt.push([&#39;_trackEvent&#39;, &#39;bbs首页&#39;, &#39;内容区&#39;, &#39;发表新主题&#39;]);">发表新主题</a>
                    </div>

                    <ul>
                        <style type="text/css">
                            .personLayer ol.clearfix li:nth-child(1) {
                                display: none;
                            }

                            /*.personLayer li.integral {*/
                                /*border-left: none;*/
                                /*padding-left: 24px;*/
                            /*}*/
                        </style>

                        <ul>
                        <c:forEach items="${pageInfo.list}" var="list">
                            ${list.userId}
                            <li class="theme_list clearfix" u-id="137006033">
                                <div class="theme_list_img">
                                    <a href="http://bbs.xiaomi.cn/u-detail-137006033" class="headportrait" target="_blank"
                                       rel="noopener noreferrer">
                                        <img class="user_head" src="../images/avatar.jpg"
                                             data-original="http://cdn.fds.api.xiaomi.com/b2c-bbs/cn/137006033/avatar.jpg?&amp;width=50&amp;height=50"
                                             style="display: block;">
                                    </a>
                                </div>

                                <div class="theme_list_con">

                                    <div class="title">
                                        <a href="${pageContext.request.contextPath}/forum/content.action?postId=${list.forumPostId}"  class="title_name " target="_blank"
                                           rel="noopener noreferrer"
                                           onclick="tiaoZhuan(${list})">
                                            ${list.title} </a>

                                        <div class="auth_msg clearfix">
                                            <a href="http://bbs.xiaomi.cn/u-detail-137006033" class="user_name" target="_blank"
                                               rel="noopener noreferrer">${list.user.nickname}</a>
                                            <i class=""></i>

                                            <span class="time txt"><fmt:formatDate value="${list.releaseTime}" pattern="MM-dd-yyyy hh:mm:ss"></fmt:formatDate> </span>

                                            <span class="comefrom txt"></span>
                                            <span class="stick txt">${list.isTop}</span>


                                            <p class="see">
                                                <span class="numb msg user_name domy1" id="${list.forumPostId+100}" onclick="shoucang(${list.forumPostId},${list.forumPostId+100},${list.user.userId})"><i></i>收藏</span>
                                                <span class="numb view">


                                                         <span id="praise">
                                                             <img src="<%=path%>/sun/images/zan.png" height="15px" width="15px" id="praise-img" />
                                                         </span>
                                                         <span id="praise-txt">${list.clickCount}</span>
                                                            <span id="add-num"><em>+1</em></span>

                                                </span>
                                                <span class="numb msg"><i></i>点赞数：</span>
                                                <span class="numb view"><i></i>点击量：93276</span>
                                            </p>
                                        </div>
                                    </div>
                            </li>
                        </c:forEach>
                            <script>
                                function shoucang(forumId,collection,userId){
                                    if( document.getElementById(collection).innerText=="已收藏"){
                                        alert("您已加入收藏，请到个人中心查看!");
                                    }
                                    alert("123");
                                    alert(collection);
                                    $.ajax({
                                        type:"get",
//                                        processData:false,
                                        url:"${pageContext.request.contextPath}/forum/addonesCollection.action?forumId="+forumId+"&userId="+userId,
//                                        data:{forumId:forumId,userId:userId},
                                        success:function (mag) {

                                                document.getElementById(collection).innerText = "已收藏";


                                        }
                                    })
                                }
                            </script>

                            <script>
                                /* @author:Romey
                                 * 动态点赞
                                 * 此效果包含css3，部分浏览器不兼容（如：IE10以下的版本）
                                */
                                $(function(){
                                    $("#praise").click(function(){
                                        var praise_img = $("#praise-img");
                                        var text_box = $("#add-num");
                                        var praise_txt = $("#praise-txt");
                                        var num=parseInt(praise_txt.text());
                                        if(praise_img.attr("src") == ("<%=path%>/sun/images/yizan.png")){
                                            $(this).html("<img src='<%=path%>/sun/images/zan.png' id='praise-img' height='15px' width='15px'/>");
                                            praise_txt.removeClass("hover");
                                            text_box.show().html("<em class='add-animation'>-1</em>");
                                            $(".add-animation").removeClass("hover");
                                            num -=1;
                                            praise_txt.text(num)
                                        }else{
                                            $(this).html("<img src='<%=path%>/sun/images/yizan.png' id='praise-img' height='15px' width='15px' />");
                                            praise_txt.addClass("hover");
                                            text_box.show().html("<em class='add-animation'>+1</em>");
                                            $(".add-animation").addClass("hover");
                                            num +=1;
                                            praise_txt.text(num)
                                        }
                                    });
                                })
                            </script>
                        <li class="theme_list clearfix" u-id="137006033">
                            <div class="theme_list_img">
                                <a href="http://bbs.xiaomi.cn/u-detail-137006033" class="headportrait" target="_blank"
                                   rel="noopener noreferrer">
                                    <img class="user_head" src="../images/avatar.jpg"
                                         data-original="http://cdn.fds.api.xiaomi.com/b2c-bbs/cn/137006033/avatar.jpg?&amp;width=50&amp;height=50"
                                         style="display: block;">
                                </a>
                            </div>
                            <div class="theme_list_con">

                                <div class="title">
                                    <a href="http://bbs.xiaomi.cn/t-29629024"  class="title_name " target="_blank"
                                       rel="noopener noreferrer"
                                       onclick="">
                                        王文祥自己臭(｡･∀･)ﾉﾞ嗨好玩吗？ </a>

                                <div class="auth_msg clearfix">
                                    <a href="http://bbs.xiaomi.cn/u-detail-137006033" class="user_name" target="_blank"
                                       rel="noopener noreferrer">永_恆</a>
                                    <i class=""></i>

                                    <span class="time txt">1分钟前</span>

                                    <span class="comefrom txt"></span>
                                    <span class="stick txt">置顶</span>
                                    <p class="see">
                                        <span class="numb msg"><i></i>收藏</span>
                                        <span class="numb view"><i></i>点赞</span>
                                        <span class="numb msg"><i></i>点赞数：93276</span>
                                        <span class="numb view"><i></i>点击量：93276</span>
                                    </p>
                                </div>
                            </div>
                         </li>
                 </ul>




                    <script >
                        function getPage(curPage) {
                            //将隐藏域的值变成curPage
                            document.getElementById("curPage").value=curPage;
//             触发表单的提交事件
                            document.getElementById("mainForm").submit();
                        }
                    </script>
                    <form action="${pageContext.request.contextPath}/forum/list.action" method="post" id="mainForm">

                        <input type="hidden" name="curPage" id="curPage"/>
                        <div class='page fix'>
                            共 <b>${pageInfo.total}</b> 条

                            <a href="javascript:getPage(${pageInfo.firstPage})"  class="first">首页</a>
                            <c:if test="${!pageInfo.isFirstPage}">
                                <a href="javascript:getPage(${pageInfo.prePage})" class="pre">上一页</a>
                            </c:if>
                            当前第<span>${pageInfo.pageNum}</span>页
                            <c:if test="${!pageInfo.isLastPage}">
                            <a href="javascript:getPage(${pageInfo.nextPage})" class="next">下一页</a>
                            </c:if>


                            <a href="javascript:getPage(${pageInfo.lastPage})" class="last">末页</a>

                        </div>
                    </form>





                                    <%--<div class="base_widget_paging">--%>
                                        <%--<div class="paging_widget_2">--%>
                                            <%--<ul>--%>
                                                <%--<li class="page selected "><a--%>
                                                        <%--onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">1</a>--%>
                                                <%--</li>--%>
                                                <%--<li class="page"><a href="http://bbs.xiaomi.cn/d-2"--%>
                                                                    <%--onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">2</a>--%>
                                                <%--</li>--%>
                                                <%--<li class="page"><a href="http://bbs.xiaomi.cn/d-3"--%>
                                                                    <%--onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">3</a>--%>
                                                <%--</li>--%>
                                                <%--<li class="page"><a href="http://bbs.xiaomi.cn/d-4"--%>
                                                                    <%--onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">4</a>--%>
                                                <%--</li>--%>
                                                <%--<li class="page"><a href="http://bbs.xiaomi.cn/d-5"--%>
                                                                    <%--onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">5</a>--%>
                                                <%--</li>--%>
                                                <%--<li class="page"><a href="http://bbs.xiaomi.cn/d-6"--%>
                                                                    <%--onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">6</a>--%>
                                                <%--</li>--%>
                                                <%--<li class="page"><a href="http://bbs.xiaomi.cn/d-7"--%>
                                                                    <%--onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">7</a>--%>
                                                <%--</li>--%>
                                                <%--<li class="page"><a href="http://bbs.xiaomi.cn/d-8"--%>
                                                                    <%--onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">8</a>--%>
                                                <%--</li>--%>
                                                <%--<li class="page"><a href="http://bbs.xiaomi.cn/d-9"--%>
                                                                    <%--onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">9</a>--%>
                                                <%--</li>--%>
                                                <%--<li class="page"><a href="http://bbs.xiaomi.cn/d-10"--%>
                                                                    <%--onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">10</a>--%>
                                                <%--</li>--%>
                                                <%--<li class="next"><a href="http://bbs.xiaomi.cn/d-2"--%>
                                                                    <%--onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">&gt;</a>--%>
                                                <%--</li>--%>
                                                <%--<li class="last"><a href="http://bbs.xiaomi.cn/d-1034"--%>
                                                                    <%--onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">末页&gt;&gt;</a>--%>
                                                    <%--<!--</li-->                </li>--%>
                                            <%--</ul>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                </div>
            </div>
            <script type="text/javascript" src="../personLayer.js.下载"></script>
        </div>
        <script type="text/javascript" src="../slide.js.下载"></script>
    </div>
    <div class="bannerBottom">
        <a href="http://bbs.xiaomi.cn/app/download" target="_blank" rel="noopener noreferrer" class="download_m"><img
                src="../banner_bottom_m.png"></a>
    </div>
</div>
<div class="footer">
    <!--<div class="mobile_switch">-->
        <!--<a class="switch_desktop disable" id="J_switchDesktop" href="http://bbs.xiaomi.cn/#">电脑版</a>-->
        <!--<a class="switch_mobile" id="J_switchMobile" href="http://bbs.xiaomi.cn/#">手机版</a>-->
        <!--<a class="switch_app download_m" href="http://bbs.xiaomi.cn/#">客户端<i>new</i></a>-->
    <!--</div>-->
    <div class="footertop">
        <div class="wrap_990">
            <div class="footertop_con">
                <dl>
                    <dd><a href="http://www.cnmo.com/" target="_blank" rel="noopener noreferrer">手机中国</a></dd>
                    <dd><a href="http://bbs.kuaipan.cn/" target="_blank" rel="noopener noreferrer">金山快盘</a></dd>
                </dl>
                <dl>
                    <dd><a href="http://www.leiphone.com/" target="_blank" rel="noopener noreferrer">雷锋网</a></dd>
                    <dd><a href="http://www.chinaz.com/" target="_blank" rel="noopener noreferrer">站长之家</a></dd>
                </dl>
                <dl>
                    <dd><a href="http://www.mydrivers.com/" target="_blank" rel="noopener noreferrer">驱动之家</a></dd>
                    <dd><a href="http://bbs.feng.com/" target="_blank" rel="noopener noreferrer">威锋论坛</a></dd>
                </dl>
                <dl>
                    <dd><a href="http://mobile.zol.com.cn/" target="_blank" rel="noopener noreferrer">ZOL手机频道</a></dd>
                    <dd><a href="http://bbs.zhiyoo.com/" target="_blank" rel="noopener noreferrer">安卓网</a></dd>
                </dl>
                <dl>
                    <dd><a href="http://bbs.mumayi.com/" target="_blank" rel="noopener noreferrer">安卓论坛</a></dd>
                    <dd><a href="http://www.znds.com/" target="_blank" rel="noopener noreferrer">智能电视网</a></dd>
                </dl>
                <dl>
                    <dd><a href="http://www.igao7.com/" target="_blank" rel="noopener noreferrer">爱搞机</a></dd>
                    <dd><a href="http://www.tvhome.com/" target="_blank" rel="noopener noreferrer">电视之家</a></dd>
                </dl>
            </div>
        </div>
    </div>
    <div class="footerdown">
        <div class="wrap_990">
            <a href="http://bbs.xiaomi.cn/" class="milogo">Hami</a>
            <a href="http://bbs.xiaomi.cn/" class="link">HamiSchool</a>
            <span>未备案 <a target="_blank" rel="noopener noreferrer"
                                                 href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802020134"
                                                 style="cursor:pointer;color: white;">未备案</a></span>
        </div>
    </div>
</div>

<!-- 统计代码 -->
<script>
    var _msq = _msq || [];
    _msq.push(['setDomainId', 112]);
    _msq.push(['trackPageView']);
    (function () {
        var ms = document.createElement('script');
        ms.type = 'text/javascript';
        ms.async = true;
        ms.src = '//s1.mi.com/stat/18/xmst.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ms, s);
    })();
</script>
<script>
    var _hmt = _hmt || [];
</script>
<script src="../autologin.js.下载"></script>

<iframe src="../autologin.html" style="width: 0px; height: 0px;"></iframe>
</body>
</html>