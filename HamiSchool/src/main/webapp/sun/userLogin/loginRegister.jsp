<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">
	<title>登录注册</title>
	<style type="text/css">

	</style>
	<link rel="stylesheet" href="<%=path%>/sun/csslogin/login.css">
	<link rel="stylesheet" href="<%=path%>/sun/csslogin/iconfont.css">
	<link rel="stylesheet" href="<%=path%>/sun/csslogin/pintuer.css">
	<script type="text/javascript" src="<%=path%>/sun/jslogin/jquery-1.11.2.js"></script>
	<script src="<%=path%>/sun/jslogin/pintuer.js"></script>
	<script language="javascript">
	function get_mobile_code(obj){
      /*    $.post('sms.jsp', {mobile:jQuery.trim($('#mobile').val())}, function(msg) {
			alert(222);
			alert($});
            //alert(jQuery.trim(unescape(msg)));
			if(msg=='提交成功'){
				settime(obj);
			} */
			//alert($("#mobile").val());
		
	 	$.post('sms.jsp', {mobile:jQuery.trim($('#mobile').val())}, function(code) {
           //alert(jQuery.trim(unescape(msg)));
			settime(obj);	
		
       	}); 
	}
	function get_phone_code(obj){
		
		 	$.post('sms.jsp', {mobile:jQuery.trim($('#mobilephone').val())}, function(code) {
				setretime(obj);		
	        }); 
	    
    }
	
	
	var countdown=60; 
	function settime(obj) { 
    if (countdown == 0) { 
        obj.removeAttribute("disabled");    
        obj.value="免费获取验证码"; 
        countdown = 60; 
        return;
    } else { 
        obj.setAttribute("disabled", true); 
        obj.value="重新发送(" + countdown + ")"; 
        countdown--; 
    } 
	setTimeout(function() { 
	    settime(obj); 
	    }
	    ,1000); 
	}
	
	function setretime(obj){
		if (countdown == 0) { 
        obj.removeAttribute("disabled");    
        obj.value="免费获取验证码"; 
        countdown = 60; 
        return;
	    } else { 
	        obj.setAttribute("disabled", true); 
	        obj.value="重新发送(" + countdown + ")"; 
	        countdown--; 
	    } 
		setTimeout(function() { 
		    settime(obj); 
		    }
		    ,1000); 
	
	}
</script>
	<style>
		#divmy{
			z-index: 1;
		}
		<%--body{--%>
			<%--background-image: url("<%=path%>/sun/images/注册背景.JPEG") ;--%>
			<%--background-repeat: no-repeat;--%>
			<%--width: auto;--%>
			<%--height: auto;--%>
			<%--background-size: 100% 100%;--%>
		<%--}--%>
		#imgmy{
			width:100%;
			height: 1030px;
			position: absolute;
			opacity: 0.5;

		}
		
	</style>
