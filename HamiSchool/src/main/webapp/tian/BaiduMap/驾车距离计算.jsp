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
<div id="allmap" style="height: 500px;"></div>
</body>
</html>
<script type="text/javascript">
    // 百度地图API功能
    var map = new BMap.Map("allmap");
    map.centerAndZoom(new BMap.Point(116.404, 39.915), 12);
    var output = "从上地到西单驾车需要";
    var searchComplete = function (results){
        if (transit.getStatus() != BMAP_STATUS_SUCCESS){
            return ;
        }
        var plan = results.getPlan(0);
        output += plan.getDuration(true) + "\n";                //获取时间
        output += "总路程为：" ;
        output += plan.getDistance(true) + "\n";             //获取距离
    }
    var transit = new BMap.DrivingRoute(map, {renderOptions: {map: map},
        onSearchComplete: searchComplete,
        onPolylinesSet: function(){
            setTimeout(function(){alert(output)},"1000");
        }});
    transit.search("上地", "西单");
</script>

