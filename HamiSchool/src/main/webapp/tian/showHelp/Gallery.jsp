<%--
  Created by IntelliJ IDEA.
  User: 勿忘初心
  Date: 2018/6/10
  Time: 17:11
  To change this template use File | Settings | File Templates.


  大学搜索功能
  评论功能
  ajax左侧栏目分类
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="<%= basePath %>bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="<%= basePath %>bootstrap/js/jquery.min.js"></script>
    <script src="<%= basePath %>bootstrap/js/bootstrap.js"></script>
<!--Gallery栏目框-->
    <link href="<%= basePath %>tian/showHelp/Gallery_files/style.css" rel="stylesheet" type="text/css" media="all">
    <link href="<%= basePath %>tian/showHelp/Gallery_files/animate.css" rel="stylesheet" type="text/css" media="all">

    <title>Gallery</title>

</head>

<body>
<div class="header head-top" >
    <div class="container-fluid">
        <div class="col-sm-12">
            <div class="col-xs-1" >
            </div>
            <div class="header-main">
                <div class="col-xs-8">
                    <div class="logo wow bounceInLeft animated" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: bounceInLeft;">
                        <a href="#"><img src="<%= basePath %>tian/showHelp/Gallery_files/logo3.png" alt="" ></a>
                    </div>
                    <div class="top-navg">
                        <span class="menu"> <img src="<%= basePath %>tian/showHelp/Gallery_files/icon.png" alt=" "></span>
                        <ul class="res">
                            <a href="<%=basePath%>tian/index/index.jsp"><span class="res1">首页</span></a>
                            <a href="<%=basePath%>goods/findAllGoods.action"><span class="res2">二手</span></a>
                            <a class="active" href="<%=basePath%>help/selectAllHelps.action"><span class="res3">跑腿</span></a>
                            <a  href="<%=basePath%>forum/list.action"><span class="res1">哈密社区</span></a>
                            <a href="#"><span class="res2">哈密认证</span></a>
                            <a href="#"><span class="res3">联系我们</span></a>
                        </ul>
                        <!-- script-for-menu -->
                        <script>
                            $( "span.menu" ).click(function() {
                                $( "ul.res" ).slideToggle( 300, function() {
                                    // Animation complete.
                                });
                            });
                        </script>
                    </div>
                </div>
                <div class="col-xs-2 banner-right">
                    <div id="person-pic" >

                        <div id="head-portrait" class="col-xs-5" >
                            <a href="#">
                                <c:if test="${userInfo.photo == null}">
                                    <img src="<%= basePath %>profilePicture/0.jpg"></img>
                                </c:if>
                                <c:if test="${userInfo != null}">
                                    <img src="<%= basePath %>profilePicture/${userInfo.photo}"></img>
                                </c:if>
                            </a>
                        </div>

                        <div class="col-xs-7">
                            <div id="message">
                                <a href="#">
                                    <img src="<%= basePath %>tian/showHelp/Gallery_files/通知3.png"></img>
                                </a>
                            </div>
                            <div id="exit">
                                <a href="#">
                                    <img src="<%= basePath %>tian/showHelp/Gallery_files/登出.png" ></img>
                                </a>
                            </div>
                        </div>
                    </div>

                </div>

                <script>
                    $("#exit img").mousedown(
                        function(){
                            $(this).prop("src","<%= basePath %>tian/showHelp/Gallery_files/登出点击时.png");
                        }
                    );
                    $("#exit img").mouseup(
                        function(){
                            $(this).prop("src","<%= basePath %>tian/showHelp/Gallery_files/登出.png");
                        }
                    );

                    $("#message img").mousedown(
                        function(){
                            $(this).prop("src","<%= basePath %>tian/showHelp/Gallery_files/通知点击时.png");
                        }
                    );

                    $("#message img").mouseup(
                        function(){
                            $(this).prop("src","<%= basePath %>tian/showHelp/Gallery_files/通知3.png");
                        }
                    );
                </script>

            </div>
        </div>
        <div style="clear: both"></div>
    </div>
    </div>

</body>
</html>
