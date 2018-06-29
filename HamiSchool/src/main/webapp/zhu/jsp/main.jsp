﻿<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">
<head>
<meta name="toTop" content="true">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="OrcasThemes">
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<title>二手商品</title>
	<link rel="stylesheet" href="<%= basePath %>zhu/bootstrap/css/bootstrap.min.css" />
	<script type="text/javascript" src="<%= basePath %>zhu/js/jquery-1.12.1.min.js"></script>
	<script type="text/javascript" src="<%= basePath %>zhu/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%= basePath %>zhu/js/lity.js"></script>
	<script type="text/javascript" src="<%= basePath %>zhu/js/jquery-1.11.2.js"></script>
	<%--<link href="<%= basePath %>Gallery_files/bootstrap.css" rel="stylesheet" type="text/css" media="all">--%>

	<!--Gallery栏目框-->
	<link href="<%= basePath %>bootstrap/css/bootstrap.css" rel="stylesheet">
	<script src="<%= basePath %>bootstrap/js/jquery.min.js"></script>
	<script src="<%= basePath %>bootstrap/js/bootstrap.js"></script>
	<link href="<%= basePath %>tian/showHelp/Gallery_files/style.css" rel="stylesheet" type="text/css" media="all">
	<link href="<%= basePath %>tian/showHelp/Gallery_files/animate.css" rel="stylesheet" type="text/css" media="all">
	<!--Gallery栏目框end-->
<%--<script src="<%= basePath %>zhu/Gallery_files/bootstrap-3.3.7/dist/js/jquery.min.js"></script>--%>
<%--<link href="<%= basePath %>zhu/Gallery_files/style.css" rel="stylesheet" type="text/css" media="all">--%>
<%--<link rel="stylesheet" type="text/css" href="<%= basePath %>zhu/Gallery_files/style_common.css">--%>
<%--<link href="<%= basePath %>zhu/Gallery_files/css" rel="stylesheet" type="text/css">--%>
<%--<link href="<%= basePath %>zhu/Gallery_files/css(1)" rel="stylesheet" type="text/css">--%>
<%--<link href="<%= basePath %>zhu/Gallery_files/animate.css" rel="stylesheet" type="text/css" media="all">--%>
<%--<script src="<%= basePath %>zhu/Gallery_files/wow.min.js.下载"></script>--%>
<%--<script src="<%= basePath%>zhu/Gallery_files/bootstrap-3.3.7/dist/js/bootstrap.js"></script>--%>

	<!-- Bootstrap core CSS -->
