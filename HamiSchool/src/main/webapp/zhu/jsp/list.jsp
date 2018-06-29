<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta http-equiv="X-UA-Compatible"content="IE=9; IE=8; IE=7; IE=EDGE" />
		<title>商品列表页面</title>
		<link href="<%= basePath %>css/all.css" rel="stylesheet" type="text/css" />
		<script src="<%= basePath %>js/jquery-1.8.0.min.js"></script>
		<script src="<%= basePath %>js/list.js"></script>
		<script>
			function getPage(curPage){
			    document.getElementById("curPage").value = curPage;
			    document.getElementById("mainForm").submit();
			}
		</script>
	</head>
	<body style="background: #e1e9eb;">
		<form action="<%=basePath%>glist" id="mainForm" method="post">
			<input type="hidden" name="currentPage" id="currentPage" value="${page.currentPage}"/>

			<div class="right">
				<div class="current">当前位置：<a href="javascript:void(0)" style="color:#6E6E6E;" onclick="">商品管理</a> &gt; 商品列表</div>
				<div class="rightCont">
					<p class="g_title fix">商品列表 <a class="btn03" href="#">新 增</a></p>
					<table class="tab1">
						<tbody>
							<tr>
								<input type="hidden" name="curPage" id="curPage"/>
								<td width="90" align="right">商品号：</td>
								<td>
									<input name="gid" type="text" class="allInput" value="${quergyPojo.gid}"/>
								</td>
								<td width="90" align="right">商品名：</td>
								<td>
									<input name="gname" type="text" class="allInput" value="${quergyPojo.gname}"/>
								</td>
								<td width="90" align="right">价格：</td>
								<td>
									<input name="minprice" type="text" class="allInput" value="${quergyPojo.minPrice}"/>
								</td>
								<td>&nbsp&nbsp~&nbsp&nbsp</td>
								<td>
									<input name="maxprice" type="text" class="allInput" value="${quergyPojo.maxPrice}" />
								</td>

								<td width="90" align="right">类别：</td>
								<td>
									<select name="catory">
										<option value="1">--请输入类别--</option>
										<c:forEach items="${clist}" var="catory">
											<c:choose>
												<c:when test="${catory.cid == quergyPojo.catory_id}">
													<option value="${catory.cid}" selected>${catory.cname}</option>
												</c:when>
												<c:otherwise>
													<option value="${catory.cid}">${catory.cname}</option>
												</c:otherwise>
											</c:choose>
										</c:forEach>

									</select>
								</td>

	                            <td width="85" align="right"><input type="submit" class="tabSub" value="查 询" /></td>
	       					</tr>
						</tbody>
					</table>
					<div class="zixun fix">
						<table class="tab2" width="100%">
							<tbody>
								<tr>
								    <th><input type="checkbox" id="all"/></th>
								    <th>商品号</th>
								    <th>商品名</th>
								    <th>价格</th>
								    <th>图片</th>
								    <th>上架时间</th>
								    <th>类别</th>
									<th>操作</th>
								</tr>
								<c:forEach items="${pageInfo.list}" var="goods">
									<tr>
										<th><input type="checkbox" id="each"/></th>
										<td>${goods.gid}</td>
										<td>${goods.name}</td>
										<td>${goods.price}</td>
										<td>
											<img src="<%=basePath%>/${goods.pic}" height="30px" width="30px" alt=""/>
										</td>
										<td>
											<fmt:formatDate value="${goods.createtime}" pattern="yyyy-MM-dd hh:mm"/>
										</td>
										<td>${goods.catory.cname}</td>
										<td>修改  删除</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div class='page fix'>
							共 <b>${pageInfo.total}</b> 条

								<a href="javascript:getPage(${pageInfo.firstPage})" class='first'>首页</a>
								<c:if test="${!pageInfo.isFirstPage}">
									<a href="javascript:getPage(${pageInfo.prePage})" class='pre'>上一页</a>
								</c:if>

							当前第<span>${pageInfo.pageNum}</span>页

								<c:if test="${!pageInfo.isLastPage}">
									<a href="javascript:getPage(${pageInfo.nextPage})" class='next'>下一页</a>
								</c:if>
								<a href="javascript:getPage(${pageInfo.lastPage})" class='last'>末页</a>
						</div>
					</div>
				</div>
			</div>
	    </form>
	</body>
</html>