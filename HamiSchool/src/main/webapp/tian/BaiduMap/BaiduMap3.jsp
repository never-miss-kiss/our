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
<div id="r-result">请输入:<input type="text" id="suggestId" size="20" value="" style="width:150px;" /></div>
<div id="r-result2">请输入:<input type="text" id="suggestId2" size="20" value="" style="width:150px;" /></div>
<div id="searchResultPanel" style="border:1px solid #C0C0C0;width:150px;height:auto; display: block;"></div>
<div id="panel"></div>
</body>
</html>
<script type="text/javascript">
    // 百度地图API功能
    function G(id) {
        return document.getElementById(id);
    }

    var map = new BMap.Map("l-map");
    map.centerAndZoom("北京",12);                   // 初始化地图,设置城市和地图级别。

    var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
        {"input" : "suggestId"
            ,"location" : map
        });

    var ac2 = new BMap.Autocomplete(    //建立一个自动完成的对象2
        {"input" : "suggestId2"
            ,"location" : map
        });

    ac.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
        var str = "";
        var _value = e.fromitem.value;
        var value = "";
        if (e.fromitem.index > -1) {
            value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
        }
        str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;

        value = "";
        if (e.toitem.index > -1) {
            _value = e.toitem.value;
            value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
        }
        str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
        G("searchResultPanel").innerHTML = str;
    });

    var myValue;
    var myValue2;
    ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
        var _value = e.item.value;
        myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
        G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;
        setPlace();
    });

    ac2.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
        var _value = e.item.value;
        myValue2 = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
        G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue2;
        setPlace();
    });

    function setPlace(){
        map.clearOverlays();    //清除地图上所有覆盖物
        var inputValue = G("suggestId").value; //获得输入框的值
        alert(inputValue);
        var inputValue2 = G("suggestId2").value;
        alert(inputValue2);


        var output = "距离";
        var makeDistance = function (results){
//            if (transit.getStatus() != BMAP_STATUS_SUCCESS){
//                return ;
//            }
            var plan = results.getPlan(0);
            output += plan.getDuration(true) + "\n";                //获取时间
            output += "总路程为：" ;
            output += plan.getDistance(true) + "\n";             //获取距离
            alert("hahah，加油啊");
            alert(output);
        }

        if(inputValue!=null&&inputValue2!=null){
            var walking = new BMap.WalkingRoute(map, {renderOptions: {map: map}},
                { //智能搜索
                    onSearchComplete: makeDistance
                }
            );

            walking.search(myValue, myValue2);
//            alert(walking.getResults());
//            alert(walking.getResults().getPlan(0));
//            alert(walking.getResults().getPlan(1).getRoute(0).getDistance());

        }
    }

</script>