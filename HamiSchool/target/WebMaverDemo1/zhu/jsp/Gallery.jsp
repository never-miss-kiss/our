<!DOCTYPE html>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- saved from url=(0061)http://demo.cssmoban.com/cssthemes4/cpts_907_ble/gallery.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gallery</title>
<link href="<%= basePath %>Gallery_files/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="<%= basePath %>Gallery_files/bootstrap-3.3.7/dist/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="<%= basePath %>Gallery_files/style.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" type="text/css" href="<%= basePath %>Gallery_files/style_common.css">
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta name="keywords" content="">


<!--Google Fonts-->
<link href="<%= basePath %>Gallery_files/css" rel="stylesheet" type="text/css">
<link href="<%= basePath %>Gallery_files/css(1)" rel="stylesheet" type="text/css">
<!--google fonts-->
<!-- animated-css -->
		<link href="<%= basePath %>Gallery_files/animate.css" rel="stylesheet" type="text/css" media="all">
		<script src="<%= basePath %>Gallery_files/wow.min.js.下载"></script>
<!-- animated-css -->
<script src="<%= basePath %>Gallery_files/bootstrap-3.3.7/dist/js/bootstrap.js"></script>

<body class="" style="">
<!--banner start here-->
<div class="header head-top" >

     <div class="container-fluid" >
     	 <div class="col-xs-2" >
         </div>
         <div class="header-main">
           <div class="col-xs-8">
           <div class="logo wow bounceInLeft animated" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: bounceInLeft;">
             <a href="#"><img src="./Gallery_files/logo.png" alt=""></a>
           </div>
           <div class="top-navg">
                   <span class="menu"> <img src="./Gallery_files/icon.png" alt=" "></span>				 			
                    <ul class="res">
                        <a href="#"><span class="res1">首页</span></a>
                        <a href="#"><span class="res2">二手</span></a>					
                        <a href="#"><span class="res3">跑腿</span></a>
                        <a class="active" href="#"><span class="res1">哈密社区</span></a>
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
      <div class="col-xs-2" id="person">
          <div id="person-pic" style="border:blue 2px solid">
                
                <div id="head-portrait" class="col-xs-5" style="border:orange 2px solid">
                    <a href="#">
                        <img src="Gallery_files/头像.jpg"></img>
                    </a>
                </div>
                <div class="col-xs-7" style="border:orange 2px solid">
                     <div id="message">
                        <a href="#">
                            <img src="Gallery_files/通知3.png"></img>
                        </a> 
                    </div>
                    
                    <div id="exit">
                        <a href="#">
                            <img src="Gallery_files/登出.png" ></img>
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
  </div>
 </div>
<!--banner end here-->

