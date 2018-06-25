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
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=4MuXt8BaTfnKIcCU0Q8UBuSyHuLAZcvN"></script>
    <title>帮我送</title>

    <%--闪光装逼效果--%>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>tian/addHelpBuy/Flash/style.css">

    <%--切换背景颜色--%>
    <link rel="stylesheet" href="<%= basePath %>tian/addHelpBuy/ChangeColor/reset.css" type="text/css" />
    <script type="text/javascript" src="<%= basePath %>tian/addHelpBuy/ChangeColor/js/jquery-ui.custom.js"></script>
    <script type="text/javascript" src="<%= basePath %>tian/addHelpBuy/ChangeColor/js/jquery.bgColorSelector.min.js"></script>
    <script type="text/javascript" src="<%= basePath %>tian/addHelpBuy/ChangeColor/js/init.js"></script>
</head>
<body>

<div class="bgSelector"></div>

<div class="container-fluid">

    <div class="col-sm-2  left">

    </div>
    <div class="col-sm-8  middle">
        <form class="form-horizontal" action="<%=basePath%>/help/addHelpSend.action">
            <div class="form1">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">购买内容</label>
                    <div class="col-sm-7">
                        <div class="btn-group" data-toggle="buttons">
                            <label class="btn btn-primary active">
                                <input type="radio" name="name" id="option1" autocomplete="off" checked> 其他
                            </label>
                            <label class="btn btn-primary">
                                <input type="radio" name="name" id="option2" autocomplete="off"> 美食
                            </label>
                            <label class="btn btn-primary">
                                <input type="radio" name="name" id="option3" autocomplete="off"> 蛋糕
                            </label>
                            <label class="btn btn-primary">
                                <input type="radio" name="name" id="option3" autocomplete="off"> 鲜花
                            </label>
                            <label class="btn btn-primary">
                                <input type="radio" name="name" id="option3" autocomplete="off"> 钥匙
                            </label>
                            <label class="btn btn-primary">
                                <input type="radio" name="name" id="option3" autocomplete="off"> 手机
                            </label>
                            <%--<label class="btn btn-primary">--%>
                                <%--<input type="radio" name="name" id="option3" autocomplete="off"> Radio 3--%>
                            <%--</label>--%>
                            <%--<label class="btn btn-primary">--%>
                                <%--<input type="radio" name="name" id="option3" autocomplete="off"> Radio 3--%>
                            <%--</label>--%>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">标题</label>
                    <div class="col-sm-7">
                        <input type="text" name="title" class="form-control" id="inputEmail3" placeholder="">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">发货地址</label>
                    <div class="col-sm-7">
                        <input type="text" name="sendAddress" class="form-control" id="suggestId" placeholder="">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">备注地址</label>
                    <div class="col-sm-7">
                        <input type="text"  name="sendAddressAlternative" class="form-control" id="inputEmail3" placeholder="">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">发货电话</label>
                    <div class="col-sm-7">
                        <input type="text"  name="sendPhone"  class="form-control" id="inputEmail3" placeholder="">
                    </div>
                </div>
            </div>
            <div class="form2">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">收货地址</label>
                    <div class="col-sm-7">
                        <input type="text"   name="receiptAddress" class="form-control" id="suggestId2" placeholder="">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">备注地址</label>
                    <div class="col-sm-7">
                        <input type="text"  name="receiptAddressAlternative"  class="form-control" id="inputEmail3" placeholder="">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">收货电话</label>
                    <div class="col-sm-7">
                        <input type="text"  name="receiptPhone" class="form-control" id="inputEmail3" placeholder="">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">备注留言</label>
                    <div class="col-sm-7">
                        <input type="text"  name="sendInfomation"  class="form-control" id="inputEmail3" placeholder="请填写物品具体信息">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">截止日期</label>
                    <div class="col-sm-7">
                        <input type="date"  name="endTime" class="form-control" id="inputEmail3" placeholder="">
                    </div>
                </div>
            </div>

            <div class="form3">
                <div class="form3-left col-sm-6">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">订单距离</label>
                        <div class="col-sm-8">
                            <div class="input-group">
                            <input id="suggestId3" type="text" name="distance" VALUE="8" class="form-control" placeholder="Recipient's username" aria-describedby="basic-addon2">
                            <span class="input-group-addon" id="basic-addon2">KM</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label">跑腿费</label>
                        <div class="col-sm-8">
                            <div class="input-group">
                                <input type="number" name="personPrice"  class="form-control" placeholder="Recipient's username" aria-describedby="basic-addon2">
                                <span class="input-group-addon" id="basic-addon2">元</span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-4 control-label">建议薪酬</label>
                        <div class="col-sm-8">
                            <div class="input-group">
                                <input type="number" name="recommendedPrice"  value="30" class="form-control" placeholder="Recipient's username" aria-describedby="basic-addon2">
                                <span class="input-group-addon" id="basic-addon2">元</span>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-4 control-label">验证码:</label>
                        <div class="col-sm-8" >
                            <input type="text" class="form-control col-sm-4" name="checkcode" id="inputPassword4"  placeholder="验证码" />
                            <img title="点击更换" onclick="javascript:refresh(this);" src="${pageContext.request.contextPath }/help/imageServlet.action"/>
                            <c:if test="${info ==1}">
                                <p class="col-sm-4" style="color: red !important;">验证码输入错误！</p>
                            </c:if>
                            <!-- cookie 的 -->
                        </div>
                    </div>
                    <%--验证码--%>
                    <script type="text/javascript">
                        function refresh(obj) {
                            obj.src = "${pageContext.request.contextPath }/help/imageServlet.action?k="+new Date().valueOf();
                            //alert("ssssssssssss");
                        }
                    </script>

                    <button type="submit" class="btn btn-default">Submit</button>

                </div>

                <div class="form3-right col-sm-6" id="l-map" style="border:#F00 1px solid; height:300px">

                </div>


            </div>

        </form>
    </div>

    <div class="col-sm-2  right">
        <ul class="nav nav-pills nav-stacked">
            <li role="presentation" ><a href="<%=basePath%>tian/addHelpBuy/addHelpBuy.jsp"><h3>帮我买</h3></a></li>
            <li role="presentation" class="active"><a href="<%=basePath%>tian/addHelpSend/addHelpSend.jsp"><h3>帮我送</h3></a></li>
            <li role="presentation"><a href="<%=basePath%>tian/addHelpFetch/addHelpFetch.jsp"><h3>帮我取</h3></a></li>
            <li role="presentation"><a href="<%=basePath%>tian/addHelpQueue/addHelpQueue.jsp"><h3>代排队</h3></a></li>
        </ul>
    </div>

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

        var myValue;
        var myValue2;
        ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
            var _value = e.item.value;
            myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
            setPlace();
        });

        ac2.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
            var _value = e.item.value;
            myValue2 = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
            setPlace();
        });

        function setPlace() {
            map.clearOverlays();    //清除地图上所有覆盖物
            function myFun() {
                var pp = local.getResults().getPoi(0).point; //获取第一个智能搜索的结果
                map.centerAndZoom(pp, 18);
                map.addOverlay(new BMap.Marker(pp));    //添加标注
            }

            var local = new BMap.LocalSearch(map, { //智能搜索
                onSearchComplete: myFun
            });
            local.search(myValue);
            local.search(myValue2);


            var inputValue = G("suggestId").value; //获得输入框的值
            alert(inputValue);
            var inputValue2 = G("suggestId2").value;
            alert(inputValue2);

            map.centerAndZoom(new BMap.Point(116.404, 39.915), 12);
            var output = "我算出来的距离";
            var searchComplete = function (results) {
                if (transit.getStatus() != BMAP_STATUS_SUCCESS) {
                    return;
                }
                var plan = results.getPlan(0);
                output += plan.getDuration(true) + "\n";                //获取时间
                output += "总路程为：";
                output += plan.getDistance(true) + "\n";             //获取距离
                G("suggestId3").value = plan.getDistance(true);
            }
            var transit = new BMap.DrivingRoute(map, {
                renderOptions: {map: map},
                onSearchComplete: searchComplete,
                onPolylinesSet: function () {
                    setTimeout(function () {
                        alert(output)
                    }, "1000");
                }
            });
            if(inputValue!=null&&inputValue2!=null){
                transit.search(inputValue, inputValue2);
            }


        }

    </script>

</div>
</body>
</html>
