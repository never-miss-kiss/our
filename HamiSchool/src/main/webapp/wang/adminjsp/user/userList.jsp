<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <head>
    
    <title>用户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/pintuer.css">
    <script src="${pageContext.request.contextPath }/script/jquery-1.11.2.js"></script>
    <script src="${pageContext.request.contextPath }/script/pintuer.js"></script> 

	<script type="text/javascript">
		function del(id){
			if(confirm("确定注销吗")){
	          //location.href="确认后跳转的页面";
	          //alert(id);
	          var xmlHttp = new XMLHttpRequest();
			var url = "${pageContext.request.contextPath }/adminUser/adminUser_sealUser?user.userId="+id;
			xmlHttp.open("get", url, true);
			xmlHttp.send(null);
			
			xmlHttp.onreadystatechange = function(){
			
				if(xmlHttp.status ==200 && xmlHttp.readyState == 4){
					var result = xmlHttp.responseText;
					//alert(result);
					if(result == 1){
						document.getElementById("button01"+id).disabled = true;
						document.getElementById("button02"+id).disabled = true;
						document.getElementById("button03"+id).disabled = true;
						alert("注销成功！！！");
					}else{
					//alert(id);
						alert("注销失败？？？？？");
					}
					
				}
			}
	      	}else{
	         
	      	}
		
		}
	</script>

  </head>
  
  <body>
   	<div>
	  <form action="${pageContext.request.contextPath }/adminUser/adminUser_userList" method="post">
		用户名:<input type='text' name='user.nickname' value='${queryName }'>&nbsp;&nbsp;
		性别:<select name='user.sex'>
			   	<option value=''>请选择</option>
			    	<%-- <c:forEach var="s" items="${user }">
			    		<option value="${s.sex }" <c:if test='${s.sex == sex }'>selected</c:if> >${s.nickName }</option>
			    	</c:forEach> --%>
			    	<option value="男">男</option>
			    	<option value="女">女</option>
		    </select>
		    
		    &nbsp;&nbsp;
		    <input type='submit' value='查询' />
	   </form>
	</div>   
	<br />
	 <table class="table table-hover">
		 <tr> 
		     <th>用户名</th>
			 <th>用户编号</th> 
			 <th>是否注销</th> 
			 <th>性别</th> 
			 <th>电话号码</th> 
			 <th>操作</th>
		 </tr> 
		 
		
		 <c:forEach var="e" items="${page.user }">
		 <c:if test="${e.isExist == 1}">
			 <tr> 
			 	<td>${e.nickname }</td> 
			  	<td>${e.userId}</td> 
			    <td>${e.isExist } </td> 
			    <td>${e.sex } </td> 
			    <td>${e.telephone }</td>
				<td> 
				<button id="button01${e.userId}" class="button border-dot" onclick="window.location.href='${pageContext.request.contextPath }/adminUser/adminUser_preUser?user.userId=${e.userId }'">详情</button>
				<button id="button02${e.userId}" class="button border-dot" onclick="return del('${e.userId}');">注销</button>
				<button id="button03${e.userId}" class="button border-dot" onclick="window.location.href='${pageContext.request.contextPath }/adminUser/adminUser_retUser?user.userId=${e.userId }'">留言</button>
				</td>
				</tr>
		</c:if>
			 <c:if test="${e.isExist != 1}">
			 <tr> 
			    <td>${e.nickname }</td> 
			  	<td>${e.userId}</td> 
			    <td>${e.isExist } </td> 
			    <td>${e.sex } </td> 
			    <td>${e.telephone }</td>
				<td>
			    <button id="button01" disabled="disabled" class="button border-dot" onclick="window.location.href='${pageContext.request.contextPath }/adminUser/adminUser_preUser?user.userId=${e.userId }'">详情</button>
				<button id="button02" disabled="disabled" class="button border-dot"  onclick="return del('${e.userId}');">注销</button>
				<button id="button03" disabled="disabled" class="button border-dot" onclick="window.location.href='${pageContext.request.contextPath }/adminUser/adminUser_retUser?user.userId=${e.userId }'">留言</button>
				</td>

			 </tr>
			 </c:if>
		 </c:forEach>
		
		 
     </table>
	   <br />
	   <c:set var='url' value="${pageContext.request.contextPath }/adminUser/adminUser_userList?user.nickname=${queryName }&user.sex=${sex}"></c:set>
	   
	    <!--分页栏-->
        <div class="page" style="text-align:center">
         <c:if test="${page.pageCount == 0 }">
        	<span style="color:gray;font-weight:800;font-size:30px">对不起，没有此用户！！！</span><br>
        </c:if>
        	<c:if test="${page.pageNow !=1 }">
         	<a href="${url }&pageNow=1&pageSize=${page.pageSize}">首页</a>&nbsp;
             <a href="${url }&pageNow=${page.pageNow-1 }&pageSize=${page.pageSize}">上一页</a>&nbsp;
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
