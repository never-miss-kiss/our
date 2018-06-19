<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0"> 
	<link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/pintuer.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/admin.css"/>
	<script src="${pageContext.request.contextPath}/wang/script/pintuer.js"></script>
	<script src="${pageContext.request.contextPath}/wang/script/jquery-1.11.2.js"></script>
	  <style type="text/css">
		  #uimg{
			  float: right;

		  }
	  </style>
  </head>
  
  <body>
    <div class="panel">
    	<div class="panel_head">
    		<strong>
    			<span class="icon-key">用户详情</span>
    		</strong>
    	</div>
    	<hr/>
    	<div class="body-content">


    		<div class="form-group desp hidd">
    			<div class="label">
    				<label for="sitename"><span class="desname">用户ID：</span></label>
    				<label for="sitename" ><span class="field des">${userId.userId }</span></label>
    			</div>
    		</div>
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">用户昵称：</span></label>
    				<label for="sitename"><span class="field des">${userId.nickname }</span></label>
    			</div>
    		</div>
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">学校：</span></label>
    				<label for="sitename"><span class="field des">${userId.schoolId }</span></label>
    			</div>
    		</div>
    		<div class="form-group desp" id="uimg">
    			<div class="label">
    				<label for="sitename"><span class="desname">用户头像：</span></label>  				
    				<label for="sitename">
    					<img class="imges" src="${pageContext.request.contextPath}/images/${userId.photo}">
    				</label>
    			</div> 
    		</div>
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">性别：</span></label>
    				<label for="sitename"><span class="field des">${userId.sex }</span></label>
    			</div>
    		</div>
    	
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">手机：</span></label>
    				<label for="sitename"><span class="field des">${userId.telphone }</span></label>
    			</div>
    		</div>
			<div class="form-group desp">
				<div class="label">
					<label for="sitename"><span class="desname">QQ：</span></label>
					<label for="sitename"><span class="field des">${userId.qq }</span></label>
				</div>
			</div>
			<div class="form-group desp">
				<div class="label">
					<label for="sitename"><span class="desname">邮箱：</span></label>
					<label for="sitename"><span class="field des">${userId.email }</span></label>
				</div>
			</div>
			<div class="form-group desp">
				<div class="label">
					<label for="sitename"><span class="desname">状态：</span></label>
					<label for="sitename"><span class="field des">${userId.state }</span></label>
				</div>
			</div>

      	
    		<button class="button border-dot ret desname" onclick="window.location.href='${pageContext.request.contextPath }/admin/selectAllUser.action'">返回</button>
 
    	</div>
    </div>
    
  </body>
</html>

