<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<<<<<<< .mine
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
=======
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
>>>>>>> .r348
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title></title>   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css"/>
	<script src="${pageContext.request.contextPath}/script/pintuer.js"></script>
	<script src="${pageContext.request.contextPath}/script/jquery-1.11.2.js"></script>
  </head>  
  <body>
    <div class="panel">
    	<div class="panel_head">
    		<strong>
    			<span class="icon-key">商品详情</span>
    		</strong>
    	</div>
    	<hr/>
    	<div class="body-content">
    		<div class="form-group desp hidd">
    			<div class="label">
    				<label for="sitename"><span class="desname">商品ID：</span></label>
    				<label for="sitename" ><span class="field des">${good.goodsId }</span></label>
    			</div>
    		</div>
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">商品名称：</span></label>
    				<label for="sitename"><span class="field des">${good.goodsName }</span></label>
    			</div>
    		</div>
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">商品图片：</span></label>  				
    				<label for="sitename">
    					<c:forEach var="p" items="${good.goodsPictures }">
    						<img class="imges" src="${pageContext.request.contextPath}/images/${p.imgURL}">
    					</c:forEach>
    				</label>
    			</div>
    		</div>
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">商品描述：</span></label>
    				<label for="sitename"><span class="field des">${good.description }</span></label>
    			</div>
    		</div>
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">商品种类：</span></label>
    				<label for="sitename"><span class="field des">${good.goodsKind.goodsKindName }</span></label>
    				<label for="sitename"><span class="field des">${good.goodsSecKind.secondName }</span></label>
    			</div>
    		</div>
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">联系方式：</span></label>
    				<label for="sitename"><span class="field des">${good.telephone }</span></label>
    			</div>
    		</div>
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">发布人：</span></label>
    				<label for="sitename"><span class="field des">${good.publisher }</span></label>
    			</div>
    		</div>
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">发布用户：</span></label>
    				<label for="sitename"><span class="field des">${good.user.getNickname() }</span></label>
    			</div>
    		</div>
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">发布时间：</span></label>
    				<label for="sitename"><span class="field des">${good.publishDate }</span></label>
    			</div>
    		</div>   
    		<div class="form-group desp">
    			<div class="label">
    				<label for="sitename"><span class="desname">发布地点：</span></label>
    				<label for="sitename"><span class="field des">${good.address }</span></label>
    			</div>
    		</div>   	
    		<button class="button border-dot ret desname" onclick="window.location.href='${pageContext.request.contextPath }/adminGoods/adminGoods_goodsList'">返回</button>

    			<c:if test="${fn:length(collect)==0}">
    				<a class="button border-dot delete desname" href="${pageContext.request.contextPath }/adminGoods/adminGoods_deleteGoods?goods.goodsId=${good.goodsId }" onclick="return confirm('确定要删除${good.goodsName}吗 ？ \u000d                    发布人： ${good.publisher }\u000d                    发布用户：${good.user.getNickname() }');">删除</a>    			
    			</c:if>

    	</div>
    </div>
    
  </body>
</html>
