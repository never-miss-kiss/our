<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<title>JS页面背景颜色切换网页特效 - 【科e互联】</title>

<%--正式网页代码--%>


    <link href="<%= basePath %>bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="<%= basePath %>tian/helpBuyDetail/help-buy.css" rel="stylesheet">
    <script src="<%= basePath %>bootstrap/js/jquery.min.js"></script>
    <script src="<%= basePath %>bootstrap/js/transition.js"></script>
    <script src="<%= basePath %>bootstrap/js/bootstrap.js"></script>
    <script src="<%= basePath %>tian/helpBuyDetail/help-buy.js"></script>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=4MuXt8BaTfnKIcCU0Q8UBuSyHuLAZcvN"></script>

<%--闪光装逼效果--%>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>tian/testFlash/css/style.css">

<%--切换背景颜色--%>
<link rel="stylesheet" href="css/reset.css" type="text/css" />
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.custom.js"></script>
<script type="text/javascript" src="js/jquery.bgColorSelector.min.js"></script>
<script type="text/javascript" src="js/init.js"></script>
</head>
<body>
<!--效果html开始-->
<div class="bgSelector"></div>
<!--效果html结束-->

<div class="container-fluid">

    <div class="col-sm-2  left">

    </div>
    <div class="col-sm-8  middle">
        <form class="form-horizontal" action="<%=basePath%>/help/addHelpBuy.action">
            <div class="form1">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">购买内容</label>
                    <div class="col-sm-7">
                        <div class="btn-group" data-toggle="buttons">
                            <label class="btn btn-primary active">
                                <input type="radio" name="name" id="option1" autocomplete="off" checked> 其他
                            </label>
                            <label class="btn btn-primary">
                                <input type="radio" name="name" id="option2" autocomplete="off"> 咖啡
                            </label>
                            <label class="btn btn-primary">
                                <input type="radio" name="name" id="option3" autocomplete="off"> 早餐
                            </label>
                            <label class="btn btn-primary">
                                <input type="radio" name="name" id="option3" autocomplete="off"> 宵夜
                            </label>
                            <label class="btn btn-primary">
                                <input type="radio" name="name" id="option3" autocomplete="off"> 药品
                            </label>
                            <label class="btn btn-primary">
                                <input type="radio" name="name" id="option3" autocomplete="off"> 生鲜
                            </label>
                            <label class="btn btn-primary">
                                <input type="radio" name="name" id="option3" autocomplete="off"> Radio 3
                            </label>
                            <label class="btn btn-primary">
                                <input type="radio" name="name" id="option3" autocomplete="off"> Radio 3
                            </label>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">标题</label>
                    <div class="col-sm-7">
                        <input type="text" id="title" name="title" class="form-control" id="inputEmail3" placeholder="Email">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">收货地址</label>
                    <div class="col-sm-7">
                        <input type="text" name="receiptAddress" class="form-control" id="suggestId" placeholder="Email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">备注地址</label>
                    <div class="col-sm-7">
                        <input type="text"  name="receiptAddressAlternative" class="form-control" id="inputEmail3" placeholder="Email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">收货电话</label>
                    <div class="col-sm-7">
                        <input type="text"  name="buyPhone"  class="form-control" id="buyPhone" placeholder="Email">
                    </div>
                </div>
            </div>
            <div class="form2">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">购买地址</label>
                    <div class="col-sm-7">
                        <input type="text"   name="buyAddress" class="form-control" id="suggestId2" placeholder="Email">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">备注地址</label>
                    <div class="col-sm-7">
                        <input type="text"  name="buyAddressAlternative"  class="form-control" id="inputEmail3" placeholder="Email">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">购买要求</label>
                    <div class="col-sm-7">
                        <input type="text"  name="buyDemand" class="form-control" id="inputEmail3" placeholder="Email">
                    </div>
                </div>

                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">截止日期</label>
                    <div class="col-sm-7">
                        <input type="date"  name="endTime" class="form-control" id="inputEmail3" placeholder="Email">
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
                                <input type="number" name="personPrice" id="personPrice" class="form-control" placeholder="Recipient's username" aria-describedby="basic-addon2">
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
                        <label for="inputEmail3" class="col-sm-4 control-label">手机号码</label>
                        <div class="col-sm-8">
                            <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-4 control-label">短信验证</label>
                        <div class="col-sm-8">
                            <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
                        </div>
                    </div>

                    <button type="submit" class="btn btn-default">Submit</button>

                </div>

                <div class="form3-right col-sm-6" id="l-map" style="border:#F00 1px solid; height:300px">



                </div>


            </div>

        </form>
    </div>

    <div class="col-sm-2  right">
        <ul class="nav nav-pills nav-stacked">
            <li role="presentation" class="active" ><a href="<%=basePath%>tian/addHelpBuy/addHelpBuy.jsp"><h3>帮我买</h3></a></li>
            <li role="presentation"><a href="<%=basePath%>tian/addHelpSend/addHelpSend.jsp"><h3>帮我送</h3></a></li>
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
    <script type="text/javascript">


        //        var title = $("#title");
        function isnull(val) {
            var str = val.replace(/(^\s*)|(\s*$)/g, '');//去除空格;
            if (str == '' || str == undefined || str == null) {
                return true;
            } else {
                return false;
            }
        };
        //        title.blur(function () {
        //            if(isnull(title.val())){
        //                title.parent().parent().addClass("has-error");
        //            }
        //            else {
        //                title.parent().parent().removeClass("has-error");
        //            }
        //        });
        //对上述代码进行封装
        function check(obj){
            obj.blur(function () {
                if(isnull(obj.val())){
                    obj.parent().parent().addClass("has-error");
                }
                else {
                    obj.parent().parent().removeClass("has-error");
                }
            });
        }

        check($("#title"));
        check($("#suggestId"));
        check($("#suggestId2"));
        check($("#buyPhone"));
        check($("#personPrice"));

    </script>
</div>
<script type="text/javascript" src="<%=basePath%>tian/testFlash/js/index.js"></script>

<script>
    var input1 = document.getElementById("title");
    Flash(input1);
</script>

</body>
</html>
