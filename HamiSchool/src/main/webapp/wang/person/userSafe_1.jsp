<%--
  Created by IntelliJ IDEA.
  User: WWX
  Date: 2018/6/21
  Time: 15:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>个人信息</title>
    <link type="text/css" rel="stylesheet" href="<%= basePath%>/wang/css/reset.css">
    <link type="text/css" rel="stylesheet" href="<%= basePath%>/wang/css/layout.css">
    <link type="text/css" rel="stylesheet" href="<%= basePath%>/wang/css/modacctip.css">
    <link rel="stylesheet" href="<%= basePath%>/wang/css/base.min.css">
    <link rel="stylesheet" href="<%= basePath%>/wang/css/main.min.css">
    <script src="<%= basePath%>/wang/script/jquery-1.11.2.js"></script>
    <style>
        html {
            overflow-y: scroll;
        }
    </style>

    <style type="text/css">
        .score_1 {
            color: rgb(255, 0, 0)
        }

        .score_2 {
            color: rgb(255, 102, 0)
        }

        .score_3 {
            color: rgb(255, 204, 0)
        }

        .score_4 {
            color: rgb(51, 204, 0)
        }

        .score_bg_1 {
            background-color: rgb(255, 0, 0)
        }

        .score_bg_2 {
            background-color: rgb(255, 102, 0)
        }

        .score_bg_3 {
            background-color: rgb(255, 204, 0)
        }

        .score_bg_4 {
            background-color: rgb(51, 204, 0)
        }

        .score_outer_1 em {
            color: rgb(255, 0, 0)
        }

        .score_outer_2 em {
            color: rgb(255, 102, 0)
        }

        .score_outer_3 em {
            color: rgb(255, 204, 0)
        }

        .score_outer_4 em {
            color: rgb(51, 204, 0)
        }

        /*禁用修改头像功能*/
        .na-img-area:hover .na-edit {
            display: none;
        }

        .na-img-area {
            cursor: default
        }

        /*叹号垂直居中*/
        .error-tip {
            line-height: 1.0;
        }

        /*米号可复制*/
        .na-num {
            position: relative;
            z-index: 10;
        }

        /*统一颜色*/
        .color-active {
            color: rgb(255, 102, 0) !important;
        }

        .tip_h295 {
            margin-top: -152px;
        }

        .tip_h424 {
            margin-top: -218px;
        }

        .tip_h436 {
            margin-top: -224px;
        }

        /*动态select的布局*/
        #popSetMibao .i_currentselected {
            width: auto !important;
        }

        #popSetMibao .i_selectoption {
            width: 100% !important;
        }

        #popManageTokenStatus .has_fb_mobile .fb_mobile {
            display: block;
        }

        /*popup的遮层*/
        .popup_mask .mod_wrap {
            height: 100%;
            overflow-y: auto;
            position: absolute;
            width: 100%;
            z-index: 1;
        }

        .popup_mask .mod_acc_tip {
            display: none;
            position: absolute;
            left: 50%;
            margin-left: -206px;
            top: 50%;
            margin-top: -187px;
            _top: 500px;
        }

        /*某些要在前面的对话框*/
        .callable {
            z-index: 200;
        }

        /*vertically center*/
        #popSetMibao, #popAnswerMibao, #popManageTokenStatus, #popManageTokenKeys {
            top: 0;
            margin-top: 0;
        }

        /*下拉框限高*/
        .i_selectoption {
            height: 150px;
        }

        /*已完成安装*/
        #popManageTokenDownload .tip_btns .installed {
            display: inline-block;
        }

        #popManageTokenDownload .tip_btns .goback {
            display: none;
        }

        #popManageTokenDownload .token_enabled .installed {
            display: none;
        }

        #popManageTokenDownload .token_enabled .goback {
            display: inline-block;
        }

        /*IE6*/
        #popUpdatePassword .capt_box {
            display: none;
        }

        /*sms not sent*/
        #sms-unsent {
            width: 100%;
            height: 100%;
            position: fixed;
            _position: absolute;
            left: 0;
            top: 0;
            z-index: 10000;
            display: none;
        }

        #sms-unsent .bg {
            width: 100%;
            height: 100%;
            position: absolute;
            left: 0;
            top: 0;
            z-index: -1;
            filter: alpha(opacity=70);
            -moz-opacity: .7;
            opacity: .7;
            background-color: #aaa;
        }

        #sms-unsent .msg-box {
            width: 560px;
            height: 200px;
            position: absolute;
            left: 50%;
            top: 50%;
            margin-left: -280px;
            margin-top: -100px;
            background-color: #fff;
        }

        #sms-unsent .msg-box .text {
            position: absolute;
            text-align: center;
            top: 56px;
            font-size: 18px;
            color: #585858;
            width: 500px;
        }

        #sms-unsent .msg-box .button {
            position: absolute;
            text-align: center;
            top: 100px;
            width: 120px;
            height: 40px;
            color: #333;
            border: 1px solid #dadada;
            left: 50%;
            margin-left: -61px;
            cursor: pointer;
            line-height: 40px;
            font-size: 16px;
            -webkit-border-radius: 1px;
            -moz-border-radius: 1px;
            border-radius: 1px;
        }

        /*干掉该死的IE6的遮罩问题*/
        #loadingMask .bkc {
            _height: 2000px;
        }

        /*wap*/
        .bugfix_ie6,
        .n-account-area-box {
            display: block;
        }

        /*hide default options*/
        .def-opt {
            display: none;
        }

        #popEnterNewPhone {
            margin-top: -250px;
        }

        .del-account-deny h4 {
            font-size: 14px;
            font-weight: normal;
        }

        .del-account-deny-content {
            list-style: disc;
            font-fize: 14px;
        }

        .del-account-deny-content li {
            list-style: disc;
            font-fize: 14px;
        }
    </style>
    <style type="text/css" media="print">
        .n-logo-area .logout,
        .n-account-area,
        .n-frame,
        .n-main-nav,
        .n-footer {
            display: none;
        }
    </style>

    <%--修改头像--%>
    <%--<script src="<%= basePath%>/wang/head/jquery.min.js"></script>--%>

    <link rel="stylesheet" type="text/css" href="<%= basePath%>/bootstrap/css/bootstrap.min.css">
    <link href="<%= basePath%>/wang/head/cropper.min.css" rel="stylesheet">
    <link href="<%= basePath%>/wang/head/sitelogo.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="<%= basePath%>/wang/css/font-awesome.min.css">

    <script src="<%= basePath%>/wang/head/bootstrap.min.js"></script>
    <script src="<%= basePath%>/wang/head/cropper.js"></script>
    <script src="<%= basePath%>/wang/head/sitelogo.js"></script>
    <style type="text/css">
        .avatar-btns button {
            height: 35px;
        }
    </style>
    <%--<style>
        #main_r {
            float: left;
            width: 590px
        }
    </style>--%>
    <%--<link href="<%=basePath %>tian/showHelp/Gallery_files/style.css" rel="stylesheet" type="text/css" media="all">--%>
    <%--<link href="<%=basePath %>tian/showHelp/Gallery_files   /animate.css" rel="stylesheet" type="text/css" media="all">--%>
    <script type="text/javascript">
        window.onload=function () {
            var b_tn = document.getElementById("btn-0");

            var mx = document.getElementById("mx")

            b_tn.onclick=function () {
                mx.style.display="block";
            }
            var editInfo = document.getElementById("editInfo");

            var edit = document.getElementById("edit")

            var userNow = document.getElementById("userNow");

            var user = document.getElementById("user")

            editInfo.onclick=function () {
                editInfo.style.display="none";
                edit.style.display="block";
                userNow.style.display="none";
                user.style.display="block";

            }
            edit.onclick=function () {
                editInfo.style.display="block";
                edit.style.display="none";
                userNow.style.display="block";
                user.style.display="none";
            }

        }


    </script>


