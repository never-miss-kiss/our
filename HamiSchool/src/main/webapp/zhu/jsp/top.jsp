<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">

<head>

	<meta name="toTop" content="true">

	<meta charset="UTF-8">

	<title>自研返回顶部插件</title>

	<style>

		html{

			height:3000px;

		}

	</style>

	<script src="http://www.jq22.com/jquery/1.8.3/jquery.min.js"></script>

	<script type="text/javascript" src="<%= basePath %>zhu/js/toTop.js"></script>

</head>

<body>

	<div>向下滚动查看效果</div>

</body>

</html>