﻿﻿<!DOCTYPE html>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="description" content="">
      <meta name="author" content="OrcasThemes">
      <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
      <title>商品详情</title>
      <link rel="stylesheet" href="<%= basePath %>zhu/bootstrap/css/bootstrap.min.css" />
      <script type="text/javascript" src="<%= basePath %>zhu/js/jquery-1.12.1.min.js"></script>
      <script type="text/javascript" src="<%= basePath %>zhu/bootstrap/js/bootstrap.min.js"></script>
      <script type="text/javascript" src="<%= basePath %>zhu/js/jquery-1.11.2.js"></script>

      <link href="<%= basePath %>zhu/Gallery_files/bootstrap.css" rel="stylesheet" type="text/css" media="all">
      <script src="<%= basePath %>zhu/Gallery_files/bootstrap-3.3.7/dist/js/jquery.min.js"></script>
      <link href="<%= basePath %>zhu/Gallery_files/style.css" rel="stylesheet" type="text/css" media="all">
      <link rel="stylesheet" type="text/css" href="<%= basePath %>zhu/Gallery_files/style_common.css">
      <link href="<%= basePath %>zhu/Gallery_files/css" rel="stylesheet" type="text/css">
      <link href="<%= basePath %>zhu/Gallery_files/css(1)" rel="stylesheet" type="text/css">
      <link href="<%= basePath %>zhu/Gallery_files/animate.css" rel="stylesheet" type="text/css" media="all">
      <script src="<%= basePath %>zhu/Gallery_files/wow.min.js.下载"></script>
      <script src="<%= basePath %>zhu/Gallery_files/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
      <!-- Bootstrap core CSS -->
      <link href="<%= basePath %>zhu/css/bootstrap.css" rel="stylesheet">
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

      <link href="<%= basePath %>zhu/css/shopdetail.css" rel="stylesheet" type="text/css">
      <script src="<%= basePath %>zhu/js/common.js"></script>
      <script src="<%= basePath %>zhu/js/lity.js"></script>
      <script type="text/javascript" src="<%= basePath %>zhu/js/showMore.js"  charset="gbk"></script>

      <link href="<%= basePath %>zhu/lib/css/emoji.css" rel="stylesheet">
      <script src="<%= basePath %>zhu/lib/js/config.js"></script>
      <script src="<%= basePath %>zhu/lib/js/util.js"></script>
      <script src="<%= basePath %>zhu/lib/js/jquery.emojiarea.js"></script>
      <script src="<%= basePath %>zhu/lib/js/emoji-picker.js"></script>

      <style>
      .head-top{background-color: #a6e1ec}
      .dark-bg{border-color: #8a6d3b;}
      .search-block{position: absolute;top:82px;left: 17%}
      .catorys{margin-top: 30px;}
      .btn{margin-top: 10px;margin-left: 19px;margin-right: 50px;}
      .pBtn{margin-top: -15px;margin-bottom: -10px;margin-left: -10px;}
       h2.title{position: relative;top:-60px;}
      .talk{position: relative;top: -60px; }
      /*#button{position:absolute;top:1133px;left: 670px;width: 100px;}*/
      .add{position: relative;left:90%;top:50px;border: 1px solid red; }
      .picture{position: relative;width: 300px;height: 320px;top:-35px;float: left;padding: 50px;}
   </style>
   <script type="text/javascript">
          $(document).ready(function(){
              var showproduct = {
                  "boxid":"showbox",
                  "sumid":"showsum",
                  "boxw":400,
                  "boxh":550,
                  "sumw":60,//列表每个宽度,该版本中请把宽高填写成一样
                  "sumh":60,//列表每个高度,该版本中请把宽高填写成一样
                  "sumi":7,//列表间隔
                  "sums":5,//列表显示个数
                  "sumsel":"sel",
                  "sumborder":1,//列表边框，没有边框填写0，边框在css中修改
                  "lastid":"showlast",
                  "nextid":"shownext"
              };//参数定义
              $.ljsGlasses.pcGlasses(showproduct);//方法调用，务必在加载完后执行

              $(function(){

                  $('.tabs a').click(function(){
                      var $this=$(this);
                      $('.panel').hide();
                      $('.tabs a.active').removeClass('active');
                      $this.addClass('active').blur();
                      var panel=$this.attr("href");
                      $(panel).show();
                      return fasle;  //告诉浏览器  不要纸箱这个链接
                  })//end click
                  $(".tabs li:first a").click()   //web 浏览器，单击第一个标签吧
              })//end ready

              $(".centerbox li").click(function(){
                  $("li").removeClass("now");
                  $(this).addClass("now")

              });
          });
      </script>
   </head>
   <body>
      <!-- SINGLE VIDEO -->
      <div id="single-video" class="container-fluid standard-bg">
         <!-- MENU -->
         <div class="header head-top" >
            <div class="container">
               <div class="header-main" >
                  <div class="logo wow bounceInLeft animated" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: bounceInLeft;">
                     <a href="#"><img src="<%= basePath %>zhu/Gallery_files/logo.png" alt=""></a>
                  </div>
                  <div class="top-navg">
                     <span class="menu"> <img src="<%= basePath %>zhu/Gallery_files/icon.png" alt=" "></span>
                     <ul class="res">
                        <a href="#"><span class="res1">首页</span></a>
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
         </div>
         <!-- SINGLE VIDEO -->
         <div class="row">
            <!-- SIDEBAR -->
            <div class="catorys">
            <div class="col-lg-2 col-md-4 hidden-sm hidden-xs">
               <aside class="dark-bg">
                  <article>
                     <h2 class="icon">商品类别</h2>
                     <ul class="sidebar-links">
                        <li class="fa fa-chevron-right"><a href="#">所有分类</a></li>
                        <li class="fa fa-chevron-right"><a href="#">代步工具</a></li>
                        <li class="fa fa-chevron-right"><a href="#">手机</a></li>
                        <li class="fa fa-chevron-right"><a href="#">电脑</a></li>
                        <li class="fa fa-chevron-right"><a href="#">数码</a></li>
                        <li class="fa fa-chevron-right"><a href="#">电器</a></li>
                        <li class="fa fa-chevron-right"><a href="#">衣谢伞帽</a></li>
                        <li class="fa fa-chevron-right"><a href="#">电脑</a></li>
                        <li class="fa fa-chevron-right"><a href="#">数码</a></li>
                        <li class="fa fa-chevron-right"><a href="#">电器</a></li>
                        <li class="fa fa-chevron-right"><a href="#">衣谢伞帽</a></li>
                     </ul>
                  </article>
                  <div class="clearfix spacer"></div>
                  <div class="clearfix spacer"></div>
                  <div class="clearfix spacer"></div>
               </aside>
            </div>
            </div>
            <!-- SINGLE VIDEO -->	
            <div id="single-video-wrapper" class="col-lg-10 col-md-8">
               <div class="row">
                  <!-- VIDEO SINGLE POST -->
                  <div class="col-lg-8 col-md-12 col-sm-12">
                     <!-----商品详情部分------->
                     <div class="shopdetails">
                        <!-------放大镜-------->
                        <div id="leftbox">
                           <div id="showbox">
                              <img src="<%= basePath %>zhu/img/shopdetail/img01.png" width="400" height="550" />
                              <img src="<%= basePath %>zhu/img/shopdetail/img02.png" width="400" height="550" />
                              <img src="<%= basePath %>zhu/img/shopdetail/img03.png" width="400" height="550" />
                              <img src="<%= basePath %>zhu/img/shopdetail/img04.png" width="400" height="550" />
                              <img src="<%= basePath %>zhu/img/shopdetail/img05.png" width="400" height="400" />
                              <img src="<%= basePath %>zhu/img/shopdetail/img01.png" width="400" height="400" />

                           </div><!--展示图片盒子-->
                           <div id="showsum"></div><!--展示图片里边-->
                           <p class="showpage">
                              <a href="javascript:void(0);" id="showlast"> < </a>
                              <a href="javascript:void(0);" id="shownext"> > </a>
                           </p>
                        </div>
                        <div class="centerbox">
                           <%--<p class="imgname">叠叠杯水杯茶杯套杯陶瓷咖啡牛奶杯具套装</p>--%>
                           <p class="imgname">${goods.name}</p>

                           <p class="price"><span class="fa fa-rmb"></span>&nbsp;&nbsp;&nbsp;&nbsp;<samp>${goods.price}</samp></p>
                           <p class="price">
                              <span class="fa fa-user"></span>
                              <a href="">&nbsp;&nbsp;&nbsp;&nbsp;<span class="text">${userNickname}</span>(去看他)</a>
                           </p>
                           <p class="price">
                              <span class="fa fa-qq"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="text">${goods.qq}</span>
                           </p>
                           <p class="price">
                              <span class="fa fa-phone"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="text">${goods.phone}</span>
                           </p>
                           <p class="price">
                              <span class="fa fa-home"></span>&nbsp;&nbsp;&nbsp;<span class="text">${schoolName}</span>
                           </p>
                           <p class="price ">
                              <span class="fa fa-map-marker" ></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="text">${goods.location}</span>
                           </p>
                           <p class="price">
                              <span class="fa fa-anchor"><span class="iconfont"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="text">未认证</span>
                           </p>
                           <p class="price">
                              <span class="fa fa-calendar"></span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="text"><fmt:formatDate value="${goods.releaseTime}" pattern="yyyy-MM-dd hh:mm:ss"/></span>
                           </p>
                           <p class="price">
                              <span class="fa fa-weixin"><span class="iconfont"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="text">
                            该同学没留下微信号</span>
                           </p>
                           <div class="btn">
                           <button type="button" isLogin="3147" class="btn btn-success"  data-id="2380" onclick="saleFavor(this)">收藏</button>
                           <button type="button" class="btn btn-warning"  onclick="saleReport(2380)">举报</button>
                           </div>
                        </div>
                     </div>
					<!-- COMMENTS -->
					<section id="comments">
						<h2 class="title" style="color:#2aabd2">欢迎评论</h2>
						<div class="widget-area">
							<div class="status-upload">
                               <p class="lead emoji-picker-container">
                                  <input type="email" class="form-control" placeholder="Input field" data-emojiable="true">
                               </p>
                               <div class="pBtn">
                               <button type="submit" class="btn pull-left btn-info btn-sm"><i class="fa fa-share"></i>发表评论</button>
                               </div>
                            <%--<form>--%>
									<%--<textarea placeholder="Your comment goes here" data-emojiable="true" data-emoji-input="unicode" ></textarea>--%>
									<%--<div class="comment-box-control">--%>
										<%--&lt;%&ndash;<ul>&ndash;%&gt;--%>
											<%--&lt;%&ndash;<li><a title="" data-placement="bottom" data-original-title="Video"><i class="fa fa-video-camera"></i></a></li>&ndash;%&gt;--%>
											<%--&lt;%&ndash;<li><a title="" data-placement="bottom" data-original-title="Picture"><i class="fa fa-picture-o"></i></a></li>&ndash;%&gt;--%>
											<%--&lt;%&ndash;<li><a title="" data-placement="bottom" data-original-title="Smile" ><i class="fa fa-smile-o" ></i></a></li>&ndash;%&gt;--%>
										<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
										<%--<button type="submit" class="btn pull-right"><i class="fa fa-share"></i>发表评论</button>--%>
									<%--</div>--%>
								<%--</form>--%>
							</div><!-- Status Upload  -->
						</div><!-- Widget Area -->

                       <h2 class="title" style="color:#2aabd2">商品评论</h2>
                       <%--<div class="col-sm-2" id="button">--%>
                          <%--<input name="" type="button"  value="+"  id="btn" onclick="btn()"  >--%>
                       <%--</div>--%>
                    <div class="talk" >
                       <div class="row comment-posts">
							<div class="col-sm-11">
                               <div  class="showMoreNChildren" pagesize="2">
                               <C:forEach items="${goodsComment}" var="comment">
								<div class="panel panel-default">
									<div class="panel-heading">
										<strong>
                                           <C:forEach items="${username}" var="name">
                                           <C:if test="${name.key eq comment.userId}">
                                              <C:out value="${name.value}"></C:out>
                                           </C:if>
                                           </C:forEach>
                                        </strong>
                                       <span class="pull-right"><fmt:formatDate value="${comment.releaseTime}" pattern="yyyy-MM-dd "/></span>
									</div>
									<div class="panel-body">
                                          <c:forTokens items="${comment.content}" delims="" begin="0" end="20" var="name">
                                          <c:out value="${name}"/><p>
                                          </c:forTokens>
                                      <%--<c:out value="${comment.content}"></c:out>--%>
									</div>
                                    <div class="panel-footer">
                                       <a href="<%= basePath %>goods/findGoodsCommentDetail.action?goodsCommentId=${comment.goodsCommentId}" class="badge">
                                          <C:forEach items="${count}" var="c">
                                             <C:if test="${c.key eq comment.goodsCommentId}">
                                                <C:out value="${c.value}"></C:out>
                                             </C:if>
                                          </C:forEach>
                                          回复
                                       </a>
                                    </div>
								</div>
                               </C:forEach>
                               </div>
							</div>
                       </div>
                    </div>
                    </section>

               <div class="clearfix spacer"></div>
                  </div>
               </div>
            </div>
         </div>
         <!-- CHANNELS -->
         <div id="channels-block" class="container-fluid " style="background-color:#a6e1ec">
            <div class="container-fluid ">
               <div class="col-md-12">
                  <!-- CHANNELS -->
                  <section id="channels">
                     <div id="myCarousel" class="carousel slide" data-ride="carousel">
                        <h2 class="icon"><i class="fa fa-leaf" aria-hidden="true"></i>商品推荐</h2>
                        <div class="carousel-control-box">
                           <a class="left carousel-control" id="previous" href="<%= basePath %>goods/findGoodsById.action?goodsCategoryId=${queryPojo.goodsCategoryId}&curPage=1&goodsId=${goodsId}"  role="button" data-slide="prev"><i class="fa fa-chevron-left" aria-hidden="true"></i></a>
                           <a class="right carousel-control" id="next" href="<%= basePath %>goods/findGoodsById.action?goodsCategoryId=${queryPojo.goodsCategoryId}&curPage=2&goodsId=${goodsId}"  role="button" data-slide="next"><i class="fa fa-chevron-right" aria-hidden="true"></i></a>
                        </div>
                        <!-- Wrapper for slides -->
                        <div class="carousel-inner" role="listbox">
                           <div class="item active">
                              <div class="row auto-clear">
                                 <C:forEach items="${pageInfo.list}" var="good">
                                 <div class="picture">
                                    <div class="post post-medium">
                                       <div class="thumbr">
                                          <a class="post-thumb" href="<%= basePath %>goods/findGoodsById.action?goodsId=${good.goodsId}">
                                             <img class="img-responsive" src="<%= basePath %>zhu/img/thumbs/thumb-s.jpg" alt="#">
                                          </a>
                                       </div>
                                       <div class="infor">
                                          <br>
                                          <h4>
                                             <a class="title" >${good.name}</a>
                                          </h4>
                                          <span class="posts-txt" title="Posts from Channel"><i class="fa fa-hand-pointer-o" aria-hidden="true"></i>${good.clickCount}</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          <span class="posts-txt" title="Posts from Channel"><i class="fa fa-cny" aria-hidden="true"></i>${good.price}</span>
                                          <h5>
                                             <a class="title" >吉林大学
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;未认证
                                             </a>
                                          </h5>
                                       </div>
                                    </div>

                                 </div>
                                 </C:forEach>
                              </div>
                           </div>
                           </div>
                        </div>
                  </section>
                  <div class="clearfix"></div>
               </div>
            </div>
      </div>
      <script>
          document.getElementById("next").scrollIntoView();
          document.getElementById("previous").scrollIntoView();
      </script>
      <script>
         $(".nav .dropdown").hover(function() {
           $(this).find(".dropdown-toggle").dropdown("toggle");
         });
      </script>
      <script type="text/javascript">
          //调用显示更多插件。参数是标准的 jquery 选择符
          $.showMore(".showMoreNChildren");
      </script>
      <script>
          $(function() {
              // Initializes and creates emoji set from sprite sheet
              window.emojiPicker = new EmojiPicker({
                  emojiable_selector: '[data-emojiable=true]',
                  assetsPath: '<%= basePath %>zhu/lib/img/',
                  popupButtonClasses: 'fa fa-smile-o'
              });
              // Finds all elements with `emojiable_selector` and converts them to rich emoji input fields
              // You may want to delay this step if you have dynamically created input fields that appear later in the loading process
              // It can be called as many times as necessary; previously converted input fields will not be converted again
              window.emojiPicker.discover();
          });
      </script>
      <script>
          // Google Analytics
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
              (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
              m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

          ga('create', 'UA-49610253-3', 'auto');
          ga('send', 'pageview');
      </script>
      </div>
   </div>
      </div>

      <script type="text/javascript">
          function ajaxList(pageIndex,goodsCategoryId,goodsId) {
              $.ajax({
                  type: "get",
                  url: "goods/findGoodsById.action",
                  data: { pageIndex: pageIndex ,goodsCategoryId:goodsCategoryId,goodsId:goodsId},
                  success: function (pageInfo,queryPojo,goodsId) {
                      $.each(pageInfo.list,function (i,item) {

                      })
                  }
              });
          }
      </script>
</body>
</html>
