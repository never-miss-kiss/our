<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="<%=basePath%>bootstrap/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href='https://fonts.googleapis.com/css?family=Great+Vibes' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:700,700italic,800,300,300italic,400italic,400,600,600italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,700,400italic' rel='stylesheet' type='text/css'>
<!--Custom-Theme-files-->
	<link href="<%=basePath%>tian/index/css/style.css" rel='stylesheet' type='text/css' />
		<link href="<%=basePath%>tian/index/css/component.css" rel='stylesheet' type='text/css' />
		<link href="<%=basePath%>tian/index/css/nav.css" rel='stylesheet' type='text/css' />

	<script src="<%=basePath%>tian/index/js/jquery.min.js"> </script>
<!--/script-->
<script src="<%=basePath%>tian/index/js/modernizr.custom.js"> </script>
<script type="text/javascript" src="<%=basePath%>tian/index/js/move-top.js"></script>
<script type="text/javascript" src="<%=basePath%>tian/index/js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>
<!-- Add fancyBox main JS and CSS files -->
		<script src="<%=basePath%>tian/index/js/jquery.magnific-popup.js" type="text/javascript"></script>
		<link href="<%=basePath%>tian/index/css/magnific-popup.css" rel="stylesheet" type="text/css">
		<script>
			$(document).ready(function() {
				$('.popup-with-zoom-anim').magnificPopup({
					type: 'inline',
					fixedContentPos: false,
					fixedBgPos: true,
					overflowY: 'auto',
					closeBtnInside: true,
					preloader: false,
					midClick: true,
					removalDelay: 300,
					mainClass: 'my-mfp-zoom-in'
			});
		});
		</script>
		<!---->
<!--animate-->
<link href="<%=basePath%>tian/index/css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="<%=basePath%>tian/index/js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->

</head>
<body>
	<div class="container demo-2" id="home">
	<header>
	<nav class="cd-stretchy-nav">
		<a class="cd-nav-trigger" href="#0">
			<h6>Menu</h6>
			<span aria-hidden="true"></span>
		</a>

		<ul class="side_nav">
			<li><a href="<%=basePath%>sun/userLogin/loginRegister.jsp " class="active"><span>Login&Register</span></a></li>
			<li><a href="<%=basePath%>goods/findAllGoods.action"><span>二手商品</span></a></li>
			<li><a href="<%=basePath%>forum/list.action"><span>社区交流</span></a></li>
			<li><a href="<%=basePath%>help/selectAllHelps.action"><span>跑腿</span></a></li>
		</ul>

		<span aria-hidden="true" class="stretchy-nav-bg"></span>
	</nav>