</head>
<body>


<div class="breadcrumbs">
    <div class="container">
        <a href="<%= basePath%>/forum/list.action"
           onclick="">首页</a><span
            class="sep">&gt;</span><span>个人信息</span></div>
</div>
<div class="page-main user-main">
    <div class="container">
        <div class="row">
            <div class="span4">
                <div class="uc-box uc-sub-box">
                    <div class="uc-nav-box">
                        <div class="uc-nav-box">
                            <div class="box-hd">
                                <h3 class="title">订单中心</h3>
                            </div>
                            <div class="box-bd">
                                <ul class="uc-nav-list">
                                    <li><a href="${pageContext.request.contextPath}/home/AllGoodsInUser.action"
                                           onclick="">我的商品</a>
                                    </li>
                                    <li><a href=""
                                           onclick="">我的跑腿</a>
                                    </li>
                                    <li><a href=""
                                           onclick="">我的任务</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">个人中心</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li ><a href="${pageContext.request.contextPath }/home/personalCenter.action" onclick="">我的个人中心</a>
                                </li>
                                <li><a href="" onclick="">圈子通知<i class="J_miMessageTotal"></i></a>
                                </li>
                                <li><a href="<%= basePath%>/wang/person/userGoods.jsp" onclick="">喜欢的商品</a></li>
                            </ul>
                        </div>

                    </div>
                    <div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">账户管理</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li class="active"><a href="${pageContext.request.contextPath}/home/userSafe.action?userId=${user.userId}" <%--target="_blank"--%>
                                       onclick="">个人信息</a>
                                </li>
                                <li><a href="" onclick="">修改密码</a>
                                </li>
                                <li><a href="" target="blank"
                                       onclick="">个人认证</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="span16">
                <div class="uc-box uc-main-box">
                    <div class="uinfo c_b">
                            <div class="main_l">
                                <div class="naInfoImgBox t_c">
                                    <div class="na-img-area marauto">
                                        <!--na-img-bg-area不能插入任何子元素-->
                                        <div class="na-img-bg-area">
                                            <img src="<%= basePath%>/profilePicture/${user.photo}">
                                        </div>
                                        <em class="na-edit"></em>
                                    </div>
                                    <div class="naImgLink">
                                        <%--<a class="color4a9" href="" title="修改头像" >修改头像</a>--%>
                                        <button type="button"  data-toggle="modal" data-target="#avatar-modal" style="margin: 10px; background-color: white;border: white;color: #0c80dc">修改头像</button>
                                    </div>
                                </div>
                            </div>
                            <div class="main_r">
                                <div class="framedatabox">

                                    <div class="fdata">
                                        <a class="color4a9 fr"  href="javascript:void(0)" title="编辑" id="editInfo">
                                            <i class="iconpencil"></i>编辑</a>
                                        <div method="post" id="edit" style="display: none">
                                            <a class="color4a9 fr"  href="javascript:void(0)" >
                                                | 取消</a>
                                            <a class="color4a9 fr" href="javascript:void(0)" id="save">
                                                保存 |</a>
                                        </div>
                                        <h3 style="font-weight: 700">基础资料</h3>
                                    </div>
                                    <div id="userNow">
                                        <div class="fdata ">
                                            <p><span>姓名：</span><span class="value">${user.nickname}</span></p>
                                        </div>
                                        <c:if test="${user.sex == 'F'}">
                                        <div class="fdata ">
                                            <p><span>性别：</span>男</p>
                                        </div>
                                        </c:if>
                                        <c:if test="${user.sex == 'M'}">
                                            <div class="fdata ">
                                                <p><span>性别：</span>女</p>
                                            </div>
                                        </c:if>
                                        <div class="fdata ">
                                            <p><span>签名：</span><span class="value" val="m">${user.signature}</span></p>
                                        </div>
                                        <%--<div class="fdata ">
                                            <p><span>学校：</span><span class="value" val="m">${user.school.name}</span></p>
                                        </div>--%>
                                        <%--<div class="fdata ">
                                            <p><span>手机：</span><span class="value" val="m">${user.telphone}</span></p>
                                        </div>--%>
                                        <div class="fdata ">
                                            <p><span>QQ：</span><span class="value" val="m">${user.qq}</span></p>
                                        </div>
                                    </div>
                                    <form id="user" method="post" style="display: none">

                                        <div class="fdata ">
                                            <p><span>姓名：</span><input value="${user.nickname}" name="userName" ></p>
                                        </div>
                                        <div class="fdata ">
                                            <p><span>性别：</span>
                                                <select style="border: none" name="userSex">
                                                    <option >请选择</option>
                                                    <option  value="M">男</option>
                                                    <option  value="F">女</option>
                                                </select>
                                            </p>
                                        </div>
                                        <div class="fdata ">
                                            <p><span>签名：</span><input value="${user.signature}" name="signature"></p>
                                        </div>
                                        <%--<div class="fdata ">
                                            <p><span>学校：</span><input value="${user.school.name}"></p>
                                        </div>--%>
                                        <div class="fdata ">
                                            <p><span>QQ：</span><input value="${user.qq}" name="userQQ"></p>
                                        </div>
                                    </form>
                                    <script>
                                        $(document).ready(function(){
                                            $("#save").click(function(){
                                                var userName = document.getElementsByName("userName")[0];
                                                var sex = document.getElementsByName("userSex")[0];
                                                var signature = document.getElementsByName("signature")[0];
                                                var qq = document.getElementsByName("userQQ")[0];
                                                var json = {userName:userName.value,sex:sex.value,signature:signature.value,qq:qq.value}
                                                var str = JSON.stringify(json);
                                                console.log(str);
                                                $.ajax({
                                                    type:"post",
                                                    async:true,
                                                    timeout: 1000,
                                                    url:"${pageContext.request.contextPath}/home/forUpUser.action",
                                                    data:{user:str},
                                                    dataType:"json",
                                                    success:function(e){
                                                        console.log("成功");
                                                    }
                                                });
                                            });
                                        });
                                    </script>
                                </div>
                            </div>
                    </div>
                    <ul class="device-detail-area">
                    <li id="changePassword" class="click-row">
                        <div class="font-img-item clearfix">
                            <em class="fi-ico fi-ico-lock"></em>
                            <p class="title-normal dis-inb">帐号密码</p>

                            <p class="font-default">用于保护帐号信息和登录安全</p>
                        </div>
                        <div class="ada-btn-area" id="btnUpdatePassword">
                            <a href="javascript:void(0)" class="n-btn" id="btn-0">
                                修改
                            </a>
                        </div>
                    </li>
                    <%--<li id="changeEmail" class="click-row">
                        <div class="font-img-item clearfix">
                            <em class="fi-ico fi-ico-email"></em>
                            <div class="item_column">
                                <p class="title-normal dis-inb">安全邮箱</p>
                                <span class="title-normal wap-desc user_address">
                                95******9@q*.com
                            </span>
                            </div>
                            <p class="font-default">
                                安全邮箱可以用于登录小米帐号，重置密码或其他安全验证
                            </p>
                        </div>
                        <div class="ada-btn-area" id="btnUpdateEmail">
                            <!--正常状态-->
                            <a href="" class="n-btn">修改</a>
                        </div>
                    </li>--%>
                    <li id="changeMobile" class="click-row">
                        <div class="font-img-item clearfix">
                            <em class="fi-ico fi-ico-phone"></em>
                            <div class="item_column">
                                <p class="title-normal dis-inb">安全手机</p>
                                <span class="title-normal wap-desc user_address">
                  <span class="phone-bind-adress">156******78</span>
                                <span
                                        class="ph_list_sum phone-list-sum"
                                        data-title="等&lt;span class='ff6'&gt;{phsum}&lt
                                    /span&gt;个">
                                </span>
                            </span>
                            </div>
                            <p class="font-default">
                                安全手机可以用于登录小米帐号，重置密码或其他安全验证
                            </p>
                        </div>
                        <div class="ada-btn-area" id="btnUpdatePhone">
                            <a class="n-btn btnChangeMobile" href="javascript:void(0)">
                                修改
                            </a>
                        </div>
                    </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<%--修改头像--%>
