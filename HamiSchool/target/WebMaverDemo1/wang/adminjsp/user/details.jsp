<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

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
    				<label for="sitename" ><span class="field des">${useryu.userId }</span></label>
    			</div>
    		</div>
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">用户昵称：</span></label>
    				<label for="sitename"><span class="field des">${useryu.nickname }</span></label>
    			</div>
    		</div>
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">用户状态：</span></label>
    				<label for="sitename"><span class="field des">${useryu.isExist }</span></label>
    			</div>
    		</div>
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">用户头像：</span></label>  				
    				<label for="sitename">
    				<!-- 
    					<c:forEach var="p" items="${useryu.iconURL }">
    						<img class="imges" src="${pageContext.request.contextPath}/images/${p.imgURL}">
    					</c:forEach>
    				 -->
    					<img class="imges" src="${pageContext.request.contextPath}/images/${useryu.iconURL}">
    				</label>
    			</div> 
    		</div>
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">性别：</span></label>
    				<label for="sitename"><span class="field des">${useryu.sex }</span></label>
    			</div>
    		</div>
    	
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">联系方式：</span></label>
    				<label for="sitename"><span class="field des">${useryu.telephone }</span></label>
    			</div>
    		</div>
      	
    		<button class="button border-dot ret desname" onclick="window.location.href='${pageContext.request.contextPath }/admin/selectAllUser.action'">返回</button>
 
    	</div>
    </div>
    
  </body>
</html>