</header>
	<!--#carbonads-container-->
			<div class="content">
                <div id="large-header" class="large-header">
                    <canvas id="demo-canvas"></canvas>
                    <h1 class="main-title"><a class="link link--takiri" href="#">InfoSchool<span class="wow fadeInUp animated animated" data-wow-delay=".5s">Where do you want to be?</span></a></h1>
				
                </div>

            </div>
 </div>
	<!--start-inner-content-->
		<div class="inner-content" id="services">
				<div class="wrap">
				     <h3 class="tittle wow fadeInUp animated animated" data-wow-delay=".5s">Services</h3>
				<!--start-top_section-->
				     <div class="top_section">
				       <div class="bnr-btm-left grid">
							<figure class="effect-ming wow fadeInLeft animated animated" data-wow-delay=".5s">
								<img src="<%=basePath%>tian/index/images/1.jpg" alt="img09"/>
								<figcaption>
									<h3>二<span>手</span></h3>
									<p></p>
									<a href="<%=basePath%>goods/findAllGoods.action">View more</a>
								</figcaption>			
							</figure>
						</div>
						<div class="bnr-btm-right">				
							<h3>绿色环保,身体力行</h3>
							<p>来到二手校园，走近二手商品，你将看到别样的生活场景，你将体验别样的购物情景。你需我有，你购我送，相信我，会为你的生活带来便利，更会为你创造福利！</p>
							<a href="<%=basePath%>goods/findAllGoods.action" class="buy btn-wayra">Read More</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<!--top_section2-->
					 <div class="top_section two">
					 	<div class="bnr-btm-right two">				
							<h3>力所能及，当仁不让</h3>
							<p>分为4个模块，它们分别是帮我买、帮我送、帮我取、代排队，既方便了学生生活，又让让大家在学校能做些力所能及的事儿。</p>
						<a href="<%=basePath%>help/selectAllHelps.action" class="buy btn-wayra">Read More</a>
						</div>
				       <div class="bnr-btm-left two grid">
							<figure class="effect-ming wow fadeInRight animated animated" data-wow-delay=".5s">
								<img src="<%=basePath%>tian/index/images/2.jpg" alt="img09"/>
								<figcaption>
									<h3>跑<span>腿</span></h3>
									<p></p>
									<a href="<%=basePath%>help/selectAllHelps.action">View more</a>
								</figcaption>			
							</figure>
						</div>
					
						<div class="clearfix"></div>
					</div>
					<!--//end-top_section-->

					 <div class="top_section">
						<div class="bnr-btm-left grid">
							<figure class="effect-ming wow fadeInLeft animated animated" data-wow-delay=".5s">
								<img src="<%=basePath%>tian/index/images/3.jpg" alt="img09"/>
								<figcaption>
									<h3>社<span>区</span></h3>
									<p></p>
									<a href="<%=basePath%>forum/list.action">View more</a>
								</figcaption>
							</figure>
						</div>
						<div class="bnr-btm-right">
							<h3>趣味校园，交流论坛</h3>
							<p>
								这里是哈密校园社区——趣味校园交流论坛。这里有最新的校园动态，新闻，活动。只要你想你就可以把你各种奇思妙想在这里发表出来，分享给大家，让大家与你一起在文的海洋里遨游；只要你想你就可以在这里为自己的“二货”打call，让大家更全面的了解你发布的“二货”；只要你想你就可以与大家分享你所碰到的鲜味猎奇，你的趣味生活动态。哈密校园社区——随心所想，随遇而安</p>
							<a href="<%=basePath%>forum/list.action" class="buy btn-wayra">Read More</a>
						</div>

						<div class="clearfix"></div>
					</div>

				</div>
		  </div>
		  <!-- app-->

			<div class="modal ab fade" name="myModal1" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog about" role="document">
					<div class="modal-content about">
						<div class="modal-header">
							<button type="button" class="close ab" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body about">
								<div class="about">
									  <h2 class="tittle wow fadeInUp animated animated" data-wow-delay=".5s">About</h2>
									  <div class="about-inner">
									   
									      <img src="images/about.jpg" alt="about"/>
										     <h4 class="tittle">A Fews words about us</h4>
										   <p>Lorem ipsum dolor sit amet Integer gravida,Lorem ipsum dolor sit amet Integer gravida velit,Ming sits in the corner the whole day. She's into crochet. quis dolor tristiqumsan.Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. velit quis dolor tristiqumsan.</p>
										    <p>Lorem ipsum dolor sit amet. Integer gravida velit quis dolor tristiqumsan.anteposuerit litterarum formas humanitatis per seacula amet Integer gravida velit. </p>
									  </div>
												
								</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //app-->

	<!--//end-inner-content-->
	<div class="staff" id="team">
      <div class="wrap">
	      <h3 class="tittle wow fadeInUp animated animated" data-wow-delay=".5s">Our Team</h3>
		  <div class="team">
           <div class="col-md-3 staff2">
        	<div class="view view-fifth wow fadeInLeft animated animated" data-wow-delay=".5s">
                <div class="mask1"><img src="images/t2.jpg" alt="image" class="img-responsive zoom-img" /></div>
                    <div class="mask">
                       <a class="popup-with-zoom-anim" href="#small-dialog2"> <div class="info"><i class="glyphicon glyphicon-zoom-in"></i></div></a>
		                  <div id="small-dialog2" class="mfp-hide">
							   <div class="pop_up2">
							   	  <img src="images/t2.jpg" class="img-responsive" alt=""/>
								     <h3>About</h3>
							   	   <p class="popup_desc">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </p>
							   </div>
						  </div>
					</div>
        	  <h3><a href="#">轻空掠掠语 </a></h3>
        	      <p>想通了，就心甘情愿再狗一两年吧。</p>
        			<ul class="s_social">
						<li><a href=""> <i class="fb1"> </i> </a></li>
						<li><a href=""><i class="tw1"> </i> </a></li>
					    <li><a href=""><i class="linked1"> </i> </a></li>
						<li><a href=""><i class="google1"> </i> </a></li>
		 			</ul>
          </div>
        </div>
        <div class="col-md-3 staff2">
        	<div class="view view-fifth wow fadeInUp animated animated" data-wow-delay=".5s">
                <div class="mask1"><img src="images/t1.jpg" alt="image" class="img-responsive zoom-img" /></div>
                    <div class="mask">
                       <a class="popup-with-zoom-anim" href="#small-dialog1"> <div class="info"><i class="glyphicon glyphicon-zoom-in"></i></div></a>
		                  <div id="small-dialog1" class="mfp-hide">
							   <div class="pop_up2">
							   	  <img src="images/t1.jpg" class="img-responsive" alt=""/>
								     <h3>About</h3>
							   	  <p class="popup_desc">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </p>
							   </div>
							 </div>
					</div>
        	 <h3><a href="#">45°聆傾</a></h3>
        	      <p>要啥签名啊！</p>
        			<ul class="s_social">
						<li><a href=""> <i class="fb1"> </i> </a></li>
						<li><a href=""><i class="tw1"> </i> </a></li>
					    <li><a href=""><i class="linked1"> </i> </a></li>
						<li><a href=""><i class="google1"> </i> </a></li>
		 			</ul>
          </div>
        </div>
		   <div class="col-md-3 staff2">
        	<div class="view view-fifth wow fadeInRight animated animated" data-wow-delay=".5s">
                <div class="mask1"><img src="images/t3.jpg" alt="image" class="img-responsive zoom-img" /></div>
                    <div class="mask">
                       <a class="popup-with-zoom-anim" href="#small-dialog3"> <div class="info"><i class="glyphicon glyphicon-zoom-in"></i></div></a>
		                  <div id="small-dialog3" class="mfp-hide">
							   <div class="pop_up2">
							   	  <img src="images/t3.jpg" class="img-responsive" alt=""/>
								   <h3>About</h3>
							   	   <p class="popup_desc">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </p>
							   </div>
						  </div>
					</div>
        	       <h3><a href="#">@8102</a></h3>
        	      <p>Lorem ipsum dolor sit amet Integer gravida velit quis dolor tristiqumsan.</p>
        			<ul class="s_social">
						<li><a href=""> <i class="fb1"> </i> </a></li>
						<li><a href=""><i class="tw1"> </i> </a></li>
					    <li><a href=""><i class="linked1"> </i> </a></li>
						<li><a href=""><i class="google1"> </i> </a></li>
		 			</ul>
				</div>
				</div>

        <div class="col-md-3 staff2">
        	<div class="view view-fifth wow fadeInRight animated animated" data-wow-delay=".5s">
                <div class="mask1"><img src="images/t4.jpg" alt="image" class="img-responsive zoom-img" /></div>
                    <div class="mask">
                       <a class="popup-with-zoom-anim" href="#small-dialog3"> <div class="info"><i class="glyphicon glyphicon-zoom-in"></i></div></a>
		                  <div id="small-dialog3" class="mfp-hide">
							   <div class="pop_up2">
							   	  <img src="images/t4.jpg" class="img-responsive" alt=""/>
								   <h3>About</h3>
							   	   <p class="popup_desc">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </p>
							   </div>
						  </div>
					</div>
        	       <h3><a href="#">了了</a></h3>
        	      <p>Chase。。🐳🐳 。。鱼大人</p>
        			<ul class="s_social">
						<li><a href=""> <i class="fb1"> </i> </a></li>
						<li><a href=""><i class="tw1"> </i> </a></li>
					    <li><a href=""><i class="linked1"> </i> </a></li>
						<li><a href=""><i class="google1"> </i> </a></li>
		 			</ul>
				</div>
				</div>
			<div class="clearfix"></div>
		  </div>
		</div>
	</div>
	 <!--//team-->
	 <!--/portfolio-->
	 <div class="portfolio" id="gallery">
		 <div class="wrap">
		    <h3 class="tittle wow fadeInUp animated animated" data-wow-delay=".5s">Our Gallery</h3>
		  <div class="portfolio-top">
		    <div class="col-md-4 grid slideanim wow fadeInLeft animated animated animated" data-wow-delay=".5s">
				<figure class="effect-jazz">
				<a href="#portfolioModal1"  data-toggle="modal">

					<img src="images/p1.jpg" alt="img25" class="img-responsive"/>
						<figcaption>
							<h4>Go Easy On</h4>
							<p> There are many variations of passages of Lorem Ipsum .</p>
						</figcaption>
					</a>						
				</figure>
			</div>
			<div class="col-md-4 grid slideanim wow fadeInUp animated animated animated" data-wow-delay=".5s">
				<figure class="effect-jazz">
				<a href="#portfolioModal2"  data-toggle="modal">

					<img src="images/p2.jpg" alt="img25" class="img-responsive"/>
						<figcaption>
							<h4>Go Easy On</h4>
							<p> There are many variations of passages of Lorem Ipsum .</p>							
						</figcaption>	
						</a>						
				</figure>
			</div>
			<div class="col-md-4 grid slideanim wow fadeInRight animated animated" data-wow-delay=".5s">
				<figure class="effect-jazz">
				<a href="#portfolioModal3"  data-toggle="modal">

					<img src="images/p3.jpg" alt="img25" class="img-responsive"/>
						<figcaption>
							<h4>Go Easy On</h4>
						<p> There are many variations of passages of Lorem Ipsum .</p>							
						</figcaption>
					</a>						
				</figure>
			</div>
			
			<div class="clearfix"></div>
		 </div>
		  <div class="portfolio-top">
			<div class="col-md-4 grid slideanim wow fadeInLeft animated animated animated" data-wow-delay=".5s"">
				<figure class="effect-jazz">
				<a href="#portfolioModal4"  data-toggle="modal">

					<img src="images/p4.jpg" alt="img25" class="img-responsive"/>
						<figcaption>
							<h4 class="effcet-text">Go Easy On</h4>
					<p> There are many variations of passages .</p>							
						</figcaption>	
					</a>						
				</figure>
			</div>
			<div class="col-md-4 grid grid-wi slideanim wow fadeInUp animated animated animated" data-wow-delay=".5s">
				<figure class="effect-jazz">
				<a href="#portfolioModal5"  data-toggle="modal">

					<img src="images/p5.jpg" alt="img25" class="img-responsive"/>
						<figcaption>
							<h4 class="effcet-text">Go Easy On</h4>
						<p> There are many variations of passages.</p>							
						</figcaption>
						</a>						
				</figure>
			</div>
			<div class="col-md-4 grid grid-wi slideanim wow fadeInRight animated animated" data-wow-delay=".5s"">
				<figure class="effect-jazz">
				<a href="#portfolioModal6"  data-toggle="modal">

					<img src="images/p6.jpg" alt="img25" class="img-responsive"/>
						<figcaption>
							<h4 class="effcet-text">Go Easy On</h4>
							<p> There are many variations of passages.</p>							
						</figcaption>
					</a>						
				</figure>
			</div>
			<div class="clearfix"></div>
		 </div>
	   </div>
	</div>
 <!--//portfolio-->