<%--<div class="popup_mask">--%>
<div class="user_pic" style="margin: 10px;">
    <img src="">
</div>

<div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1" style="width: 65% !important; margin:-330px auto !important;  margin-bottom: 100px !important;" >
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <%--<form class="avatar-form" action="upload-logo.php" enctype="multipart/form-data" method="post">--%>
            <form class="avatar-form">
                <div class="modal-header">
                    <button class="close" data-dismiss="modal" type="button">&times;</button>
                    <h4 class="modal-title" id="avatar-modal-label">上传图片</h4>
                </div>
                <div class="modal-body">
                    <div class="avatar-body">
                        <div class="avatar-upload">
                            <input class="avatar-src" name="avatar_src" type="hidden">
                            <input class="avatar-data" name="avatar_data" type="hidden">
                            <label for="avatarInput" style="line-height: 35px;">图片上传</label>
                            <button class="btn btn-danger"  type="button" style="height: 35px;" onClick="$('input[id=avatarInput]').click();">请选择图片</button>
                            <span id="avatar-name"></span>
                            <input class="avatar-input hide" id="avatarInput" name="avatar_file" type="file"></div>
                        <div class="row">
                            <div class="col-md-9">
                                <div class="avatar-wrapper"></div>
                            </div>
                            <div class="col-md-3">
                                <div class="avatar-preview preview-lg" id="imageHead"></div>
                                <!--<div class="avatar-preview preview-md"></div>
                        <div class="avatar-preview preview-sm"></div>-->
                            </div>
                        </div>
                        <div class="row avatar-btns">
                            <div class="col-md-4">
                                <div class="btn-group">
                                    <button class="btn btn-danger fa fa-undo" data-method="rotate" data-option="-90" type="button" title="Rotate -90 degrees" style="width: 100px"> 向左旋转</button>
                                </div>
                                <div class="btn-group">
                                    <button class="btn  btn-danger fa fa-repeat" data-method="rotate" data-option="90" type="button" title="Rotate 90 degrees" style="width: 100px"> 向右旋转</button>
                                </div>
                            </div>
                            <div class="col-md-5" style="text-align: right;">
                                <button class="btn btn-danger fa fa-arrows" data-method="setDragMode" data-option="move" type="button" title="移动" style="width: 20%">
								<span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;setDragMode&quot;, &quot;move&quot;)">
								</span>
                                </button>
                                <button type="button" class="btn btn-danger fa fa-search-plus" data-method="zoom" data-option="0.1" title="放大图片" style="width: 20%">
								<span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;zoom&quot;, 0.1)">
								  <!--<span class="fa fa-search-plus"></span>-->
								</span>
                                </button>
                                <button type="button" class="btn btn-danger fa fa-search-minus" data-method="zoom" data-option="-0.1" title="缩小图片" style="width: 20%">
								<span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;zoom&quot;, -0.1)">
								  <!--<span class="fa fa-search-minus"></span>-->
								</span>
                                </button>
                                <button type="button" class="btn btn-danger fa fa-refresh" data-method="reset" title="重置图片" style="width: 20%">
									<span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;reset&quot;)" aria-describedby="tooltip866214">
                                    </span>
                                </button>
                            </div>
                            <div class="col-md-3">
                                <button class="btn btn-danger btn-block avatar-save fa fa-save" type="button" data-dismiss="modal"> 保存修改</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>