<link href="<%= basePath %>zhu/bootstrap/css/bootstrap.css" rel="stylesheet">
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

	<link rel="stylesheet" href="<%= basePath %>zhu/assets/css/normalize.css" />
	<link rel="stylesheet" href="<%= basePath %>zhu/assets/css/main.css" />
	<script src="<%= basePath %>zhu/assets/js/html5shiv.min.js"></script>
	<style>

		body{background-color: #E3EEEC;}
		a{color: #0f0f0f}
		#top{background-color:#a6e1ec}
		.dark-bg{border-color: #8a6d3b;}
		.search-block{position: absolute;top:82px;left: 17%}
		.Carousel{position: absolute;width:900px;height: 250px;left:20.5%}
		ol li{float: left;}
		.circle{position: absolute;top:220px;left:50%}
		.Previous{position: absolute;top:130px;}
		.Next{position: absolute;top:130px;left:98%}
		.post{position: absolute;top:223px;left:88%;width: 150px;height: 60px;}
		.school{position: absolute;top:500px;left:20.5%;width: 900px;height: 140px;
			background-color:whitesmoke}

		.part1{float: left;padding-top:15px;padding-left: 16px;padding-right: 10px;padding-bottom: 10px}
		.part2{position: absolute;top:610px;left:45%;}
		.part2 a{color: black}
		.part2 a:hover{color: red;}
		.row .school a{color:#7B7A7A}
		.row .school a:hover{color: cyan}
		.allgoods{position: absolute;top:680px;left:20.5%; }
		.pictures{position: absolute;top:750px;width: 900px;height: 1300px;left:20.5%;background-color:whitesmoke}
		.picture1{position: relative;width: 200px;height: 150px;top:-35px;margin-top:-135px;margin-left: -130px;margin-right:150px;margin-bottom:285px;float: left;}
		.picture2{position: relative;width: 200px;height: 150px;top:-35px;margin-top:-135px;margin-left: -170px;margin-right:170px;margin-bottom:285px;float: left;}

		.tab{position: absolute;top:1400px;width: 900px;height: 500px;left:20.5%;background-color: #dcdcdc;}

		.catorys{margin-top:30px;width:15%;height:600px;margin-left:18px;overflow-y: scroll}
		#person{position: absolute;top:-10px;left: 70%;}
		/*#message{position:relative;top:-50px;left:50px;}*/
		/*#exit{position:relative;top:-91px;left:100px;}*/
		#search{position: absolute;margin-top:1820px;margin-left:850px; }
	</style>
	<script>
        function getPage(curPage){
            document.getElementById("curPage").value = curPage;
            $.ajax({
				url:"<%= basePath %>goods/findAllGoods.action",
				data:{"curPage":curPage,"price":${queryPojo.price}},
				dataType:"json",
				type:"post",
				success:function (data) {
					alert("111")
                }
			})
        }
	</script>
</head>
<body>
<!-- HOME 1 -->
<div class="header head-top" id="sa">
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
							<a class="active" href="<%=basePath%>goods/findAllGoods.action?#sa"><span class="res2">二手</span></a>
							<a href="<%=basePath%>help/selectAllHelps.action"><span class="res3">跑腿</span></a>
							<a  href="<%=basePath%>forum/list.action"><span class="res1">社区</span></a>
							<a href="<%=basePath%>zhu/jsp/hamirenz.jsp"><span class="res2">认证</span></a>
							<a href="<%=basePath%>tian/index/index.jsp"><span class="res3">Callus</span></a>
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
							<a href="<%= basePath %>home/personalCenter.action">
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
									<%--<img src="<%= basePath %>tian/showHelp/Gallery_files/通知3.png"></img>--%>
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
<div id="home1" class="container-fluid standard-bg ">
	<!-- HEADER -->

	<div class="header head-top " id="top">


		<!-- sidebar -->
		<div class="navbar main" id="navbar-main">
			<div class="load-this">
				<div id="sidebar-main-trigger" class="icon float-left">
					<img src="<%= basePath %>zhu/assets/imgs/icon-menu-24px-x2.png" width="24px" alt="Menu Icon" />
				</div>
			</div><!--a ajax helper-->
		</div><!--.navbar.main-->
		<div class="sidebar main left" id="sidebar-main">
			<div class="wrapper">
				<nav>
					<ul>
					<li class="title">所有分类</li>
					<li><a href="<%= basePath %>goods/findAllGoods.action">全部商品</a></li>
					<li><a href="<%= basePath %>goods/findAllGoods.action?goodsCategoryId=2">代步工具</a></li>
					<li><a href="<%= basePath %>goods/findAllGoods.action?goodsCategoryId=3">手机</a></li>
					<li><a href="<%= basePath %>goods/findAllGoods.action?goodsCategoryId=4">电脑</a></li>
					<li><a href="<%= basePath %>goods/findAllGoods.action?goodsCategoryId=5">数码</a></li>
					<li><a href="<%= basePath %>goods/findAllGoods.action?goodsCategoryId=6">电器</a></li>
					<li><a href="<%= basePath %>goods/findAllGoods.action?goodsCategoryId=7">衣鞋伞帽</a></li>
					<li><a href="<%= basePath %>goods/findAllGoods.action?goodsCategoryId=8">书籍教材</a></li>
					<li><a href="<%= basePath %>goods/findAllGoods.action?goodsCategoryId=9">体育健身</a></li>
					<li><a href="<%= basePath %>goods/findAllGoods.action?goodsCategoryId=10">乐器</a></li>
					<li><a href="<%= basePath %>goods/findAllGoods.action?goodsCategoryId=11">自行设计</a></li>
					<li><a href="<%= basePath %>goods/findAllGoods.action?goodsCategoryId=12">宠物</a></li>
					<li><a href="<%= basePath %>goods/findAllGoods.action?goodsCategoryId=13">文具</a></li>
				</ul>
				</nav>
			</div>
		</div><!--#sidebar-main-->
		<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
		<script src="http://www.jq22.com/jquery/jquery-ui-1.11.0.js">
		</script><script src="http://cdn.bootcss.com/jqueryui/1.11.0/jquery-ui.min.js"></script>
		<script src="<%= basePath %>zhu/dist/jquery.simpler-sidebar.min.js"></script>
		<script src="<%= basePath %>zhu/assets/js/sidebar/main-sidebar-left-top.js"></script>
		<div class="row" style="background-color: #E3EEEC">
			<!-- SIDEBAR -->
			<!-- HOME MAIN POSTS -->
			<div class="Carousel">
				<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
					<div class="circle">
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>
					</div>
					<!-- Wrapper for slides -->
					<div class="carousel-inner " role="listbox">
						<div class="item active">
							<img src="<%= basePath %>zhu/img/lunbo/pic1.jpg" style="width:900px;height: 250px" alt="...">
						</div>
						<div class="item">
							<img src="<%= basePath %>zhu/img/lunbo/class.jpg" style="width:900px;height: 250px" alt="...">
						</div>
						<div class="item">
							<img src="<%= basePath %>zhu/img/lunbo/2018.jpg" style="width:900px;height: 250px" alt="...">
						</div>
					</div>

					<!-- Controls -->
					<div class="Previous">
						<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
							<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a>
					</div>
					<div class="Next">
						<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
			<div class="school">
				<div class="part1">
					<a href="<%= basePath %>goods/findAllGoods.action?schoolId=1460" class="btn btn-default " role="button" style="background-color: #aac4bc" >天津大学</a>
				</div>
				<div class="part1">
					<a href="<%= basePath %>goods/findAllGoods.action?schoolId=1515" class="btn btn-default " role="button" style="background-color: #aac4bc" >河北大学</a>
				</div>
				<div class="part1">
					<a href="<%= basePath %>goods/findAllGoods.action?schoolId=1547" class="btn btn-default " role="button" style="background-color: #aac4bc" >河北经贸大学</a>
				</div>
				<div class="part1">
					<a href="<%= basePath %>goods/findAllGoods.action?schoolId=1636" class="btn btn-default " role="button" style="background-color: #aac4bc" >山西大学</a>
				</div>
				<div class="part1">
					<a href="<%= basePath %>goods/findAllGoods.action?schoolId=1638" class="btn btn-default " role="button" style="background-color: #aac4bc" >中北大学</a>
				</div>
				<div class="part1">
					<a href="<%= basePath %>goods/findAllGoods.action?schoolId=1637" class="btn btn-default " role="button" style="background-color: #aac4bc" >太原科技大学</a>
				</div>
				<div class="part1">
					<a href="<%= basePath %>goods/findAllGoods.action?schoolId=1769" class="btn btn-default " role="button" style="background-color: #aac4bc" >大连理工大学</a>
				</div>
				<div class="part1">
					<a href="<%= basePath %>goods/findAllGoods.action?schoolId=1885" class="btn btn-default " role="button" style="background-color: #aac4bc" >东北电力大学</a>
				</div>
				<div class="part1">
					<button type="button" class="btn btn-link">更多学校</button>
				</div>
			</div>
			<div class="post">
				<div class="col-lg-3 hidden-md col-sm-12 text-center top-sidebar">
					<!-- SUBSCRIBE BOX -->
					<div class="subscribe-box">
						<!-- SUBSCRIBE FIELD -->
						<form name="search-submit" method="post" action="<%= basePath %>zhu/jsp/post.jsp" id="subscribe-submit1">
							<fieldset class="search-fieldset">
								<button class="subscribe-btn" type="submit" title="Subscribe">发布二手</button>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
			<div class="allgoods" id="allgoods">
				<h2 class="icon" style="color:#2aabd2"><i class="fa fa-shopping-cart" aria-hidden="true" style="color: red"></i>全部商品</h2>
			</div>
			<div class="pictures">
				<input type="hidden" name="curPage" id="curPage"/>
				<C:forEach items="${pageInfo.list}" var="goods">
					<div class="picture1">
						<div class="post post-medium" >
							<div class="thumbr">
								<a class="post-thumb" href="<%= basePath %>goods/findGoodsById.action?goodsId=${goods.goodsId}">
									<img class="img-responsive" style="width: 150px;height:150px;" src="<%= basePath %>zhu/img/goodsPic/${goods.picture}" alt="#">
								</a>
							</div>
							<div class="infor">
								<h4>
									<a class="title" >${goods.name}</a>
								</h4>
								<span class="posts-txt" title="Posts from Channel" style="color:red;"><i class="fa fa-hand-pointer-o" aria-hidden="true"  style="color:orange;"></i>${goods.clickCount}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<span class="posts-txt" title="Posts from Channel" style="color:red;"><i class="fa fa-cny" aria-hidden="true"  style="color:orange;"></i>${goods.price}</span>
								<h5>
									<a class="title" >
										<C:forEach items="${schoolName}" var="name">
											<C:if test="${name.key eq goods.goodsId}">
												<C:out value="${name.value}"></C:out></C:if>
										</C:forEach>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;未认证
									</a>
								</h5>
							</div>
						</div>
					</div>
				</C:forEach>
			</div>
			<div  id="search">
				共 <b>${pageInfo.total}</b> 条

				<a id="begin" href="<%= basePath %>goods/findAllGoods.action?price=${queryPojo.price}&curPage=1&goodsCategoryId=${queryPojo.goodsCategoryId}&releaseTime=${queryPojo.releaseTime}&clickCount=${queryPojo.clickCount}&schoolId=${queryPojo.schoolId}" class='first' >首页</a>
				<c:if test="${!pageInfo.isFirstPage}">
					<a id="previous" href="<%= basePath %>goods/findAllGoods.action?price=${queryPojo.price}&curPage=${pageInfo.pageNum-1}&goodsCategoryId=${queryPojo.goodsCategoryId}&releaseTime=${queryPojo.releaseTime}&clickCount=${queryPojo.clickCount}&schoolId=${queryPojo.schoolId}" class='pre'>上一页</a>
				</c:if>

				当前第<span>${pageInfo.pageNum}</span>页

				<c:if test="${!pageInfo.isLastPage}">
					<a id="next" href="<%= basePath %>goods/findAllGoods.action?price=${queryPojo.price}&curPage=${pageInfo.pageNum+1}&goodsCategoryId=${queryPojo.goodsCategoryId}&releaseTime=${queryPojo.releaseTime}&clickCount=${queryPojo.clickCount}&schoolId=${queryPojo.schoolId}" class='next'>下一页</a>
				</c:if>
				<a id="end" href="<%= basePath %>goods/findAllGoods.action?price=${queryPojo.price}&curPage=${pageInfo.pages}&goodsCategoryId=${queryPojo.goodsCategoryId}&releaseTime=${queryPojo.releaseTime}&clickCount=${queryPojo.clickCount}&schoolId=${queryPojo.schoolId}" class='last'>末页</a>
			</div>
			<script>
                document.getElementById("allgoods").scrollIntoView();
//                document.getElementById("begin").scrollIntoView();
//                document.getElementById("end").scrollIntoView();
//                document.getElementById("next").scrollIntoView();
//                document.getElementById("previous").scrollIntoView();
			</script>

		</div>

		<div class="part2">
			<a href="#" >随机<sapn class="glyphicon glyphicon-resize-vertical"></sapn></a>
			<a href="<%= basePath %>goods/findAllGoods.action?releaseTime=1" >时间<sapn class="glyphicon glyphicon-resize-vertical"></sapn></a>
			<a href="<%= basePath %>goods/findAllGoods.action?price=1" >价格<sapn class="glyphicon glyphicon-resize-vertical"></sapn></a>
			<a href="<%= basePath %>goods/findAllGoods.action?clickCount=1" >热度<sapn class="glyphicon glyphicon-resize-vertical"></sapn></a>
		</div>
	</div>
</div>
	<script>
        $(".nav .dropdown").hover(function() {
            $(this).find(".dropdown-toggle").dropdown("toggle");
        });
	</script>
	<script type="text/javascript" src="<%= basePath %>zhu/js/toTop.js"></script>
</body>
</html>