<!-- Portfolio Modals -->
<div class="portfolio-modal modal fade slideanim" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
		
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <h3>Go Easy On</h3>
						
                        <img src="images/p1.jpg" class="img-responsive" alt="">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
           
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
         
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <h3>Go Easy On</h3>
                      
                        <img src="images/p2.jpg" class="img-responsive" alt="">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
           
        </div>
    </div>
    </div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
           
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <h3>Go Easy On</h3>
                     
                        <img src="images/p3.jpg" class="img-responsive" alt="">
						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
            </div>
       
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
			
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <h3>Go Easy On</h3>
                       
                        <img src="images/p4.jpg" class="img-responsive" alt="">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
            
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
	<div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">

                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                         <h3>Go Easy On</h3>
                       
                        <img src="images/p5.jpg" class="img-responsive" alt="">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
           
        </div>
    </div>
</div>
<div class="portfolio-modal modal fade slideanim" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-content">
        <div class="close-modal" data-dismiss="modal">
            <div class="lr">
                <div class="rl"></div>
            </div>
        </div>
        <div class="container">
           
                <div class="col-lg-8 col-lg-offset-2">
                    <div class="modal-body">
                        <h3>Go Easy On</h3>
                       
                        <img src="images/p6.jpg" class="img-responsive" alt="">
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                    </div>
                </div>
            </div>
        
    </div>
