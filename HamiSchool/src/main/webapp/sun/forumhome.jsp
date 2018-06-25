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
    <%--<meta http-equiv="X-UA-Compatible" content="IE=Edge">--%>
    <meta name="viewport" content="width=device-width, initial-scale=1">

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

    <!--Gallery栏目框-->
    <link href="<%= basePath %>bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="<%= basePath %>bootstrap/js/jquery.min.js"></script>
    <script src="<%= basePath %>bootstrap/js/bootstrap.js"></script>
    <link href="<%= basePath %>tian/showHelp/Gallery_files/style.css" rel="stylesheet" type="text/css" media="all">
    <link href="<%= basePath %>tian/showHelp/Gallery_files/animate.css" rel="stylesheet" type="text/css" media="all">
    <!--Gallery栏目框end-->

    <title>Gallery</title>
    <script>

        <%--alert(${sessionScope.userInfo});--%>
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
        }
        #praise{
            display:block;
            width:20px;
            height:20px;
            /*margin:0;*/
            /*margin:0 auto;*/
        }
        #praise-shoucang{
            position: relative;
            margin-right: 10px;
            margin-left: 40px;
        }
        #praise-img{
            vertical-align: middle;
            margin-top: 0px;
            margin-left: 10px;
            margin-right: 50px;
            position: absolute;
        }
        #praise-txt{
            height:20px;
            line-height:20px;
            display: block;
            position: absolute;
            margin-right: 20px;
            margin-left: 25px;
        }
        .praise img{
            width:20px;
            height:20px;
            display:block;
            vertical-align: middle;
            padding: 0;
            margin-top: 0;
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

    <%--<div class="xmcomm_header_wrap">--%>
        <%--<div class="xmcomm_header">--%>

            <%--<ul class="header_menu">--%>
                <%--<li><a href="http://www.xiaomi.cn/index.html">主页</a></li>--%>
                <%--<li><a href="http://bbs.xiaomi.cn/">二手物品</a></li>--%>
                <%--<li>--%>
                    <%--<span>跑腿</span>--%>
                <%--</li>--%>
                <%--<li><a href="http://wan.xiaomi.cn/" target="_blank">联系我们</a></li>--%>
                <%--<li><a href="http://pai.xiaomi.cn/" target="_blank">关于我们</a></li>--%>
                <%--<li><a href="https://s1.mi.com/m/ghd/2018/mst051002/index.html" target="_blank">更换学校</a></li>--%>
            <%--</ul>--%>
        <%--</div>--%>
    <%--</div>--%>
    用户：${sessionScope.userInfo.nickname}<br/>
    <div class="head_wrap">
        <div class="header wrap_990">
            <div class="user_wrap">
                <div class="topbar-info J_userInfo " id="login">
                    <a class="loginbtn" href="http://bbs.xiaomi.cn/site/login"></a>
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
                     onclick="">

                    <div class="sidebarplate_tab">
                        <div class="tab">
                            <span class="on">学校推荐</span>
                        </div>
                    </div>
                    <div>
                        <ul class="on">
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2819" target="_blank"><span style="color:#ff0000;">河南科技大学</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2836" target="_blank"><span style="color:#ff0000;">郑州航院</span></a>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2090" target="_blank">苏州大学</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2686" target="_blank">山东师范大学</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2815" target="_blank">郑州大学</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2840" target="_blank">洛阳理工学院</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2827" target="_blank">河南师范大学</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2688" target="_blank">聊城大学</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2669" target="_blank">山东大学</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2677" target="_blank">齐鲁工业大学</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2825" target="_blank">新乡医学院</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2037" target="_blank">华东师范大学</a></li>


                        </ul>
                    </div>
                </div>
            </div>


            <div class="left_wrap">
                <div class="con">
                    <div class="hotspot">
                        <h3>大家都在搜</h3>
                    </div>
                    <c:forEach items="${listtrans}" var="trans">
                    <div class="shareActive">
                        <a href="${pageContext.request.contextPath}/goods/findGoodsById.action?goodsId=${trans.goodsId}" target="_blank" class="shareActive_img">
                            <img src="${pageContext.request.contextPath}/imagesgoods/${trans.picture}">
                        </a>
                        <span class="shareActive_txt"> ${trans.name}</span>
                    </div>
                    </c:forEach>
                </div>
            </div>

            <c:forEach items="${listnottrans}" var="nottrans">
            <div class="left_wrap">
                <div class="con">
                    <div class="hotspot">
                        <h3>${nottrans.name}</h3>
                        <a href="${pageContext.request.contextPath}/goods/findGoodsById.action?goodsId=${nottrans.goodsId}"><img src="${pageContext.request.contextPath}/imagesgoods/${nottrans.picture}" class="two_dimension_code"></a>
                    </div>
                </div>
            </div>
            </c:forEach>

        </div>
        <div class="contain_right fl clearfix ">


            <div class="theme">
                <div class="theme_con">
                    <div class="theme_nav">
                        <a href="http://bbs.xiaomi.cn/" class="theme_nav_list current"
                           onclick="">
                            推荐
                        </a>
                        <a href="" class="theme_nav_list"
                           onclick="">
                            最新主题
                        </a>
                        <a href="${pageContext.request.contextPath}/sun/index.jsp" class="btn theme_nav_btn"
                           onclick="">发表新主题</a>
                    </div>

                        <style type="text/css">
                            .personLayer ol.clearfix li:nth-child(1) {
                                display: none;
                            }
                        </style>

                        <ul>

                        <c:forEach items="${pageInfo.list}" var="list"  >
                            <li class="theme_list clearfix" u-id="137006033">
                                <div class="theme_list_img">
                                    <a href="" class="headportrait" target="_blank"
                                       rel="noopener noreferrer">
                                        <img class="user_head" src="${pageContext.request.contextPath}/profilePicture/${list.user.photo}" style="display: block;">
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
                                            <c:if test="${list.isTop==1}">
                                            <span class="stick txt" style="color: #FF7519">置顶</span>
                                            </c:if>

                                            <p class="see">
                                                <span class="numb msg user_name domy1" id="${list.forumPostId+100}" onclick="shoucang(${list.forumPostId},${list.forumPostId+100},${list.user.userId})"><i></i><span id="praise-shoucang">收藏</span></span>


                                                    <span class="numb view" id="${list.forumPostId+1000}" onclick="">
                                                         <span id="${list.forumPostId+10000}" name="praise_my" onclick="dianzantest(${list.forumPostId+10000},${list.forumPostId})">

                                                          <c:forEach items="${likelist}" var="s"  varStatus="status">
                                                              <%--<c:out value="第${status.count}次循环" ></c:out>--%>
                                                              <%--<script>--%>
                                                                          <%--alert(${status.current}+"xianzai"+${s}+"===当前第几个"+${status.index});--%>
                                                                      <%--</script>--%>
                                                                      <c:if test="${list.forumPostId==s}" >
                                                                          <img src="<%=path%>/sun/images/yizan.png" height="15px" width="15px" id="praise-img" />
                                                                      </c:if>


                                                          </c:forEach>
                                                             <%--此script是点赞同步的关键，非百分百自信勿动，不要给上面 $("#"+${list.forumPostId+10000}下加标签--%>
                                                       <script>
                                                              var imgspan = $("#"+${list.forumPostId+10000});
//                                                              alert("12345");
//                                                              alert(imgspan.get(0).tagName);
//                                                                alert(imgspan.children().length);
                                                              if (imgspan.children().length==1){
                                                                  imgspan.append("<img src=\"<%=path%>/sun/images/zan.png\" height=\"15px\" width=\"15px\" id=\"praise-img\" />")
                                                              }
                                                       </script>

                                                         </span>
                                                        <span id="praise-txt" class="txt_my"  name="txt_my" >${list.clickCount}</span>

                                                    </span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </c:forEach>
                            <%--收藏js代码——收藏功能还可以优化--%>
                            <script>

                                function shoucang(forumId,collection,userId){
                                    if( document.getElementById(collection).lastChild.innerText=="已收藏"){
                                        alert("您已加入收藏，请到个人中心查看!");
                                    }
//
                                    $.ajax({
                                        type:"get",
//                                        processData:false,
                                        url:"${pageContext.request.contextPath}/forum/addonesCollection.action?forumId="+forumId+"&userId="+userId,
//                                        data:{forumId:forumId,userId:userId},
                                        success:function (mag) {
                                                document.getElementById(collection).lastChild.innerText = "已收藏";
                                        }
                                    })
                                }
                            </script>

                            <script>
                                /* @author:Romey
                                 * 动态点赞
                                */
                                function dianzantest(abs,forupostid) {
                                    var imgspan = $("#"+abs);
                                    var img = imgspan.children();
                                    var countspan = imgspan.next();
//                                    alert(countspan.get(0).tagName);

                                    if (img.attr("src") == ("<%=path%>/sun/images/yizan.png")){
                                        img.attr("src","<%=path%>/sun/images/zan.png");
                                        $.ajax({
                                            type:"post",
                                            url:"${pageContext.request.contextPath}/forum/cancledianzan.action",
                                            data:{"forumPostId":forupostid},
                                            success:function (count) {
//                                                alert(count);
                                                countspan.html(count);

                                            }
                                        })
                                    }else{
                                        img.attr("src","<%=path%>/sun/images/yizan.png");
                                        $.ajax({
                                            type:"post",
                                            url:"${pageContext.request.contextPath}/forum/adddianzan.action",
                                            data:{"forumPostId":forupostid},
                                            success:function (count1) {
//                                                alert(count1);
                                                countspan.html(count1);
                                            }
                                        })
                                    }
                                }

                            </script>
                 </ul>

                        <div class="base_widget_paging" >
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
                        </div>

                    <script >
                        function getPage(curPage) {
                            //将隐藏域的值变成curPage
                            document.getElementById("curPage").value=curPage;
//             触发表单的提交事件
                            document.getElementById("mainForm").submit();
                        }
                    </script>
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