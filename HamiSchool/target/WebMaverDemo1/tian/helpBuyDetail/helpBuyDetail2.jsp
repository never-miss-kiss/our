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
    <title>HelpBuyDetail</title>

</head>
<body>


<div class="container-fluid">

    <div class="col-sm-2  left">

    </div>

    <div class="col-sm-8  middle">
        <form class="form-horizontal">
            <div class="form1">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">收货地址</label>
                    <div class="col-sm-7">
                        <input class="form-control" id="disabledInput" type="text" placeholder="${helpBuy.receiptAddress}" disabled>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">备注地址</label>
                    <div class="col-sm-7">
                        <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input here..." disabled>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">收货电话</label>
                    <div class="col-sm-7">
                        <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input here..." disabled>
                    </div>
                </div>
            </div>
            <div class="form2">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">购买地址</label>
                    <div class="col-sm-7">
                        <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input here..." disabled>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">备注地址</label>
                    <div class="col-sm-7">
                        <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input here..." disabled>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">购买要求</label>
                    <div class="col-sm-7">
                        <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input here..." disabled>
                    </div>
                </div>
            </div>

            <div class="form3">
                <div class="form3-left col-sm-6">
                    <div class="form-group">
                        <label class="col-sm-4 control-label">订单距离</label>
                        <div class="col-sm-8">
                            <p class="form-control-static">XXXXXXXXX</p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-4 control-label">跑腿费</label>
                        <div class="col-sm-8">
                            <p class="form-control-static">XXXXXXXXX</p>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-4 control-label">手机号码</label>
                        <div class="col-sm-8">
                            <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input here..." disabled>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-4 control-label">短信验证</label>
                        <div class="col-sm-8">
                            <input class="form-control" id="disabledInput" type="text" placeholder="Disabled input here..." disabled>
                        </div>
                    </div>

                </div>

                <div class="form3-right col-sm-6" style="border:#F00 1px solid; height:300px">
                    <!-- Button trigger modal -->
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                        Launch demo modal
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="myModalLabel">${title}</h4>
                                </div>
                                <div class="modal-body">
                                    <h5>收货地址<big>苏州高博软件学都</big></h5>
                                    <h5>备注地址<big>4楼</big></h5>
                                    <h5>收货电话<big>1352655****</big></h5>
                                    <hr/>
                                    <h5>购买地址<big>文萃广场如家</big></h5>
                                    <h5>备注地址<big>就是如家啊</big></h5>
                                    <h5>购买要求<big>哈哈哈哈哈哈哈哈哈哈哈哈</big></h5>
                                    <hr/>
                                    <h5>订单距离<big>19.2</big></h5>
                                    <h5>跑腿费用<big>200</big></h5>
                                    <hr/>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="button" class="btn btn-primary">Save changes</button>

                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>



        </form>

        <div class="comment">
            <div id="comment-container" class="comment-container" style="height:auto !important">

                <div class="comment-item col-sm-10">

                    <div class="col-sm-8 comment-item-top">

                        <div class="col-sm-3">
                            <img src="<%=basePath%>/tian/images/headPortrait.jpg" alt="${username}" class="img-circle" height="50" width="50">
                        </div>

                        <div>

                            <h3 class="col-sm-7">大地哥哥</h3>
                        </div>
                    </div>
                    <div class="col-sm-8 comment-item-middle">

                    </div>
                    <div class="col-sm-8 comment-item-bottom">
                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#" onClick="findCommentReply()">
                            查看回复
                        </button>

                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#test">
                            回复
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="test" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel">回复： 无心</h4>
                                    </div>
                                    <form method="post" action="###">
                                        <div class="modal-body">
                                            <textarea class="form-control" rows="3"></textarea>

                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                            <button type="submit" class="btn btn-primary">发表</button>

                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#btn-report">举报</button>
                        <!-- Modal -->
                        <div class="modal fade" id="btn-report" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                        <h4 class="modal-title" id="myModalLabel">举报表</h4>
                                    </div>
                                    <form method="post" action="###">
                                        <div class="modal-body">
                                            <div class="btn-group-vertical col-sm-6" role="group" aria-label="...">
                                                <button id="button1" type="button" class="btn btn-default active" >垃圾广告信息</button>
                                                <button id="button1" type="button" class="btn btn-default" >不友善行为</button>
                                                <button  id="button1" type="button" class="btn btn-default">反动言论</button>
                                                <button  id="button1" type="button" class="btn btn-default">涉黄信息</button>
                                            </div>
                                            <div class="btn-group-vertical col-sm-6" role="group" aria-label="...">
                                                <button id="button1" type="button" class="btn btn-default" >垃圾广告信息</button>
                                                <button id="button1" type="button" class="btn btn-default" >操纵言论</button>
                                                <button  id="button1" type="button" class="btn btn-default">影响选举</button>
                                                <button  id="button1" type="button" class="btn btn-default">涉嫌造谣</button>
                                            </div>
                                            <script>
                                                //让属性可以只选一个
                                                $(".modal-body button").each(function(i){
                                                    $(this).click(
                                                        function(){
                                                            $(".modal-body button").removeClass("active");
                                                            $(".modal-body button").get(i).addClass("active");
                                                        }
                                                    )
                                                });
                                            </script>
                                            <textarea class="form-control" rows="3" placeholder="补充理由..."></textarea>

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
                    <div class="col-sm-8 reply-container">
                        <div class="reply-item col-sm-12">
                            <div class="col-sm-12 reply-item-top">

                                <div class="col-sm-3">
                                    <img src="<%=basePath%>/tian/images/headPortrait.jpg" alt="${username}" class="img-circle" height="50" width="50">
                                </div>

                                <div>
                                    <p class="col-sm-3 name1">大地哥哥</h3>
                                    <p class="col-sm-2">回复</p>
                                    <p class="col-sm-3 name1">大地哥哥</h3>

                                </div>
                            </div>
                            <div class="col-sm-12 reply-item-middle">

                            </div>
                            <div class="col-sm-12 reply-item-bottom">
                                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#test">
                                    回复
                                </button>
                                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#btn-report">举报</button>
                            </div>
                        </div>

                        <div class="reply-item col-sm-10">
                            <div class="col-sm-10 reply-item-top">

                                <div class="col-sm-3">
                                    <img src="<%=basePath%>tian/images/headPortrait.jpg" alt="${username}" class="img-circle" height="50" width="50">
                                </div>

                                <div>
                                    <h3 class="col-sm-7">大地哥哥</h3>
                                </div>
                            </div>
                            <div class="col-sm-10 reply-item-middle">

                            </div>
                            <div class="col-sm-10 reply-item-bottom">
                                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#test">
                                    回复
                                </button>
                                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#btn-report">举报</button>
                            </div>
                        </div>
                    </div>


                </div>
                <div style="clear:both"></div>


                <div class="comment-item col-sm-10">

                    <div class="col-sm-8 comment-item-top">

                        <div class="col-sm-3">
                            <img src="<%=basePath%>tian/images/headPortrait.jpg" alt="${username}" class="img-circle" height="50" width="50">
                        </div>

                        <div>

                            <h3 class="col-sm-7">大地哥哥</h3>
                        </div>
                    </div>
                    <div class="col-sm-8 comment-item-middle">

                    </div>
                    <div class="col-sm-8 comment-item-bottom">
                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#test">
                            回复
                        </button>
                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#btn-report">举报</button>
                    </div>
                    <div style="clear:both"></div>
                </div>

                <div style="clear:both"></div>
            </div>




        </div>
    </div>


    <div class="col-sm-2  right">
        <ul class="nav nav-pills nav-stacked">
            <li role="presentation" class="active"><a href="#"><h3>返回上一级</h3></a></li>
            <li role="presentation"><a href="#"><h3></h3></a></li>
            <li role="presentation"><a href="#"><h3></h3></a></li>
            <li role="presentation"><a href="#"><h3></h3></a></li>
        </ul>
    </div>


</body>
</html>
