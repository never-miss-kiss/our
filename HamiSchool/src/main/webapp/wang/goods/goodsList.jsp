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
	<link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/pintuer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/admin.css">
    <script src="${pageContext.request.contextPath }/wang/script/jquery-1.11.2.js"></script>
    <script src="${pageContext.request.contextPath }/wang/script/pintuer.js"></script>
	  <link href="${pageContext.request.contextPath}/wang/css/all.css" rel="stylesheet" type="text/css" />

	  <script type="text/javascript">
        function getPage(curPage) {
            //将隐藏域的值变成curPage
            $("#curPage").val(curPage);
//             触发表单的提交事件
            document.getElementById("mainForm").submit();
        }
    </script>

  </head>
  
  <body>
  <div>
	  <form action="${pageContext.request.contextPath }/admin/goodsList.action" method="post" id="mainForm">

		  <input type="hidden" name="curPage" id="curPage" />
		  <div class="input-inline clearfix">
	            
			<div class="button-group" style=" float:left">

	         <select name='goods.goodsKind.goodsKindId'  class="input input-small" style="width:200px;height:38px">
		    	<option value=''>请选择商品类型</option>
		    	<c:forEach var="d" items="${clist }">
		    		<option value="${d.goodsCategoryId }" <c:if test='<%--${d.goodsCategoryId == kindsId }--%>'>selected</c:if> >${d.goodsCategoryName }</option>
		    	</c:forEach>
		     </select> 
		     </div>
		     <input type='text' class="input input-small" placeholder="请输入商品名" size="60" style="height:38px" name='goods.goodsName' value='${queryName }'> 
		    <input type='submit' value='查 询' style="width:100px;" class="button button-little bg-back"/>
		     </div>
	   </form>
</div> 

	<br />
  <table class="table table-hover table-condensed ">
	  <tr>
		  <th width="10%" style="text-align: center">二手商品Id</th>
		  <th width="10%" style="text-align: center">二手商品名</th>
		  <th width="10%" style="text-align: center">商品类型</th>
		  <th width="10%" style="text-align: center">发布用户</th>
		  <th width="20%" style="text-align: center">发布时间</th>
		  <th width="30%" style="text-align: left">操作</th>
	  </tr>
	  <c:forEach var="g" items="${pageInfo.list}">
		  <tr>
			  <td width="10%" style="text-align: center">${g.goodsId}</td>
			  <td width="10%" style="text-align: center">${g.name }</td>
			  <td width="10%" style="text-align: center">${g.category.goodsCategoryName }</td>
			  <td width="10%" style="text-align: center">${g.userId}</td>

			  <td width="20%" style="text-align: center"><fmt:formatDate value='${g.releaseTime }' pattern='yyyy-MM-dd' /></td>
			  <%--<td style="text-align: center"></td>--%>
			  <td width="30%" style="text-align: left" >
				  <button id="button01${e.userId}" class="button border-dot" onclick="window.location.href='${pageContext.request.contextPath }/home/selectUser.action?userId=${e.userId }'">详情</button>
				  <button id="button02${e.userId}" class="button border-dot" onclick="return del('${e.userId}');">删除</button>
				  <%--<button id="button03${e.userId}" class="button border-dot" onclick="window.location.href='${pageContext.request.contextPath }/adminUser/adminUser_retUser?userId=${e.userId }'"></button>--%>
			  </td>
		  </tr>
	  </c:forEach>
  </table>
	
	 <%--<table class="table table-condensed text-center ">
		 <tr> 
			 <th>二手商品Id</th>
			 <th>二手商品名</th>
			 <th>商品类型</th>
			 <th>发布用户</th> 
			 <th>发布时间</th> 
			 <th>操作</th>
		 </tr> 
		 
		
		 <c:forEach var="g" items="${pageInfo.list }">
			 <tr> 
			 	<td>${g.goodsId }</td>
			 	<td>${g.name }</td>
				 <td>${g.userId}</td>
			  	<td>${g.goodsCategory.goodsCategoryName}</td>
			    <td>${e.releaseTime} </td>
			    <td><fmt:formatDate value='${e.publishDate }' pattern='yyyy-MM-dd' /> </td> 
			    <td><button class="button border-dot button-little" onclick="window.location.href='${pageContext.request.contextPath }/adminGoods/adminGoods_preGoods?goods.goodsId=${e.goodsId }'">详情</button>
			    <button class="button border-dot button-little" onclick="window.location.href='${pageContext.request.contextPath }/?goods.goodsId=${e.goodsId }'">删除</button></td>
			 </tr>
		 </c:forEach>	 
     </table>--%>
     
	   <br />
	   
	   <%--<c:set var='url' value="${pageContext.request.contextPath }/adminGoods/adminGoods_goodsList?goods.goodsName=${queryName }&goods.goodsKind.goodsKindId=${kindsId }"></c:set>--%>
	   
	    <!--分页栏-->
  <div class="page fix" style="text-align:center">
	  <c:if test="${pageInfo.total == 0 }">
		  <span style="color:gray;font-weight:800;font-size:30px">对不起，没有此举报！！！</span><br>
	  </c:if>
	  共 <b>${pageInfo.total}</b> 条
	  <a href="javascript:getPage(${pageInfo.firstPage})" class='first'>首页</a>
	  <c:if test="${!pageInfo.isFirstPage}">
		  <a href="javascript:getPage(${pageInfo.prePage})" class="pre">上一页</a>
	  </c:if>

	  第<span>${pageInfo.pageNum}</span>页 ||
	  共<span>${pageInfo.pages}</span>页
	  <c:if test="${!pageInfo.isLastPage}">
		  <a href="javascript:getPage(${pageInfo.nextPage})" class='next'>下一页</a>
	  </c:if>
	  <a href="javascript:getPage(${pageInfo.lastPage})" class='last'>末页</a>
	  跳至&nbsp;<input id="currentPageText" type='text' value='${currentPage}' class='allInput w28' />&nbsp;页&nbsp;
	  <a href="javascript:getPage($('#currentPageText').val())" class='go'>GO</a>
  </div>
  </body>
</html>