</div>
<!-- //Portfolio Modals -->
 <div class="bottom-section">
	  <div class="wrap">
	 
	  <div class="banner-center">
	  
					<h3>Find Your Destination</h3>
					 <p class="vd">Lorem ipsum dolor sit amet. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident</p>
					 	  <a href="#" data-toggle="modal" data-target="#myModal2" class="play" href="#"><i class="glyphicon glyphicon-play-circle"> </i></a>
				</div>
					

	  </div>
	   <!--iframe-->
			<div class="modal ab fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog video" role="document">
					<div class="modal-content about">
						<div class="modal-header">
							<button type="button" class="close ab" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body about">
							
											
						</div>
						
					</div>
				</div>
			</div>
			 <!--//iframe-->
 </div>
  <div class="testimonials module">
    <div class="container">
      <!-- TITLE -->
      <div class="test-top">
        <div class="sp-testimonials-title">
       
          <h3 class=" tittle wow fadeInUp" data-wow-delay="1s" data-wow-duration="0.5s">Customer satisfaction</h3>
		   
        </div>
		  <div class="sp-testimonials">
          <div class="sp">
                <div class="col-md-6 pic wow fadeInLeft animated animated" data-wow-delay=".5s">
                  <blockquote>Health amplify respect cornerstone, affordable health care inspiration. Honor human-centered design rural vulnerable population partner volunteer emergency.</blockquote>
                  <img src="images/t4.jpg" alt="">
                  <p><strong>Caroline Stephens</strong>Sales manager</p>
                </div>
                <div class="col-md-6 pic wow fadeInRight animated animated" data-wow-delay=".5s">
                  <blockquote>Courageous change; forward-thinking provide; human experience; visionary diversity rights-based approach vaccine, equal opportunity microloans nonviolent.</blockquote>
                  <img src="images/t1.jpg" alt="">
                  <p><strong>Walter Ashlock</strong>Merchandise manager</p>
                </div>
				<div class="clearfix"> </div>
          </div>  
        </div>
      </div>
      <!-- /TITLE -->
    </div>
  </div>
  <!-- /TESTIMONIALS -->

	 <!--/contact-->
	 <div class="section-contact" id="contact">
	    <div class="wrap">
           <div class="contact-main">
				 <h3 class="tittle wow fadeInUp animated animated" data-wow-delay=".5s">联系我们</h3>
					<div class="col-md-6 contact-in wow slideInUp animated animated" data-wow-delay=".5s">
						<h5>11组寄语</h5>
						<p class="para1">有信念、有梦想、有奋斗、有奉献的人生，才是有意义的人生。当代青年建功立业的舞台空前广阔、梦想成真的前景空前光明，希望大家努力在实现中国梦的伟大实践中创造自己的精彩人生。</p>
						<div class="more-address wow slideInUp animated animated" data-wow-delay=".5s""> 
								<address>
								  <strong class="one">地址</strong><br>
								  苏州<br>
									Xi’an Jiaotong-liverpool Uiversity<br>
								  <abbr title="QQ">QQ :</abbr>931721403；2467142788；957033099；2531852077
								</address>
								<address>
								  <strong class="one">我们的电子邮箱</strong><br>
								  <a href="mailto:info@example.com">@qq.com</a>
							   </address>
						  </div>
					</div>
					   <div class="col-md-6 contact-grid">
						    <form >
									<div class="styled-input wow slideInUp animated animated" data-wow-delay=".5s">
									  <input type="text" required />
									  <label>Name</label>
									  <span></span> </div>
									<div class="styled-input wow slideInUp animated animated" data-wow-delay=".5s">
									  <input type="email" required />
									  <label>Email</label>
									  <span></span> </div>
									<div class="styled-input wow slideInUp animated animated" data-wow-delay=".5s">
									  <input type="tel" required />
									  <label>Phone</label>
									  <span></span> </div>
									<div class="styled-input wide wow slideInUp animated animated" data-wow-delay=".5s">
									  <textarea required></textarea>
									  <label>Message</label>
									  <span></span> </div>
										<div class="send wow shake animated animated" data-wow-delay=".5s">
											<input type="submit" value="发送" >
										</div>
						     </form>
					   </div>
						<div class="clearfix"> </div>
			      </div>
			 </div>				  	<!--map-->
		 </div>
		 <!-- footer-section -->
	<div class="bottom-middle">
		<div class="bottom-middle-top">
			<div class="container">
				<div class="col-md-6 bottom-grid wow fadeInUp animated animated" data-wow-delay=".5s">
					<h5>11组</h5>
					<p>无数人生成功的事实表明，青年时代，选择吃苦也就选择了收获，选择奉献也就选择了高尚。青年时期多经历一点摔打、挫折、考验，有利于走好一生的路。 </p>
					<form>					 
					  <input type="text" placeholder="写下你的电子邮件..." required="" />

					 <input type="submit" value="提交">
					 <div class="clearfix"></div>
				 </form>
				</div>
				<div class="col-md-6 bottom-grid wow fadeInUp animated animated" data-wow-delay=".5s">
					<h5>邮箱联系</h5>
					<p>我们会定时检查邮箱，欢迎提出宝贵意见 <br>at <a href="qq号+@.com">qq号+@.com</a></p>
					<span>1 day ago</span>
					<p><a href="#">Twitter</a>, may be the more visual platform for education group.</p>
					<span>4 day ago</span>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //footer-section -->
      <div class="map-bottom">
					<div class="col-md-4 adrs-left wow fadeInUp animated animated" data-wow-delay=".5s">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
						<p>郑州航空工业管理学院&河南科技大学</p>
					</div>
					<div class="col-md-4 adrs-left adrs-middle wow fadeInUp animated animated" data-wow-delay=".5s">
						<span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>
						<p></p>
					</div>
					<div class="col-md-4 adrs-left adrs-right wow fadeInUp animated animated" data-wow-delay=".5s">
						<span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>
						<p><a href="mailto:example@email.com">931721403@qq.com</a></p>
					</div>
					<div class="clearfix"></div>
				</div>
			<!--//map-->
		<!--//contact-->

	   <!--copy-right-->
		<div class="copy">
		    <p class="wow fadeInUp animated animated" data-wow-delay=".5s">Copyright &copy; 2018.InfoSchool项目组 All rights reserved. <a href="http://www.cssmoban.com/" target="_blank" title="模板之家"></a><a href="http://www.cssmoban.com/" title="" target="_blank">InfoSchool</a> </p>
		</div>
	 <!--//copy-right-->
		<!--//footer-->
			<!--start-smooth-scrolling-->
						<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed:1000,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
		<script src="<%=basePath%>tian/index/js/rAF.js"></script>
        <script src="<%=basePath%>tian/index/js/demo-2.js"></script>
		<script src="<%=basePath%>tian/index/js/main.js"></script> <!-- Resource jQuery -->

<!-- for bootstrap working -->
		<script src="<%=basePath%>tian/index/js/bootstrap.js"></script>
<!-- //for bootstrap working -->
	<a name="miao"></a><!--设置锚点方法1-->

</body>
</html>