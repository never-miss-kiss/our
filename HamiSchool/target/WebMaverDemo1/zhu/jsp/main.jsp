<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="OrcasThemes">
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<title>Home</title>
	<link rel="stylesheet" href="<%= basePath %>zhu/bootstrap/css/bootstrap.min.css" />
	<script type="text/javascript" src="<%= basePath %>zhu/js/jquery-1.12.1.min.js"></script>
	<script type="text/javascript" src="<%= basePath %>zhu/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%= basePath %>zhu/js/lity.js"></script>
<%--<link href="<%= basePath %>Gallery_files/bootstrap.css" rel="stylesheet" type="text/css" media="all">--%>
<script src="<%= basePath %>zhu/Gallery_files/bootstrap-3.3.7/dist/js/jquery.min.js"></script>
<link href="<%= basePath %>zhu/Gallery_files/style.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" type="text/css" href="<%= basePath %>zhu/Gallery_files/style_common.css">
<link href="<%= basePath %>zhu/Gallery_files/css" rel="stylesheet" type="text/css">
<link href="<%= basePath %>zhu/Gallery_files/css(1)" rel="stylesheet" type="text/css">
<link href="<%= basePath %>zhu/Gallery_files/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="<%= basePath %>zhu/Gallery_files/wow.min.js.下载"></script>
<script src="<%= basePath %>zhu/Gallery_files/bootstrap-3.3.7/dist/js/bootstrap.js"></script>

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
	<style>

		#top{background-color:#a6e1ec}
		.dark-bg{border-color: #8a6d3b;}
		.search-block{position: absolute;top:82px;left: 17%}
		.Carousel{position: absolute;top:115px;width:900px;height: 250px;left:20.5%}
		ol li{float: left;}
		.circle{position: absolute;top:220px;left:50%}
		.Previous{position: absolute;top:130px;}
		.Next{position: absolute;top:130px;left:98%}
		.post{position: absolute;top:200px;left:88%;width: 150px;height: 60px}
		.school{position: absolute;top:420px;left:20.5%;width: 900px;height: 140px;
		background-color:whitesmoke}
		.part1{float: left;padding-top:15px;padding-left: 16px;padding-right: 10px;padding-bottom: 10px}
		.part2{position: absolute;top:540px;left:45%;}
		.part2 a{color: black}
		.part2 a:hover{color: red;}
		.row .school a{color:#7B7A7A}
		.row .school a:hover{color: cyan}
		.allgoods{position: absolute;top:620px;left:20.5%;}
		.pictures{position: absolute;top:690px;width: 900px;height: 660px;left:20.5%;background-color:#a6e1ec}
		.picture1{position: relative;width: 200px;height: 150px;top:-35px;margin-top:-135px;margin-left: -130px;margin-right:150px;margin-bottom:285px;float: left;}
		.picture2{position: relative;width: 200px;height: 150px;top:-35px;margin-top:-135px;margin-left: -170px;margin-right:170px;margin-bottom:285px;float: left;}

		.tab{position: absolute;top:1400px;width: 900px;height: 500px;left:20.5%;background-color: #dcdcdc;}

		.catorys{margin-top:30px;width:15%;height:600px;margin-left:18px;overflow-y: scroll}
		#person{position: absolute;top:-10px;left: 70%;}
		#message{position:relative;top:-50px;left:50px;}
		#exit{position:relative;top:-91px;left:100px;}

	</style>
</head>
<body>
<!-- HOME 1 -->

<div id="home1" class="container-fluid standard-bg ">
 <!-- HEADER -->

<div class="header head-top " id="top">
		<div class="container-fluid">
			<div class="header-main " >
				<div class="logo wow bounceInLeft animated" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: bounceInLeft;">
					<a href="#"><img src="<%= basePath %>zhu/Gallery_files/logo.png" alt=""></a>
				</div>
				<div class="top-navg">
					<span class="menu"> <img src="<%= basePath %>zhu/Gallery_files/icon.png" alt=" "></span>
					<ul class="res">
						<a href="main.jsp"><span class="res1">首页</span></a>
						<a href="#"><span class="res2">二手</span></a>
						<a href="#"><span class="res3">跑腿</span></a>
						<a class="active" href="#"><span class="res1">哈密社区</span></a>
						<a href="hamirenz.jsp"><span class="res2">哈密认证</span></a>
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
					<div class="search-block">
						<form>
							<input type="search" placeholder="Search">
						</form>
					</div>
				</div>
			</div>
		</div>
	<div class="col-xs-2 " id="person">
		<div id="person-pic" >
			<div id="head-portrait" class="col-xs-5">
				<a href="#">
					<img src="<%= basePath %>zhu/Gallery_files/头像.jpg">
				</a>
			</div>

			<div class="col-xs-7" >
				<div id="message">
					<a href="#">
						<img src="<%= basePath %>zhu/Gallery_files/通知3.png"></img>
					</a>
				</div>

				<div id="exit">
					<a href="#">
						<img src="<%= basePath %>zhu/Gallery_files/登出.png" ></img>
					</a>
				</div>
			</div>
		</div>
	</div>
	<script>

        $("#exit img").mousedown(
            function(){
                $(this).prop("src","Gallery_files/登出点击时.png");
            }
        );

        $("#exit img").mouseup(
            function(){
                $(this).prop("src","Gallery_files/登出.png");
            }
        );

        $("#message img").mousedown(
            function(){
                $(this).prop("src","Gallery_files/通知点击时.png");
            }
        );

        $("#message img").mouseup(
            function(){
                $(this).prop("src","Gallery_files/通知3.png");
            }
        );
	</script>
</div>
 <!-- CORE -->
	<div class="catorys">
		<div class=" hidden-sm hidden-xs">
			<aside class="dark-bg">
				<article>
					<h2 class="icon">商品类别</h2>
					<ul class="sidebar-links ">
						<li class="fa fa-chevron-right "  ><a href="#">所有分类</a></li>
						<li class="fa fa-chevron-right "><a href="#">代步工具</a></li>
						<li class="fa fa-chevron-right "><a href="#">手机</a></li>
						<li class="fa fa-chevron-right "><a href="#">电脑</a></li>
						<li class="fa fa-chevron-right "><a href="#">数码</a></li>
						<li class="fa fa-chevron-right "><a href="#">电器</a></li>
						<li class="fa fa-chevron-right "><a href="#">衣谢伞帽</a></li>
						<li class="fa fa-chevron-right "><a href="#">电脑</a></li>
						<li class="fa fa-chevron-right "><a href="#">数码</a></li>
						<li class="fa fa-chevron-right"><a href="#">电器</a></li>
						<li class="fa fa-chevron-right "><a href="#">衣谢伞帽</a></li>
						<li class="fa fa-chevron-right "><a href="#">电脑</a></li>
						<li class="fa fa-chevron-right "><a href="#">数码</a></li>
						<li class="fa fa-chevron-right"><a href="#">电器</a></li>
						<li class="fa fa-chevron-right "><a href="#">衣谢伞帽</a></li>
					</ul>
				</article>
			</aside>
		</div>
	</div>
<div class="row">
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
				 <img src="<%= basePath %>zhu/img/thumbs/thumb-review2.jpg" style="width:900px;height: 250px" alt="...">
			 </div>
			 <div class="item">
				 <img src="<%= basePath %>zhu/img/thumbs/thumb-review3.jpg" style="width:900px;height: 250px" alt="...">
			 </div>
			 <div class="item">
				 <img src="<%= basePath %>zhu/img/thumbs/thumb-review4.jpg" style="width:900px;height: 250px" alt="...">
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
			<a href="#" class="btn btn-default " role="button" style="background-color: #aac4bc" >郑州航空工业管理学院</a>
		</div>
		 <div class="part1">
			 <a href="#" class="btn btn-default " role="button" style="background-color: #aac4bc" >郑州航空工业管理学院</a>
		 </div>
		 <div class="part1">
			 <a href="#" class="btn btn-default " role="button" style="background-color: #aac4bc" >郑州航空工业管理学院</a>
		 </div>
		 <div class="part1">
			 <a href="#" class="btn btn-default " role="button" style="background-color: #aac4bc" >郑州航空工业管理学院</a>
		 </div>
		 <div class="part1">
			 <a href="#" class="btn btn-default " role="button" style="background-color: #aac4bc" >郑州航空工业管理学院</a>
		 </div>
		 <div class="part1">
			 <a href="#" class="btn btn-default " role="button" style="background-color: #aac4bc" >Primary link</a>
		 </div>
		 <div class="part1">
			 <a href="#" class="btn btn-default " role="button" style="background-color: #aac4bc" >Primary link</a>
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
			 <form name="search-submit" method="post" action="post.jsp" id="subscribe-submit1">
				 <fieldset class="search-fieldset">
					 <button class="subscribe-btn" type="submit" title="Subscribe">发布二手</button>
				 </fieldset>
			 </form>
		 </div>
	 </div>
	 </div>
	 <div class="allgoods">
	 <h2 class="icon" style="color:#2aabd2"><i class="fa fa-shopping-cart" aria-hidden="true" style="color: red"></i>全部商品</h2>
	 </div>
	 <div class="pictures">
		 <div class="picture1">
			 <div class="post post-medium" >
				 <div class="thumbr">
					 <a class="post-thumb" href="#">
						 <img class="img-responsive" src="<%= basePath %>zhu/img/thumbs/thumb-s.jpg" alt="#">
					 </a>
				 </div>
				 <div class="infor">
					 <h4>
						 <a class="title" href="#">耳机</a>
					 </h4>
					 <span class="posts-txt" title="Posts from Channel"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i>20</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 <span class="posts-txt" title="Posts from Channel"><i class="fa fa-cny" aria-hidden="true"></i>12.5</span>
					 <h5>
						 <a class="title" href="#">中南大学</a>
					 </h5>
				 </div>
			 </div>
		 </div>
		 <div class="picture1">
			 <div class="post post-medium" >
				 <div class="thumbr">
					 <a class="post-thumb" href="#">
						 <img class="img-responsive" src="<%= basePath %>zhu/img/thumbs/thumb-s.jpg" alt="#">
					 </a>
				 </div>
				 <div class="infor">
					 <h4>
						 <a class="title" href="#">耳机</a>
					 </h4>
					 <span class="posts-txt" title="Posts from Channel"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i>20</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 <span class="posts-txt" title="Posts from Channel"><i class="fa fa-cny" aria-hidden="true"></i>12.5</span>
					 <h5>
						 <a class="title" href="#">中南大学</a>
					 </h5>
				 </div>
			 </div>
		 </div>
		 <div class="picture1">
			 <div class="post post-medium" >
				 <div class="thumbr">
					 <a class="post-thumb" href="#">
						 <img class="img-responsive" src="<%= basePath %>zhu/img/thumbs/thumb-s.jpg" alt="#">
					 </a>
				 </div>
				 <div class="infor">
					 <h4>
						 <a class="title" href="#">耳机</a>
					 </h4>
					 <span class="posts-txt" title="Posts from Channel"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i>20</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 <span class="posts-txt" title="Posts from Channel"><i class="fa fa-cny" aria-hidden="true"></i>12.5</span>
					 <h5>
						 <a class="title" href="#">中南大学</a>
					 </h5>
				 </div>
			 </div>
		 </div>
		<div class="picture1">
		 <div class="post post-medium" >
				 <div class="thumbr">
					 <a class="post-thumb" href="#">
						 <img class="img-responsive" src="<%= basePath %>zhu/img/thumbs/thumb-s.jpg" alt="#">
					 </a>
				 </div>
				 <div class="infor">
					 <h4>
						 <a class="title" href="#">耳机</a>
					 </h4>
					 <span class="posts-txt" title="Posts from Channel"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i>20</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 <span class="posts-txt" title="Posts from Channel"><i class="fa fa-cny" aria-hidden="true"></i>12.5</span>
					 <h5>
						 <a class="title" href="#">中南大学</a>
					 </h5>
				 </div>
		 </div>
		</div>
		 <div class="picture1">
			 <div class="post post-medium" >
				 <div class="thumbr">
					 <a class="post-thumb" href="#">
						 <img class="img-responsive" src="<%= basePath %>zhu/img/thumbs/thumb-s.jpg" alt="#">
					 </a>
				 </div>
				 <div class="infor">
					 <h4>
						 <a class="title" href="#">耳机</a>
					 </h4>
					 <span class="posts-txt" title="Posts from Channel"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i>20</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 <span class="posts-txt" title="Posts from Channel"><i class="fa fa-cny" aria-hidden="true"></i>12.5</span>
					 <h5>
						 <a class="title" href="#">中南大学</a>
					 </h5>
				 </div>
			 </div>
		 </div>
		 <div class="picture1">
			 <div class="post post-medium" >
				 <div class="thumbr">
					 <a class="post-thumb" href="#">
						 <img class="img-responsive" src="<%= basePath %>zhu/img/thumbs/thumb-s.jpg" alt="#">
					 </a>
				 </div>
				 <div class="infor">
					 <h4>
						 <a class="title" href="#">耳机</a>
					 </h4>
					 <span class="posts-txt" title="Posts from Channel"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i>20</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 <span class="posts-txt" title="Posts from Channel"><i class="fa fa-cny" aria-hidden="true"></i>12.5</span>
					 <h5>
						 <a class="title" href="#">中南大学</a>
					 </h5>
				 </div>
			 </div>
		 </div>
		 <div class="picture1">
		 <div class="post post-medium" >
				 <div class="thumbr">
					 <a class="post-thumb" href="#">
						 <img class="img-responsive" src="<%= basePath %>zhu/img/thumbs/thumb-s.jpg" alt="#">
					 </a>
				 </div>
				 <div class="infor">
					 <h4>
						 <a class="title" href="#">耳机</a>
					 </h4>
					 <span class="posts-txt" title="Posts from Channel"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i>20</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 <span class="posts-txt" title="Posts from Channel"><i class="fa fa-cny" aria-hidden="true"></i>12.5</span>
					 <h5>
						 <a class="title" href="#">中南大学</a>
					 </h5>
				 </div>
		 </div>
	 	</div>
		 <div class="picture1">
		 <div class="post post-medium" >
				 <div class="thumbr">
					 <a class="post-thumb" href="#">
						 <img class="img-responsive" src="<%= basePath %>zhu/img/thumbs/thumb-s.jpg" alt="#">
					 </a>
				 </div>
				 <div class="infor">
					 <h4>
						 <a class="title" href="#">耳机</a>
					 </h4>
					 <span class="posts-txt" title="Posts from Channel"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i>20</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 <span class="posts-txt" title="Posts from Channel"><i class="fa fa-cny" aria-hidden="true"></i>12.5</span>
					 <h5>
						 <a class="title" href="#">中南大学</a>
					 </h5>
				 </div>
			 </div>
		 </div>
	 </div>
</div>
	<div class="part2">
		<a href="#" >随机<sapn class="glyphicon glyphicon-resize-vertical"></sapn></a>
		<a href="#" >时间<sapn class="glyphicon glyphicon-resize-vertical"></sapn></a>
		<a href="#" >价格<sapn class="glyphicon glyphicon-resize-vertical"></sapn></a>
		<a href="#" >热度<sapn class="glyphicon glyphicon-resize-vertical"></sapn></a>
	</div>
<!-- TABS -->
<div class="tab">
	<div class="head-section" id="tag">
		<ul class="nav nav-tabs text-left">
			<li >
				<a data-toggle="tab" href="#" >
					<h2 class=" title"  style="color:#2aabd2">最近浏览</h2>
				</a>
			</li>
			<li>
				<a data-toggle="tab" href="#">
					<h2 class=" title" style="color:#2aabd2">最热点击</h2>
				</a>
			</li>
			<li>
				<a data-toggle="tab" href="#">
					<h2 class=" title" style="color:#2aabd2">大众所爱</h2>
				</a>
			</li>
		</ul>
		<div id="channels-block" class="container-fluid " style="background-color:#a6e1ec">
			<div class="container-fluid " >
				<div class="col-md-12">
					<!-- CHANNELS -->
					<section id="channels">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-control-box">
								<a class="left carousel-control" href="#myCarousel"  role="button" data-slide="prev"><i class="fa fa-chevron-left" aria-hidden="true"></i></a>
								<a class="right carousel-control" href="#myCarousel"  role="button" data-slide="next"><i class="fa fa-chevron-right" aria-hidden="true"></i></a>
							</div>
							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<div class="row auto-clear">
										<div class="picture2">
											<div class="post post-medium" >
												<div class="thumbr">
													<a class="post-thumb" href="#">
														<img class="img-responsive" src="<%= basePath %>zhu/img/thumbs/thumb-s.jpg" alt="#">
													</a>
												</div>
												<div class="infor">
													<h4>
														<a class="title" href="#">耳机</a>
													</h4>
													<span class="posts-txt" title="Posts from Channel"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i>20</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<span class="posts-txt" title="Posts from Channel"><i class="fa fa-cny" aria-hidden="true"></i>12.5</span>
													<h5>
														<a class="title" href="#">中南大学</a>
													</h5>
												</div>
											</div>
										</div>
										<div class="picture2">
											<div class="post post-medium" >
												<div class="thumbr">
													<a class="post-thumb" href="#">
														<img class="img-responsive" src="<%= basePath %>zhu/img/thumbs/thumb-s.jpg" alt="#">
													</a>
												</div>
												<div class="infor">
													<h4>
														<a class="title" href="#">耳机</a>
													</h4>
													<span class="posts-txt" title="Posts from Channel"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i>20</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<span class="posts-txt" title="Posts from Channel"><i class="fa fa-cny" aria-hidden="true"></i>12.5</span>
													<h5>
														<a class="title" href="#">中南大学</a>
													</h5>
												</div>
											</div>
										</div>
										<div class="picture2">
											<div class="post post-medium" >
												<div class="thumbr">
													<a class="post-thumb" href="#">
														<img class="img-responsive" src="<%= basePath %>zhu/img/thumbs/thumb-s.jpg" alt="#">
													</a>
												</div>
												<div class="infor">
													<h4>
														<a class="title" href="#">耳机</a>
													</h4>
													<span class="posts-txt" title="Posts from Channel"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i>20</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<span class="posts-txt" title="Posts from Channel"><i class="fa fa-cny" aria-hidden="true"></i>12.5</span>
													<h5>
														<a class="title" href="#">中南大学</a>
													</h5>
												</div>
											</div>
										</div>
										<div class="picture2">
											<div class="post post-medium" >
												<div class="thumbr">
													<a class="post-thumb" href="#">
														<img class="img-responsive" src="<%= basePath %>zhu/img/thumbs/thumb-s.jpg" alt="#">
													</a>
												</div>
												<div class="infor">
													<h4>
														<a class="title" href="#">耳机</a>
													</h4>
													<span class="posts-txt" title="Posts from Channel"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i>20</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<span class="posts-txt" title="Posts from Channel"><i class="fa fa-cny" aria-hidden="true"></i>12.5</span>
													<h5>
														<a class="title" href="#">中南大学</a>
													</h5>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	</div>
</div>


	<script>
        $(".nav .dropdown").hover(function() {
            $(this).find(".dropdown-toggle").dropdown("toggle");
        });
	</script>
</body>
</html>
