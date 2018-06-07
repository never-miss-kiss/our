<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>举报</title>
    
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
	  <form action="${pageContext.request.contextPath }/adminTip/adminTip_tipsList" method="post">
		  <div class="input-inline clearfix form-group field field-icon-right">
		      <input type='text' class="input input-small" placeholder="请正确输入被举报者手机号" size="60" style="height:38px" name='tip.user.telephone' value='${queryTel }' data-validate="regexp#(^1(3|4|5|7|8)\d{9}$):手机号不正确"> 
		      <input type='submit' value='查 询' style="width:100px;" class="button button-little bg-back"/>
		  </div>
	  </form>
</div> 

	<br />
	 <table class="table table-condensed text-center ">
		 <tr> 
			 <th>被举报者账号</th> 
			 <th>举报原因</th> 
			 <th>举报者账号</th> 
			 <th>操作</th>
		 </tr> 
		 
		
		 <c:forEach var="e" items="${page.tip }">
			 <tr> 
			 	<td>${e.user.telephone }</td> 
			  	<td>${e.tipReason }</td> 
			    <td>${e.tipUser.telephone } </td> 
			    <td><button type="button" class="button" onclick="deleteTip('${e.tipId}')"> <span class="icon-trash-o text-red"></span>删除</button></td>
			 </tr>
		 </c:forEach>	 
     </table>
     
     <script type="text/javascript">
     	function deleteTip(id){
	     	var res = confirm('您确定要删除吗???');  
	    	if(res == true){
	     		var xmlHttp = new XMLHttpRequest();
				var url="${pageContext.request.contextPath }/adminTip/adminTip_deleteTip?tip.tipId="+id;
				xmlHttp.open("get",url,true);
				xmlHttp.send(null);
				xmlHttp.onreadystatechange = function(){
					if(xmlHttp.status == 200 && xmlHttp.readyState == 4){
						var s = xmlHttp.responseText;
						if(s == '1'){
							alert("删除成功！！");
							window.location.href="${pageContext.request.contextPath }/adminTip/adminTip_tipsList?tip.user.telephone=${queryTel }";
						}else{
							alert("删除失败！！");
						}
					}
				};
			}
     	}
     </script>
     
	   <br />
	   
	   <c:set var='url' value="${pageContext.request.contextPath }/adminTip/adminTip_tipsList?tip.user.telephone=${queryTel }"></c:set>
	   
	    <!--分页栏-->
        <div class="page" style="text-align:center">
         <c:if test="${page.pageCount == 0 }">
        	<span style="color:gray;font-weight:800;font-size:30px">对不起，此用户没有被举报的信息！！！</span><br>
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