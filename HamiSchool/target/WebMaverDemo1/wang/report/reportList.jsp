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
  <div class="rightCont">
  <div>
	  <form action="${pageContext.request.contextPath }/admin/reportList.action" method="post" id="mainForm">
		  <input type="hidden" name="curPage" id="curPage" />
		  <%--<table>--%>
		  <div class="input-inline clearfix form-group field field-icon-right">
		      <input type='text' class="input input-small" placeholder="请正确输入举报的Id" size="60" style="height:38px" name='' value='${reportId }' />
		      <input type='submit' value='查 询' style="width:100px;" class="button button-little bg-back"/>
		  </div>
		  <%--</table>--%>
	  </form>
  </div>
  <br />
  <table class="table table-condensed text-center ">
	  <tr>
		  <th>被举报者账号</th>
		  <th>举报原因</th>
		  <th>举报者账号</th>
		  <th>来源</th>
		  <th>举报时间</th>
		  <th>操作</th>
	  </tr>
	  <c:forEach var="r" items="${pageInfo.list }">
		  <tr>
			  <td>${r.reportId }</td>
			  <td>${r.reasonCategoryId }</td>
			  <td>${r.reportedUserId } </td>
			  <td>${r.sourceItemId } </td>
			  <td><fmt:formatDate value="${r.createTime}" pattern="yyyy-MM-dd hh:mm"/> </td>

			  <td><button type="button" class="button" onclick="('<%--${r.reportId--%>}')"> <span class="<%--icon-trash-o--%> text-red"></span>详情</button></td>
			  <td><button type="button" class="button" onclick="deleteTip('${r.reportId}')"> <span class="icon-trash-o text-red"></span>删除</button></td>
		  </tr>
	  </c:forEach>
  </table>

  <br />
	   
	   <%--<c:set var='url' value="${pageContext.request.contextPath }/wang/adminjsp/tip/reportList.jsp?reportId=${report.reportId}"></c:set>--%>
	   
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
  </div>

  </body>
  <script type="text/javascript">
      function deleteTip(id){
          var res = confirm('您确定要删除吗???');
          if(res == true){
              var xmlHttp = new XMLHttpRequest();
              var url="${pageContext.request.contextPath }/admin/deleteReport.action?report.reportId="+id;
              xmlHttp.open("get",url,true);
              xmlHttp.send(null);
              xmlHttp.onreadystatechange = function(){
                  if(xmlHttp.status == 200 && xmlHttp.readyState == 4){
                      var s = xmlHttp.responseText;
                      if(s == '1'){
                          alert("删除成功！！");
                          window.location.href="${pageContext.request.contextPath }/wang/adminjsp/tip/reportList.jsp?reportId=${report.reportId}";
                      }else{
                          alert("删除失败！！");
                      }
                  }
              };
          }
      }
  </script>
</html>