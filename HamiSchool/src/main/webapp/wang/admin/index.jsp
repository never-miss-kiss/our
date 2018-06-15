<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title>后台管理中心</title>  
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/pintuer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/admin.css">
    <script src="${pageContext.request.contextPath }/wang/script/jquery-1.11.2.js"></script>
</head>
<body style="background-color:#f2f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1><img src="${pageContext.request.contextPath }/wang/images/in.jpg" class="radius-circle rotate-hover" height="50" alt="" />后台管理中心</h1>
  </div>
  <div class="head-l">
	  <a class="button button-little bg-green" href="${pageContext.request.contextPath }/wang/adminjsp/homepage/adv.jsp" target="_blank"><span class="icon-home"></span> 前台首页</a> &nbsp;&nbsp;
	  <a class="button button-little bg-red" href="${pageContext.request.contextPath }/wang/admin/login.jsp"><span class="icon-power-off"></span> 退出登录</a>
  </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
  <h2><span class="icon-user"></span>基本设置</h2>
  <ul >
    <li><a href="${pageContext.request.contextPath }/wang/pushMessage/push.jsp" target="right"><span class="icon-caret-right"></span>推送消息</a></li>
    <li><a href="${pageContext.request.contextPath }/admin/admin_pushList" target="right"><span class="icon-caret-right"></span>管理推送信息</a></li> 
    <li><a href="${pageContext.request.contextPath }/wang/admin/updateAdmin.jsp" target="right"><span class="icon-caret-right"></span>修改个人信息</a></li>
    <li><a href="${pageContext.request.contextPath }/wang/admin/addAdmin.jsp" target="right"><span class="icon-caret-right"></span>增加管理员</a></li>
    <li><a href="${pageContext.request.contextPath }/jsp/updateAdmin.jsp" target="right"><span class="icon-caret-right"></span>修改管理员权限</a></li>
    <li><a href="${pageContext.request.contextPath }/admin/allAdmin.action" target="right"><span class="icon-caret-right"></span>查找管理员</a></li>
    <li><a href="${pageContext.request.contextPath }/homepage/homepage_listAll" target="right"><span class="icon-caret-right"></span>首页轮播</a></li>   
    <li><a href="${pageContext.request.contextPath }/feedBack/feedBack_backList" target="right"><span class="icon-caret-right"></span>反馈信息</a></li>   
  </ul>   
  <h2><span class="icon-pencil-square-o"></span>模块管理</h2>
  <ul>
   
    <li><a href="${pageContext.request.contextPath }/adminLegwork/adminLegwork_queryAllLegWorkType" target="right"><span class="icon-caret-right"></span>跑腿管理</a></li>
    <li><a href="${pageContext.request.contextPath }/admin/goodsList.action?" target="right"><span class="icon-caret-right"></span>商品管理</a></li>
   
    <li><a href="${pageContext.request.contextPath }/admin/selectAllUser.action" target="right"><span class="icon-caret-right"></span>用户管理</a></li>
    <li><a href="${pageContext.request.contextPath }/admin/reportList.action" target="right"><span class="icon-caret-right"></span>举报管理</a></li>
  </ul>  
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  });
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  });
});
</script>
<ul class="bread">
  <li><a href="home.jsp" target="right" class="icon-home"> 首页</a></li>
</ul>
<div class="admin">
  <iframe scrolling="auto" rameborder="0" src="home.jsp" name="right" width="100%" height="100%"></iframe>
</div>
</body>
</html>