<%--</div>--%>
<script src="<%= basePath%>/wang/head/html2canvas.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    //做个下简易的验证  大小 格式
    $('#avatarInput').on('change', function(e) {
        var filemaxsize = 1024 * 5;//5M
        var target = $(e.target);
        var Size = target[0].files[0].size / 1024;
        if(Size > filemaxsize) {
            alert('图片过大，请重新选择!');
            $(".avatar-wrapper").childre().remove;
            return false;
        }
        if(!this.files[0].type.match(/image.*/)) {
            alert('请选择正确的图片!')
        } else {
            var filename = document.querySelector("#avatar-name");
            var texts = document.querySelector("#avatarInput").value;
            var teststr = texts; //你这里的路径写错了
            testend = teststr.match(/[^\\]+\.[^\(]+/i); //直接完整文件名的
            filename.innerHTML = testend;
        }

    });

    $(".avatar-save").on("click", function() {
        var img_lg = document.getElementById('imageHead');
        // 截图小的显示框内的内容
        html2canvas(img_lg, {
            allowTaint: true,
            taintTest: false,
            onrendered: function(canvas) {
                canvas.id = "mycanvas";
                //生成base64图片数据
                var dataUrl = canvas.toDataURL("image/jpeg");
                var newImg = document.createElement("img");
                newImg.src = dataUrl;
                imagesAjax(dataUrl)
            }
        });
    })

    function imagesAjax(src) {
        var data = {};
        data.img = src;
        data.jid = $('#jid').val();
        $.ajax({
            url: "upload-logo.php",
            data: data,
            type: "POST",
            dataType: 'json',
            success: function(re) {
                if(re.status == '1') {
                    $('.user_pic img').attr('src',src );
                }
            }
        });
    }
</script>

<form method="post" style="display: none" id="mx">
    <div class="popup_mask" style="display: block">
        <div class="bkc"></div>
        <div class="mod_wrap">
            <div id="popUpdatePassword" class="mod_acc_tip" style="display:block;">
                <div class="mod_tip_hd">
                    <h4>修改密码</h4>
                    <a class="btn_mod_close" href="" title=""><span>关闭</span></a>
                </div>
                <div class="mod_tip_bd">
                    <div class="modify_pwd">
                        <dl>
                            <dt>原密码</dt>
                            <dd class="grpOldPass">
                                <div class="inputbg">
                                    <label class="labelbox pwd_panel c_b">
                                        <input class="oldPass hidePwd" name="password" placeholder="输入原密码"
                                               autocomplete="off" disableautocomplete="" type="password">
                                        <input name="password" placeholder="输入原密码" _placeheld="" autocomplete="off"
                                               class="visiablePwd dis_none_pc" style="display:none" type="text">
                                        <div class="eye_panel pwd-visiable dis_none_pc">
                                            <i class="eye pwd-eye">
                                                <svg width="100%" height="100%" version="1.1"
                                                     xmlns="http://www.w3.org/2000/svg">
                                                    <path class="eye_outer"
                                                          d="M0 8 C6 0,14 0,20 8, 14 16,6 16, 0 8 z"></path>
                                                    <circle class="eye_inner" cx="10" cy="8" r="3"></circle>
                                                </svg>
                                            </i>
                                        </div>
                                    </label>
                                </div>
                                <div class="err_tip error-con" _text=""><em class="icon_error"></em><span></span></div>
                            </dd>
                            <dt>新密码</dt>
                            <dd class="grpNewPass">
                                <div class="inputbg">
                                    <label class="labelbox pwd_panel c_b">
                                        <input class="newPass hidePwd set-password" name="repassword"
                                               data-error=".error-password" placeholder="输入新密码" autocomplete="off"
                                               disableautocomplete="" type="password">
                                        <input name="repassword" data-error=".error-password" placeholder="输入新密码"
                                               _placeheld="" autocomplete="off" class="visiablePwd dis_none_pc"
                                               style="display:none" type="text">
                                        <div class="eye_panel pwd-visiable dis_none_pc">
                                            <i class="eye pwd-eye">
                                                <svg width="100%" height="100%" version="1.1"
                                                     xmlns="http://www.w3.org/2000/svg">
                                                    <path class="eye_outer"
                                                          d="M0 8 C6 0,14 0,20 8, 14 16,6 16, 0 8 z"></path>
                                                    <circle class="eye_inner" cx="10" cy="8" r="3"></circle>
                                                </svg>
                                            </i>
                                        </div>
                                    </label>
                                    <label class="labelbox pwd_panel c_b">
                                        <input class="newPass2 hidePwd" name="repassword2" data-repeat=".set-password"
                                               data-error=".error-password" placeholder="重复新密码" autocomplete="off"
                                               disableautocomplete="" type="password">
                                        <input name="repassword2" data-repeat=".set-password" data-error=".error-password"
                                               placeholder="重复新密码" _placeheld="" autocomplete="off"
                                               class="visiablePwd dis_none_pc" style="display:none" type="text">
                                        <div class="eye_panel pwd-visiable dis_none_pc">
                                            <i class="eye pwd-eye">
                                                <svg width="100%" height="100%" version="1.1"
                                                     xmlns="http://www.w3.org/2000/svg">
                                                    <path class="eye_outer"
                                                          d="M0 8 C6 0,14 0,20 8, 14 16,6 16, 0 8 z"></path>
                                                    <circle class="eye_inner" cx="10" cy="8" r="3"></circle>
                                                </svg>
                                            </i>
                                        </div>
                                    </label>
                                </div>
                                <div class="err_tip error-con error-password txt_tip" _text="密码长度8~16位，数字、字母、字符至少包含两种"><em
                                        class="icon_error"></em><span data-origin="密码长度8~16位，数字、字母、字符至少包含两种">密码长度8~16位，数字、字母、字符至少包含两种</span>
                                </div>
                            </dd>
                            <!--3次后弹出-->
                        </dl>
                    </div>
                    <div class="tip_btns">
                        <a class="btn_tip btn_commom btnOK" href="" title="确定">确定</a>
                        <a class="btn_tip btn_back btnCancel" href="" title="取消">取消</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

<script>
    $(document).ready(function(){
        $("#oldpassword").blur(function(){
            var param=$("#oldpassword").val();
            $.ajax({
                url:"${HttpPath}/user/checkoldpassword",
                data:{oldpassword:param},
                success:function(e){
                    if(e.code==1){
                        $("#tip1").html("<font color=\"green\" size=\"2\">  Correct</font>");
                    }
                    else{
                        $("#tip1").html("<font color=\"red\" size=\"2\">  Wrong</font>");
                    }
                }
            });
        });
        $("#password1").blur(function(){
            var num=$("#password1").val().length;
            if(num<6){
                $("#tip2").html("<font color=\"red\" size=\"2\">  too short</font>");
            }
            else if(num>18){
                $("#tip2").html("<font color=\"red\" size=\"2\">  too long</font>");
            }
            else{
                $("#tip2").html("<font color=\"green\" size=\"2\"> Accept</font>");
            }
        }) ;
        $("#password2").blur(function(){
            var tmp=$("#password1").val();
            var num=$("#password2").val().length;
            if($("#password2").val()!=tmp){
                $("#tip3").html("<font color=\"red\" size=\"2\">  Wrong</font>");
            }
            else{
                if(num>=6&&num<=18){
                    $("#tip3").html("<font color=\"green\" size=\"2\">  Correct</font>");
                }
                else{
                    $("#tip3").html("<font color=\"red\" size=\"2\">  invalid</font>");
                }
            }
        });
        $("#btn").click(function(){
            var flag=true;
            var old=$("#oldpassword").val();
            var pass=$("#password1").val();
            var pass2=$("#password2").val();
            var num1=$("#password1").val().length;
            var num2=$("#password2").val().length;
            if(num1!=num2||num1<6||num2<6||num1>18||num2>18||pass!=pass2){
                flag=false;
            }
            else{
                flag=true;
            }
            if(flag){
                $.ajax({
                    url:"${HttpPath}/user/editPassowrdyet",
                    data:{oldpassword:old,password:pass},
                    success:function(e){
                        if(e.code==1){
                            $("#tip4").show().html("<font color=\"green\" size=\"3\">  Edit Success!</font>");
                            $("#oldpassword").val("");
                            $("#password1").val("");
                            $("#password2").val("");
                            $("#tip1").empty();
                            $("#tip2").empty();
                            $("#tip3").empty();
                            $("#tip4").delay(2000).hide(0);
                        }
                        else{
                            $("#tip4").show().html("<font color=\"red\" size=\"3\">  OldPassword is Wrong!</font>");
                        }
                    }
                });
            }
            else{

                $("#tip4").show().html("<font color=\"red\" size=\"3\">  Please follow the tips!</font>");
            }
        });
    });
</script>

</body>
</html>
