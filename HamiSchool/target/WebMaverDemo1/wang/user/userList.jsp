<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

  <head>
    
    <title>用户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<link rel="stylesheet" href="${pageContext.request.contextPath }/wang/css/pintuer.css">
	  <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css">
    <script src="${pageContext.request.contextPath }/wang/script/jquery-1.11.2.js"></script>
	  <link href="${pageContext.request.contextPath}/wang/css/all.css" rel="stylesheet" type="text/css" />
    <script src="${pageContext.request.contextPath }/wang/script/pintuer.js"></script>
	  <script src="${pageContext.request.contextPath}/wang/script/list.js"></script>
	  <script type="text/javascript">
          function getPage(curPage) {


              //将隐藏域的值变成curPage
             $("#curPage").val(curPage);

//             触发表单的提交事件
              document.getElementById("mainForm").submit();

          }
	  </script>

	<script type="text/javascript">
		function del(id){
			if(confirm("确定注销吗")){
	          //location.href="确认后跳转的页面";
	          //alert(id);
	          var xmlHttp = new XMLHttpRequest();
			var url = "${pageContext.request.contextPath }/admin/?user.userId="+id;
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
   	<div class="rightCont">
		<form action="${pageContext.request.contextPath}/admin/selectAllUser.action" id="mainForm" method="get">
			<table class="tab1">
				<tr>
					<%--隐藏域 保存我们当前的页面数--%>
					<input type="hidden" name="curPage" id="curPage" />
					<td width="90" align="right">userid</td>
					<td >
						<input name="userId" type="text" class="allInput" >
					</td>
					<td width="90" align="right">schoolid</td>
					<td >
						<input name="schoolId" type="text" class="allInput">
					</td>
					<td width="90" align="right">性别</td>
					<td>
						<select name="sex">
							<option value="1">--请选择性别--</option>
							<option value="F">男</option>
							<option value="M">女</option>
						</select>
					</td>
						<td width="85" align="right"><input type="submit" class="tabSub" value="查 询" /></td>
				</tr>
			</table>
		</form>
	<br />
	<tbody>
	<table class="table table-hover">
		<tr>
			<th width="20%" style="text-align: center">用户名</th>
			<th width="10%" style="text-align: center">用户编号</th>
			<th width="10%" style="text-align: center">是否注销</th>
			<th width="10%" style="text-align: center">性别</th>
			<th width="20%" style="text-align: center">电话号码</th>
			<th width="30%" >操作</th>
		</tr>
		<c:forEach var="e" items="${pageInfo.list}">
			<tr>
				<td style="text-align: center">${e.nickname}</td>
				<td style="text-align: center">${e.userId}</td>
				<td style="text-align: center">${e.schoolId}</td>
				<td style="text-align: center">${e.sex}</td>
				<td style="text-align: center">${e.telphone}</td>
				<td>
					<button id="button01${e.userId}" class="button border-dot" onclick="window.location.href='${pageContext.request.contextPath }/home/selectUser.action?userId=${e.userId }'">详情</button>
					<button id="button02${e.userId}" class="button border-dot" onclick="return del('${e.userId}');">注销</button>
					<button id="button03${e.userId}" class="button border-dot" onclick="window.location.href='${pageContext.request.contextPath }/adminUser/adminUser_retUser?userId=${e.userId }'">留言</button>
				</td>
			</tr>
		</c:forEach>
	</table>
	</tbody>

	   <br />
	   <%--<c:set var='url' value="${pageContext.request.contextPath }/adminUser/adminUser_userList?user.nickname=${queryName }&user.sex=${sex}"></c:set>--%>
	<%--pageInfo.getPageSize();//每页显示的数目--%>
	<%--pageInfo.getList();//页面的内容--%>
	<%--pageInfo.getPrePage();//上一页--%>
	<%--pageInfo.getPageNum();//当前页--%>
	<%--pageInfo.getNextPage()；//下一页--%>
	<%--pageInfo.getPages();//总页数--%>
	<%--pageInfo.getTotal();//总条数--%>
	<div class="page fix" style="text-align:center">
		<c:if test="${pageInfo.total == 0 }">
			<span style="color:gray;font-weight:800;font-size:30px">对不起，没有此用户！！！</span><br>
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

	</div>
  </body>
</html>
