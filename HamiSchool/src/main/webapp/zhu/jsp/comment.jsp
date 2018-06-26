<!DOCTYPE html>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="OrcasThemes">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title>评论详情</title>
    <link rel="stylesheet" href="<%= basePath %>zhu/comment/css/style.css">
    <link rel="stylesheet" href="<%= basePath %>zhu/comment/css/comment.css">


    <!--Gallery栏目框-->
    <link href="<%= basePath %>bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="<%= basePath %>bootstrap/js/jquery.min.js"></script>
    <script src="<%= basePath %>bootstrap/js/bootstrap.js"></script>
    <link href="<%= basePath %>tian/showHelp/Gallery_files/style.css" rel="stylesheet" type="text/css" media="all">
    <link href="<%= basePath %>tian/showHelp/Gallery_files/animate.css" rel="stylesheet" type="text/css" media="all">
    <!--Gallery栏目框end-->

    <style>
        .commentAll{
            float: left;
            /*position: absolute;*/
            height: 180%;
            /*margin-top: 40px;*/
            left:34%;
            margin-top: 10px;
            background-color: #C5F3EF;}
        .tit{margin-left:40%;}

    </style>
</head>

<div class="header head-top" >
    <div class="container-fluid">
        <div class="col-sm-12">
            <div class="col-xs-1" >
            </div>
            <div class="header-main">
                <div class="col-xs-8">
                    <div class="logo wow bounceInLeft animated" data-wow-delay="0.3s" style="visibility: visible; animation-delay: 0.3s; animation-name: bounceInLeft;">
                        <a href="#"><img src="<%= basePath %>tian/showHelp/Gallery_files/logo3.png" alt="" ></a>
                    </div>
                    <div class="top-navg">
                        <span class="menu"> <img src="<%= basePath %>tian/showHelp/Gallery_files/icon.png" alt=" "></span>
                        <ul class="res">
                            <a href="<%=basePath%>tian/index/index.jsp"><span class="res1">首页</span></a>
                            <a class="active" href="<%=basePath%>goods/findAllGoods.action"><span class="res2">二手</span></a>
                            <a href="<%=basePath%>help/selectAllHelps.action"><span class="res3">跑腿</span></a>
                            <a  href="<%=basePath%>forum/list.action"><span class="res1">社区</span></a>
                            <a href="<%=basePath%>zhu/jsp/hamirenz.jsp"><span class="res2">认证</span></a>
                            <a href="<%=basePath%>tian/index/index.jsp"><span class="res3">Callus</span></a>
                        </ul>
                        <!-- script-for-menu -->
                        <script>
                            $( "span.menu" ).click(function() {
                                $( "ul.res" ).slideToggle( 300, function() {
                                    // Animation complete.
                                });
                            });
                        </script>
                    </div>
                </div>
                <div class="col-xs-2 banner-right">
                    <div id="person-pic" >

                        <div id="head-portrait" class="col-xs-5" >
                            <a href="<%= basePath %>home/personalCenter.action">
                                <c:if test="${userInfo.photo == null}">
                                    <img src="<%= basePath %>profilePicture/0.jpg"></img>
                                </c:if>
                                <c:if test="${userInfo != null}">
                                    <img src="<%= basePath %>profilePicture/${userInfo.photo}"></img>
                                </c:if>
                            </a>
                        </div>

                        <div class="col-xs-7">
                            <div id="message">
                                <a href="#">
                                    <img src="<%= basePath %>tian/showHelp/Gallery_files/通知3.png"></img>
                                </a>
                            </div>
                            <div id="exit">
                                <a href="<%=basePath%>loginpage/exit.action">
                                    <img src="<%= basePath %>tian/showHelp/Gallery_files/登出.png" ></img>
                                </a>
                            </div>
                        </div>
                    </div>

                </div>

                <script>
                    $("#exit img").mousedown(
                        function(){
                            $(this).prop("src","<%= basePath %>tian/showHelp/Gallery_files/登出点击时.png");
                        }
                    );
                    $("#exit img").mouseup(
                        function(){
                            $(this).prop("src","<%= basePath %>tian/showHelp/Gallery_files/登出.png");
                        }
                    );

                    $("#message img").mousedown(
                        function(){
                            $(this).prop("src","<%= basePath %>tian/showHelp/Gallery_files/通知点击时.png");
                        }
                    );

                    $("#message img").mouseup(
                        function(){
                            $(this).prop("src","<%= basePath %>tian/showHelp/Gallery_files/通知3.png");
                        }
                    );
                </script>

            </div>
        </div>
        <div style="clear: both"></div>
    </div>
</div>
<div style="clear: both"></div>
<!--
    此评论textarea文本框部分使用的https://github.com/alexdunphy/flexText此插件
-->
<input type="hidden" value="${goodsComment.goodsCommentId}" id="aaa"/>
<input type="hidden" value="${userId}" id="bbb"/>
<input type="hidden" value="${u.userId}" id="ccc"/>
<input type="hidden" value="${u.nickname}" id="ddd"/>

<div class="commentAll">
    <!--评论区域 begin-->
    <div class="tit">
        <p style="color: red;font-size: large">评论详情</p>
    </div>
    <div class="top">
    <div class="comment-show">
        <div class="comment-show-con clearfix">
            <div class="comment-show-con-img pull-left"><img src="<%= basePath %>zhu/comment/images/header-img-comment_03.png" alt=""></div>
            <div class="comment-show-con-list pull-left clearfix">
                <div class="pl-text clearfix">
                    <a href="#" class="comment-size-name">${uname}: </a>
                    <span class="my-pl-con">&nbsp;${goodsComment.content}</span>
                </div>
                <div class="date-dz">
                    <span class="date-dz-left pull-left comment-time"><fmt:formatDate value="${goodsComment.releaseTime}" pattern="yyyy-MM-dd hh:mm:ss"/></span>
                    <div class="date-dz-right pull-right comment-pl-block">
                        <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">共<span style="color: red">${count}</span>条回复</a>
                    </div>
                </div>
                <div class="hf-list-con"></div>
            </div>
        </div>
    </div>
    </div>
    <div class="reviewArea clearfix">
        <textarea class="content comment-input" placeholder="Please enter a comment&hellip;" onkeyup="keyUP(this)" ></textarea>
        <a href="javascript:;" class="plBtn">评论</a>
    </div>
    <!--评论区域 end-->
    <!--回复区域 begin-->
    <div class="comment-show">
        <C:forEach items="${goodsCommentReply}" var="reply">
        <div class="comment-show-con clearfix">
            <div class="comment-show-con-img pull-left"><img src="<%= basePath %>zhu/comment/images/header-img-comment_03.png" alt=""></div>
            <div class="comment-show-con-list pull-left clearfix">
                <div class="pl-text clearfix">
                    <a href="#" class="comment-size-name" id="username">
                        <C:forEach items="${username}" var="u">
                            <C:if test="${u.key eq reply.goodsCommentReplyId}">
                                <span><C:out value="${u.value}"></C:out></span>
                            </C:if>
                        </C:forEach>
                       :</a>
                    <a class="my-pl-con">&nbsp;<c:out value="${reply.content}"></c:out></a>
                </div>
                <div class="date-dz">
                    <span class="date-dz-left pull-left comment-time"><fmt:formatDate value="${reply.createTime}" pattern="yyyy-MM-dd hh:mm:ss"/></span>
                    <div class="date-dz-right pull-right comment-pl-block">
                        <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>
                    </div>
                </div>
                <div class="hf-list-con"></div>
            </div>
            </div>
        </C:forEach>
        </div>
</div>
    <%--//</C:forEach>--%>
    <!--回复区域 end-->


<script type="text/javascript" src="<%= basePath %>zhu/comment/js/jquery-1.12.0.min.js"></script>
<script type="text/javascript" src="<%= basePath %>zhu/comment/js/jquery.flexText.js"></script>
<!--textarea高度自适应-->
<script type="text/javascript">
    $(function () {
        $('.content').flexText();
    });
</script>
<!--textarea限制字数-->
<script type="text/javascript">
    function keyUP(t){
        var len = $(t).val().length;
        if(len > 139){
            $(t).val($(t).val().substring(0,140));
        }
    }
</script>
<!--点击评论创建评论条-->
<script type="text/javascript">
    $('.commentAll').on('click','.plBtn',function(){
        var myDate = new Date();
        //获取当前年
        var year=myDate.getFullYear();
        //获取当前月
        var month=myDate.getMonth()+1;
        //获取当前日
        var date=myDate.getDate();
        var h=myDate.getHours();       //获取当前小时数(0-23)
        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
        if(m<10) m = '0' + m;
        var s=myDate.getSeconds();
        if(s<10) s = '0' + s;
        var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
        //获取输入内容
        var oSize = $(this).siblings('.flex-text-wrap').find('.comment-input').val();
        console.log(oSize);
        var name = document.getElementById('ddd').value;
        //动态创建评论模块
        oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src="<%= basePath %>zhu/comment/images/header-img-comment_03.png" alt=""></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a href="#" class="comment-size-name">'+ name +': </a> <span class="my-pl-con">&nbsp;'+ oSize +'</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"><a href="javascript:;" class="removeBlock"><span style="color:red">删除</span></a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a>  </div> </div><div class="hf-list-con"></div></div> </div>';
        if(oSize.replace(/(^\s*)|(\s*$)/g, "") != ''){
            $(this).parents('.reviewArea ').siblings('.comment-show').prepend(oHtml);
            $(this).siblings('.flex-text-wrap').find('.comment-input').prop('value','').siblings('pre').find('span').text('');
        }
        var goodsCommentId = document.getElementById('aaa').value;
        var userId = document.getElementById('bbb').value;
        var uId = document.getElementById('ccc').value;
        $.ajax({
            type:"get",
            url:"${pageContext.request.contextPath}/goods/addGoodsCommentReply.action",
            data:"goodsCommentId="+goodsCommentId+"&oSize="+oSize+"&userId="+userId+"&uId="+uId,
            success:function(data){
                alert("评论成功");
                //$("#articlelist").html(data);
            },
            error : function(){
                alert("nani");
            }
        })
    });
</script>
<!--点击回复动态创建回复块-->
<script type="text/javascript">
    $('.comment-show').on('click','.pl-hf',function(){
        //获取回复人的名字
        //var fhName = document.getElementById('username').value;

        var fhName = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('span').text();
        //回复@
        //alert(fhName);
        var fhN = '回复@'+fhName+':';
        //var oInput = $(this).parents('.date-dz-right').parents('.date-dz').siblings('.hf-con');
        var fhHtml = '<div class="hf-con pull-left"> <textarea id="content" class="content comment-input hf-input" placeholder="" onkeyup="keyUP(this)"></textarea> <a href="javascript:;" class="hf-pl">评论</a></div>';
        //显示回复
        if($(this).is('.hf-con-block')){
            $(this).parents('.date-dz-right').parents('.date-dz').append(fhHtml);
            $(this).removeClass('hf-con-block');
            $('.content').flexText();
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding','6px 15px');
            //console.log($(this).parents('.date-dz-right').siblings('.hf-con').find('.pre'))
            //input框自动聚焦
            $(this).parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
        }else {
            $(this).addClass('hf-con-block');
            $(this).parents('.date-dz-right').siblings('.hf-con').remove();
        }

    });
</script>
<!--评论回复块创建-->
<script type="text/javascript">
    $('.comment-show').on('click','.hf-pl',function(){
        var oThis = $(this);
        var myDate = new Date();
        //获取当前年
        var year=myDate.getFullYear();
        //获取当前月
        var month=myDate.getMonth()+1;
        //获取当前日
        var date=myDate.getDate();
        var h=myDate.getHours();       //获取当前小时数(0-23)
        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
        if(m<10) m = '0' + m;
        var s=myDate.getSeconds();
        if(s<10) s = '0' + s;
        var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
        var name = document.getElementById('ddd').value;
        //获取输入内容
        var oHfVal = $(this).siblings('.flex-text-wrap').find('.hf-input').val();
        console.log(oHfVal)
        var oHfName = $(this).parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        var oAllVal = '回复@'+oHfName;
        if(oHfVal.replace(/^ +| +$/g,'') == '' || oHfVal == oAllVal){

        }else {
            $.getJSON("<%= basePath %>zhu/comment/json/pl.json",function(data){
                var oAt = '';
                var oHf = '';
                $.each(data,function(n,v){
                    delete v.hfContent;
                    delete v.atName;
                    var arr;
                    var ohfNameArr;
                    if(oHfVal.indexOf("@") == -1){
                        data['atName'] = '';
                        data['hfContent'] = oHfVal;
                    }else {
                        arr = oHfVal.split(':');
                        ohfNameArr = arr[0].split('@');
                        data['hfContent'] = arr[1];
                        data['atName'] = ohfNameArr[1];
                    }

                    if(data.atName == ''){
                        oAt = data.hfContent;
                    }else {
                        oAt = '回复<a href="#" class="atName">@'+data.atName+'</a> : '+data.hfContent;
                    }
                    oHf = data.hfName;
                });

                var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a href="#" class="comment-size-name">'+name+' : </a><span class="my-pl-con">'+oAt+'</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"> <a href="javascript:;" class="removeBlock">删除</a> <a href="javascript:;" class="date-dz-pl pl-hf hf-con-block pull-left">操作</a>   </div> </div></div>';
                oThis.parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display','block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') && oThis.parents('.hf-con').remove();
            });
        }
        var goodsCommentId = document.getElementById('aaa').value;
        var userId = document.getElementById('bbb').value;
        var uId = document.getElementById('ccc').value;
        var oSize = document.getElementById('content').value;
        //  var oSize = $(this).siblings('.flex-text-wrap').find('.hf-input').val();

        $.ajax({
            type:"get",
            url:"${pageContext.request.contextPath}/goods/addGoodsCommentReply.action",
            data:"goodsCommentId="+goodsCommentId+"&oSize="+oSize+"&userId="+userId+"&uId="+uId,
            success:function(data){
                alert("评论成功");
                //$("#articlelist").html(data);
            },
            error : function(){
                alert("nani");
            }
        })
    });
</script>
<!--删除评论块-->
<script type="text/javascript">
    $('.commentAll').on('click','.removeBlock',function(){
        var oT = $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con');
        if(oT.siblings('.all-pl-con').length >= 1){
            oT.remove();
        }else {
            $(this).parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con').parents('.hf-list-con').css('display','none')
            oT.remove();
        }
        $(this).parents('.date-dz-right').parents('.date-dz').parents('.comment-show-con-list').parents('.comment-show-con').remove();

        var goodsCommentId = document.getElementById('aaa').value;
        var userId = document.getElementById('bbb').value;
        var uId = document.getElementById('ccc').value;
        $.ajax({
            type:"get",
            url:"${pageContext.request.contextPath}/goods/deleteGoodsCommentReply.action",
            data:"goodsCommentId="+goodsCommentId+"&userId="+userId+"&uId="+uId,
            success:function(data){
                alert("已删除评论");
                //$("#articlelist").html(data);
            },
            error : function(){
                alert("nani");
            }
        })
    })
</script>

<!--点赞-->
<script type="text/javascript">
    $('.comment-show').on('click','.date-dz-z',function(){
        var zNum = $(this).find('.z-num').html();
        if($(this).is('.date-dz-z-click')){
            zNum--;
            $(this).removeClass('date-dz-z-click red');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').removeClass('red');
        }else {
            zNum++;
            $(this).addClass('date-dz-z-click');
            $(this).find('.z-num').html(zNum);
            $(this).find('.date-dz-z-click-red').addClass('red');
        }
    })
</script>
</body>

</html>