</head>
<body>
<img src="<%=path%>/sun/images/注册背景.JPEG" id="imgmy"/>
<div id="divmy">
	<%--<div class="login-nav fix">--%>
		<%--<ul class="f-r">--%>
			<%--<li><a href="${pageContext.request.contextPath }/homepage/homepage_showAdvert"><span style="color:white;">返回首页</span></a></li>--%>
		<%--</ul>--%>
	<%--</div>--%>

	<div class="login-banner"></div>
	<div class="login-box">
		<div class="box-con tran">
		<form action="<%= basePath%>loginpage/login.action" method="post">
			<div class="login-con f-l">
				<div class="form-group field field-icon-right">
					用户名<input type="text" name="user.telephone" placeholder="手机号\邮箱"  data-validate="required:手机号不能为空,regexp#(^1(3|4|5|7|8)\d{9}$):手机号不正确" />

					<c:if test="${param.info == '2' }">
						<span style='color:red;font-size:10pt'>用户不存在！</span>
					</c:if> 
					<c:if test="${param.info == '6' }">
						<span style='color:red;font-size:10pt'>此账户已被注销，无法登陆！</span>
					</c:if> 
					<c:if test="${param.info == '8' }">
						<span style='color:red;font-size:10pt'>此被举报次数已超过10次，已被注销</span>
					</c:if> 
				</div>
				<div class="form-group field field-icon-right">
					密码<input type="password" name="user.password" placeholder="密码" data-validate="required:密码不能为空" />
				  	<c:if test="${param.info == '1' }">
		  				<span style='color:red;font-size:10pt'>密码错误！</span>
					</c:if>
				</div>
				<div class="form-group">
					<button type="submit" class="tran pr">
						<%--<a href="javascript:;" class="tran">登录</a>
									--%>
						登录
					</button>
				</div>
				<div class="from-line"></div>
				<div class="form-group">
					<a href="javascript:;" class="move-signup a-tag tran blue-border">还没有帐号？免费注册<i class="iconfont tran">&#xe606;</i></a>
				</div>
				<div class="form-group">
					<a href="javascript:;" class="move-reset a-tag tran">忘记密码？重置 <i class="iconfont tran">&#xe606;</i></a>
				</div>

			</div>
			</form>
			<!-- 登录 -->
			<script type="text/javascript">
				function checkUser(){
					var mobile=document.getElementById("mobile").value;
					var pass= $("#input_invisible").val();
					var rep = $("#input_visible").val();
					var flag = false;
					$.ajax({
						async:false,
						type :"post",
						url:"${pageContext.request.contextPath }/webUser/webUser_checkUser?mobile="+mobile,
						success:function(msg){
							if(msg == '0'){
								alert("用户可用");
								if(pass == rep){
									flag = true;
								}else{
									alert("两次密码输入不一致");
									flag = false;
								}
							}
							else{
								alert("用户不可用");
								//document.getElementById("myspan").innerHTML("用户名已被注册");
								flag = false;
							}
						}
			
					});		
					return flag;	
				}
				
				function checkResUser(){
					var mobile=$("#mobilephone").val();
					var pass= $("#invisible").val();
					var rep = $("#visible").val();
					flag = false;
					$.ajax({
						async:false,
						type :"post",
						url:"${pageContext.request.contextPath }/webUser/webUser_checkUser?mobile="+mobile,
						success:function(msg){
							if(msg == '0'){
								alert("用户不存在");
								flag=false;
							}
							else{
								//alert("用户cunzai");
								if(pass == rep){
									flag = true;
								}else{
									alert("两次密码输入不一致");
									flag = false;
								}
							}
						}
			
					});		
					return flag;	
				}
			
				
			</script>
			<form action="${pageContext.request.contextPath }/webUser/webUser_register" method="post" onsubmit="return checkUser();">
			<div class="signup f-l">
				<div class="form-group field field-icon-right"> 
					手机号<input type="text" id="mobile" name="user.telephone" placeholder="您的手机号" data-validate="required:手机号不能为空,regexp#(^1(3|4|5|7|8)\d{9}$):手机号不正确">
					<span style='color:red;font-size:9pt' id="myspan"></span>
				</div>
				<div class="form-group field field-icon-right"> 
					性别<select class="input" name="user.sex" id="pintuer" data-validate="required:请选择性别">
					   	<option value=''>请选择性别</option>
					    	<option value="男">男</option>
					    	<option value="女">女</option>
				    </select>
				</div>
				<div class="form-group field field-icon-right " id="psw_invisible">
					密码<input type="password" class="input" id="input_invisible" name="user.password"  placeholder="密码（字母、数字，至少6位）" data-validate="required:密码不能为空,regexp#(^[0-9a-zA-Z]+$):请输入字母、数字,length#>=6:密码不能小于6位">
				
				</div> 
			    <div class="form-group field field-icon-right " id="psw_visible">
					确认密码<input type="password" class="input" id="input_visible"   placeholder="确认密码" data-validate="required:密码不能为空">
					
				</div>  
				<div class="form-group">
					<input id="zphone" type="button" value=" 发送验证码 " onclick="get_mobile_code(this);" />
				</div>
				<div class="form-group field field-icon-right">
					
					验证码<input type="text" id="mycode" name="codeMes" placeholder="输入验证码" data-validate="required:验证码不能为空" >
					 <c:if test="${param.info == '3' }">
			  			<span style='color:red;font-size:9pt'>验证码错误！</span>
					</c:if>
				</div>
				<div class="form-group">
					<button type="submit" class="tran pr" >
						<a href="javascript:;" class="tran">注册</a>
						<img class="loading" src="../images/loading.gif">
					</button>
				</div>
				<p class="view-clause">点击注册，即同意我们的 <a href="${pageContext.request.contextPath }/jspweb/secret.jsp">用户隐私条款</a></p>
				<!-- 手机号码注册 -->
				<div class="from-line"></div>
				<div class="form-group">
					<a href="javascript:;" class="move-login a-tag tran blue-border">已有帐号？登录<i class="iconfont tran">&#xe606;</i></a>
				</div>
			</div>
			</form>
			<!-- 注册 -->
			<form action="${pageContext.request.contextPath }/webUser/webUser_reset" method="post" onsubmit="return checkResUser()">
			<div class="mimachongzhi f-l">
				<div class="form-group field field-icon-right">
					手机号<input type="text" id="mobilephone" name="user.telephone" placeholder="请输入您的手机号" data-validate="required:手机号不能为空,regexp#(^1(3|4|5|7|8)\d{9}$):手机号不正确">
				
				</div>
				<div class="form-group field field-icon-right" >
					密码<input type="password" id="invisible" name="user.password" placeholder="请输入新密码（字母、数字，至少6位）" data-validate="required:密码不能为空,regexp#(^[0-9a-zA-Z]+$):请输入字母、数字,length#>=6:密码不能小于6位">
				
				</div>
	 			<div class="form-group field field-icon-right ">
					确认密码<input type="password" class="input" id="visible"   placeholder="确认密码" data-validate="required:密码不能为空">
					
				</div>  
				
				<div class="form-group">
					<input id="zphone" type="button" value=" 发送验证码 " onclick="get_phone_code(this);" />
					
				</div>
				<div class="form-group field field-icon-right">
					验证码<input type="text" name="codeMes" placeholder="请输入您的验证码 " data-validate="required:验证码不能为空">
					<c:if test="${param.info == '4' }">
			  			<span style='color:red;font-size:9pt'>验证码错误！</span>
					</c:if>
				</div>
				<div class="form-group">
					<button type="submit" class="tran pr">
						<a href="javascript:;" class="tran">确认修改</a>
						<img class="loading" src="../images/loading.gif">
					</button>
				</div>
				<div class="from-line"></div>
				<div class="form-group">
					<a href="javascript:;" class="move-signup	a-tag tran blue-border">还没有帐号？免费注册<i class="iconfont tran">&#xe606;</i></a>
				</div>
				<div class="form-group">
					<a href="javascript:;" class="move-login a-tag tran">已有帐号？登录<i class="iconfont tran">&#xe606;</i></a>
				</div>
			</div>
			</form>
			<!-- 密码重置 -->
		</div>
	</div>
	
	<%--<div style="height:80px;"></div>--%>
	<%----%>
	<%--<div class="login-footer">--%>
		<%--<p>Copyright© 2017 Powered by 斗地主 </p>--%>
	<%--</div>--%>
	<script>
		var _handle='';//储存电话是否填写正确
		$(function(){
			$(".signup-form input").on("focus",function(){
				$(this).parent().addClass("border");
			});
			$(".signup-form input").on("blur",function(){
				$(this).parent().removeClass("border");
			})
			//步骤切换
			var _boxCon=$(".box-con");
			$(".move-login").on("click",function(){
				$(_boxCon).css({
					'marginLeft':0
				});
			});
			$(".move-signup").on("click",function(){
				$(_boxCon).css({
					'marginLeft':-320
				});
			});
	/* 		$(".move-other").on("click",function(){
				$(_boxCon).css({
					'marginLeft':-640
				})
			}); */
			$(".move-reset").on("click",function(){
				$(_boxCon).css({
					'marginLeft':-640
				})
			});
			$("body").on("click",".move-addinf",function(){
				$(_boxCon).css({
					'marginLeft':-960
				})
			});
			
		});
		
	</script>
</div>
</body>
</html>
