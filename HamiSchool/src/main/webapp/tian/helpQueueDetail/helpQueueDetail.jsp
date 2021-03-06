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
    <title>HelpFetchDetail</title>


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
        <form class="form-horizontal">
            <div class="form1">
                <form class="form-horizontal">

                    <div class="form1">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">物品类型</label>
                            <div class="col-sm-7">
                                <input class="form-control" type="text"  placeholder="${helpQueue.name}" value="" disabled>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">标题</label>
                            <div class="col-sm-7">
                                <input class="form-control" type="text" placeholder="${helpQueue.title}" value="" disabled>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">备注信息</label>
                            <div class="col-sm-7">
                                <input class="form-control" type="text" placeholder="${helpQueue.remarkInfomation}" value="" disabled>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">排队地址</label>
                            <div class="col-sm-7">
                                <input class="form-control" type="text" id="suggestId" placeholder="${helpQueue.queueAddress}" value="${helpQueue.queueAddress}" disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">备注地址</label>
                            <div class="col-sm-7">
                                <input class="form-control" id="disabledInput" type="text" placeholder="${helpQueue.remarkQueueAddress}"  disabled>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">联系电话</label>
                            <div class="col-sm-7">
                                <input class="form-control" id="disabledInput" type="text" placeholder="${helpQueue.queuePhone}" disabled>
                            </div>
                        </div>
                    </div>
                    <div class="form2">

                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">排队时间</label>
                            <div class="col-sm-7">
                                <input class="form-control" type="text" placeholder="${helpQueue.queueTime}" value="" disabled>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">排队时长</label>
                            <div class="col-sm-7">
                                <input class="form-control" id="disabledInput" type="text" placeholder="${helpQueue.duration}" disabled>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">截止时间</label>
                            <div class="col-sm-7">
                                <input class="form-control" id="disabledInput" type="text" placeholder="${helpQueue.endTime}" disabled>
                            </div>
                        </div>
                    </div>

                    <div class="form3">
                        <div class="form3-left col-sm-6">

                            <div class="form-group">
                                <label class="col-sm-4 control-label">订单距离</label>
                                <div class="col-sm-8">
                                    <input class="form-control" id="disabledInput" type="text" placeholder="${helpQueue.distance}" disabled>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-4 control-label">薪酬</label>
                                <div class="col-sm-8">
                                    <input class="form-control" id="disabledInput" type="text" placeholder="${helpQueue.personPrice}" disabled>
                                </div>
                            </div>

                        </div>

                        <%--地图框--%>
                        <div class="form3-right col-sm-6" id="l-map" style="border:#F00 1px solid; height:300px">

                        </div>
                    </div>
                </form>
            </div>


        </form>

        <div class="comment">
            <div id="comment-container" class="comment-container" style="height:auto !important">
                <c:forEach items="${helpCommentList}" var="helpComment">
                    <div class="comment-item col-sm-10">
                        <!--回复上方的一个评论-->
                        <div class="col-sm-8 comment-item-top">
                            <div class="col-sm-3">
                                <img src="<%=basePath%>profilePicture/${helpComment.user.photo}" alt="${username}" class="img-circle" height="50" width="50">
                            </div>
                            <div>
                                <h3 class="col-sm-7">${helpComment.user.nickname}</h3>
                            </div>
                        </div>
                        <div class="col-sm-8 comment-item-middle">
                            <!--评论内容-->
                                ${helpComment.content}
                        </div>
                        <div class="col-sm-8 comment-item-bottom">
                            <button type="button" id="showButton${helpComment.helpCommentId}" class="btn btn-default" value="${helpComment.helpCommentId}"  onClick="findCommentReply(${helpComment.helpCommentId})">
                                查看回复
                            </button>

                            <button type="button"  id="clearButton${helpComment.helpCommentId}" class="btn btn-default hidden"
                                    value="${helpComment.helpCommentId}" onClick="clearReply(${helpComment.helpCommentId})">
                                收起回复
                            </button>

                            <button type="button" id="btn-commentReply${helpComment.helpCommentId}" class="btn btn-default" data-toggle="modal" data-target="#commentReply${helpComment.helpCommentId}">
                                回复
                            </button>
                            <button type="button" id="btn-commentReport${helpComment.helpCommentId}" class="btn btn-default" data-toggle="modal" data-target="#commentReport${helpComment.helpCommentId}">举报</button>
                            <!-- Modal 回复的模态框-->
                            <div class="modal fade" id="commentReply${helpComment.helpCommentId}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">回复： ${helpComment.user.nickname}</h4>
                                        </div>

                                        <form method="post" action="<%=basePath %>/help/addHelpCommentReply.action">
                                            <input name="userId" type="hidden" value="5">
                                            <input name="commentedUserId" type="hidden" value="${helpComment.userId}">
                                            <input name="helpCommentId" type="hidden" value="${helpComment.helpCommentId}">
                                            <input name="releaseType" type="hidden" value="${helpComment.releaseType}">
                                            <input name="helpId" type="hidden" value="${helpComment.helpId}">
                                            <div class="modal-body">
                                                    <textarea name="content" class="form-control" rows="3">
                                                    </textarea>
                                            </div>

                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                                <button type="submit" class="btn btn-primary">发表</button>
                                            </div>

                                        </form>

                                    </div>
                                </div>
                            </div>
                            <!-- Modal 举报的模态框-->
                            <div class="modal fade" id="commentReport${helpComment.helpCommentId}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                            <h4 class="modal-title" id="myModalLabel">举报表</h4>
                                        </div>
                                        <form method="post" action="<%= basePath%>help/addReport.action">
                                            <div class="modal-body${helpComment.helpCommentId}">
                                                <div class="btn-group-vertical col-sm-6" role="group" aria-label="...">
                                                    <button id="button1" value="1" type="button" class="btn btn-default active" >垃圾广告信息</button>
                                                    <button id="button1" value="2" type="button" class="btn btn-default" >不友善行为</button>
                                                    <button  id="button1" value="3" type="button" class="btn btn-default">涉嫌造谣</button>
                                                    <button  id="button1" value="4" type="button" class="btn btn-default">涉黄信息</button>
                                                </div>
                                                <div class="btn-group-vertical col-sm-6" role="group" aria-label="...">
                                                    <button id="button1" value="5" type="button" class="btn btn-default" >诱导赌博</button>
                                                    <button id="button1" value="6" type="button" class="btn btn-default" >操纵言论</button>
                                                    <button  id="button1" value="7" type="button" class="btn btn-default">影响选举</button>
                                                    <button  id="button1" value="8" type="button" class="btn btn-default">其他</button>
                                                </div>
                                                <input type="hidden" class="reasonCategoryId${helpComment.helpCommentId}" name="reasonCategoryId" value="1">
                                                <input type="hidden" id="reportedUserId" name="reportedUserId" value="${helpComment.userId}" >
                                                <input type="hidden" id="sourceCategoryId" name="sourceCategoryId" value="10">
                                                <input type="hidden" id="sourceItemId" name="sourceItemId" value="${helpComment.helpCommentId}">
                                                <input type="hidden" id="helpId" name="helpId" value="${helpQueue.helpQueueId}">
                                                <input type="hidden" id="helpType" name="helpType" value="4">
                                                <script>
                                                    //让属性可以只选一个
                                                    $(".modal-body${helpComment.helpCommentId} button").each(function(i,element){
                                                        $(this).click(function(){
                                                            var i = $(this).val();
                                                            $(".modal-body${helpComment.helpCommentId}  button").removeClass("active");
                                                            $(".modal-body${helpComment.helpCommentId}  button").eq(i-1).addClass("active");
                                                            $(".reasonCategoryId${helpComment.helpCommentId}").val(i);
                                                            alert(i);
                                                        })
                                                    });
                                                </script>
                                                <textarea class="form-control" rows="3" name="reasonRemark" placeholder="补充理由..."></textarea>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                                <button type="submit" class="btn btn-primary">发表</button>
                                            </div>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <!--单条评论下面的回复模块-->
                        <div class="col-sm-8 reply-container" id="comment${helpComment.helpCommentId}">
                            <!--ajax要插入的地方-->
                        </div>
                    </div>
                </c:forEach>

                <!--下面这俩是评论和回复实例-->

                <div style="clear:both"></div>
            </div>

        </div>
    </div>


    <div class="col-sm-2  right">
        <ul class="nav nav-pills nav-stacked">
            <li role="presentation" class="active"><a class="btn btn-default" href="<%=basePath %>help/selectAllHelps.action"><h3>返回上一级</h3></a></li>
            <li role="presentation" class="active" >
                <a href="#" class="btn btn-default" data-toggle="modal" data-target="#addComment">
                    <h3>回复</h3>
                </a>
            </li>
            <li role="presentation" class="active"><a class="btn btn-default"  href="<%=basePath %>tian/addHelpQueue/addHelpQueue.jsp"><h3>代排队</h3></a></li>
            <!-- Modal 回复的模态框-->
            <div class="modal fade" id="addComment" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">回复： 发布信息的人</h4>
                        </div>

                        <form method="post" action="<%=basePath %>/help/addHelpComment.action">

                            <input name="userId" type="hidden" value="${userInfo.userId}">
                            <input name="helpType" type="hidden" value="4">
                            <input name="commentedUserId" type="hidden" value="${helpQueue.userId}">
                            <input name="helpId" type="hidden" value="${helpQueue.helpQueueId}">
                            <div class="modal-body">
                                <textarea name="content" class="form-control" rows="3">
                                </textarea>
                            </div>

                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                <button type="submit" class="btn btn-primary">发表</button>
                            </div>

                        </form>
                    </div>
                </div>
            </div>

            <li role="presentation"><a href="#"><h3></h3></a></li>
            <li role="presentation"><a href="#"><h3></h3></a></li>
            <li role="presentation"><a href="#"><h3></h3></a></li>
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

        function setPlace() {
            map.clearOverlays();    //清除地图上所有覆盖物


            var inputValue = G("suggestId").getAttribute("value"); //获得输入框的值
            //alert(inputValue);
            //alert(inputValue);
            var inputValue2 = G("suggestId2").getAttribute("value");
            //alert(inputValue2);

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

        window.onload = setPlace() ;
    </script>
</div>

</body>

</html>