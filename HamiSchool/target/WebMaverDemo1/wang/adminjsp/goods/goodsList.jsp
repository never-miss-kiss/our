<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>商品</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/admin.css">
    <script src="${pageContext.request.contextPath }/script/jquery-1.11.2.js"></script>
    <script src="${pageContext.request.contextPath }/script/pintuer.js"></script> 
    
    <script type="text/javascript">
  
    
    </script>

  </head>
  
  <body>
  <div>
	  <form action="${pageContext.request.contextPath }/adminGoods/adminGoods_goodsList" method="post">
	  <div class="input-inline clearfix">
	            
			<div class="button-group" style=" float:left">
	         <select name='goods.goodsKind.goodsKindId'  class="input input-small" style="width:200px;height:38px">
		    	<option value=''>请选择商品类型</option>
		    	<c:forEach var="d" items="${kinds }">
		    		<option value="${d.goodsKindId }" <c:if test='${d.goodsKindId == kindsId }'>selected</c:if> >${d.goodsKindName }</option>
		    	</c:forEach>
		     </select> 
		     </div>
		     <input type='text' class="input input-small" placeholder="请输入商品名" size="60" style="height:38px" name='goods.goodsName' value='${queryName }'> 
		    <input type='submit' value='查 询' style="width:100px;" class="button button-little bg-back"/>
		     </div>
	   </form>
</div> 

	<br />
	
	 <table class="table table-condensed text-center ">
		 <tr> 
			 <th>二手商品名</th> 
			 <th>商品类型</th> 
			 <th>发布人</th> 
			 <th>发布用户</th> 
			 <th>发布时间</th> 
			 <th>操作</th>
		 </tr> 
		 
		
		 <c:forEach var="e" items="${page.goods }">
			 <tr> 
			 	<td>${e.goodsName }</td> 
			  	<td>${e.goodsKind.goodsKindName}&nbsp;${e.goodsSecKind.secondName }</td> 
			    <td>${e.publisher } </td> 
			    <td>${e.user.nickname } </td> 
			    <td><fmt:formatDate value='${e.publishDate }' pattern='yyyy-MM-dd' /> </td> 
			    <td><button class="button border-dot button-little" onclick="window.location.href='${pageContext.request.contextPath }/adminGoods/adminGoods_preGoods?goods.goodsId=${e.goodsId }'">详情</button></td>
			 </tr>
		 </c:forEach>	 
     </table>
     
	   <br />
	   
	   <c:set var='url' value="${pageContext.request.contextPath }/adminGoods/adminGoods_goodsList?goods.goodsName=${queryName }&goods.goodsKind.goodsKindId=${kindsId }"></c:set>
	   
	    <!--分页栏-->
        <div class="page" style="text-align:center">
         <c:if test="${page.pageCount == 0 }">
        	<span style="color:gray;font-weight:800;font-size:30px">对不起，没有此类商品！！！</span><br>
         </c:if>
        	<c:if test="${page.pageNow !=1 }">     	
         	<a href="${url }&pageNow=1&pageSize=${page.pageSize}">首页</a>&nbsp;
             <a  href="${url }&pageNow=${page.pageNow-1 }&pageSize=${page.pageSize}">上一页</a>&nbsp;
            </c:if>
           <!--  <a href="">1</a>&nbsp;<a href="">2</a>&nbsp;<a href="">3</a>&nbsp; -->
           <c:if test="${page.pageCount != 0 }">
            <c:if test="${page.pageNow != page.pageCount }">
             <a href="${url }&pageNow=${page.pageNow+1 }&pageSize=${page.pageSize}">下一页</a>&nbsp;
             <a href="${url }&pageNow=${page.pageCount }&pageSize=${page.pageSize}">尾页</a>&nbsp;
            </c:if>
            
                当前<span style="color:red">${page.pageNow }</span>/${page.pageCount }页&nbsp;
           </c:if>
       </div>
  </body>
</html>
