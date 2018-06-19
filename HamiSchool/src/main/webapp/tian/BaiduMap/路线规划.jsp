<%--
  Created by IntelliJ IDEA.
  User: 勿忘初心
  Date: 2018/6/10
  Time: 17:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>

    <link href="<%= basePath %>bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="<%= basePath %>tian/helpBuyDetail/help-buy.css" rel="stylesheet">
    <script src="<%= basePath %>bootstrap/js/jquery.min.js"></script>
    <script src="<%= basePath %>bootstrap/js/transition.js"></script>
    <script src="<%= basePath %>bootstrap/js/bootstrap.js"></script>
    <script src="<%= basePath %>tian/helpBuyDetail/help-buy.js"></script>
    <%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />--%>
    <%--<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />--%>
    <%--<style type="text/css">--%>
        <%--body, html,#allmap {width: 100%;height: 100%;overflow: hidden;margin:0;font-family:"微软雅黑";}--%>
    <%--</style>--%>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=4MuXt8BaTfnKIcCU0Q8UBuSyHuLAZcvN"></script>
    <title>地图展示</title>

</head>

<body>
<div id="l-map" style="height: 500px;"></div>
<div id="r-result"></div>
</body>
</html>
<script type="text/javascript">
    // 百度地图API功能
    var map = new BMap.Map("l-map");
    map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);
    var walking = new BMap.WalkingRoute(map, {renderOptions: {map: map, panel: "r-result", autoViewport: true}});
    walking.search("天坛公园", "故宫");
//    http://lbsyun.baidu.com/cms/jsapi/reference/jsapi_reference_3_0.html#a7b18
    //WalkingRouteResult -- RoutePlan --
</script>

