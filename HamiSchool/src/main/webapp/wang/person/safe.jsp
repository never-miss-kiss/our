<%--
  Created by IntelliJ IDEA.
  User: WWX
  Date: 2018/6/26
  Time: 19:55
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
    <%--<style type="text/css" media="print">
        .n-logo-area .logout,
        .n-account-area,
        .n-frame,
        .n-main-nav,
        .n-footer {
            display: none;
        }
    </style>--%>

    <style type="text/css">
        /*启用修改头像功能*/
        .na-img-area:hover .na-edit{
            display:block;
            cursor: pointer;
        }
        .na-img-area{cursor:default}
        /*popup的遮层*/
        .popup_mask{
            position:fixed;
            z-index:99;
            width:100%;
            height:100%;
            left:0;
            top:0;
            display:none;
            _position:absolute;
            _height: 1000px;
        }
        .popup_mask .mod_wrap{
            height: 100%;
            overflow-y: auto;
            position: absolute;
            width: 100%;
            z-index: 1;
        }
        .popup_mask .bkc{
            position:absolute;
            width:100%;
            height:200%;
            left:0;
            top:0;
            background-color:#333;
            filter: alpha(opacity=70);
            opacity:0.7;
        }
        .popup_mask .mod_acc_tip{
            display:none;
            position:absolute;
            left:50%;
            margin-left:-206px;
            top:50%;
            margin-top:-187px;
            _top: 500px;
        }
        /*剪切图片的水平、垂直居中及模糊*/
        .clipimg{
            text-align: left;
            position: relative;
        }
        .clipimg img{
            max-width:300px;
            max-height:300px;
            /*
            filter: alpha(opacity=70);
            opacity: .7;
            */
            position: absolute;
        }
        /*clip部分*/
        .clipimg .movebox{
            border: 1px solid #00aeff;
        }
        .uploadimgs{
            filter: none;
            opacity: 1;
        }
        .clipimg .movebox{
            width: 98px;
            height: 98px;
            z-index:1000;
            background-image:url(#);
        }
        /*上传*/
        #photoUploader .uplodefile{
            font-size: 45px;
            *vertical-align: bottom;
        }
        ::-webkit-file-upload-button { cursor:pointer; }

    </style>


</head>
<body>
<div class="breadcrumbs">
    <div class="container">
        <a href=""
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
                                <li><a href="" onclick="">消息通知<i class="J_miMessageTotal"></i></a>
                                </li>

                                <li><a href="" onclick="">喜欢的商品</a></li>
                            </ul>
                        </div>

                    </div>
                    <div class="uc-nav-box">
                        <div class="box-hd">
                            <h3 class="title">账户管理</h3>
                        </div>
                        <div class="box-bd">
                            <ul class="uc-nav-list">
                                <li class="active"><a href="${pageContext.request.contextPath}/home/forupdateUser.action?userId=${user.userId}" <%--target="_blank"--%>
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
                    <div class="n-frame">
                        <div class="uinfo c_b">
                            <div>
                                <div class="main_l">
                                    <div class="naInfoImgBox t_c">
                                        <div class="na-img-area marauto">
                                            <!--na-img-bg-area不能插入任何子元素-->
                                            <div class="na-img-bg-area"><img src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B72_files/DiLDqkA3YsVzQI_320.jpg"></div>
                                            <em class="na-edit"></em>
                                        </div>
                                        <div class="naImgLink">

                                            <a class="color4a9" href="" title="修改头像">修改头像</a>

                                        </div>
                                    </div>
                                </div>
                                <div class="main_r">
                                    <div class="framedatabox">
                                        <div class="fdata">
                                            <a class="color4a9 fr" href="" title="编辑" id="editInfo"><i class="iconpencil"></i>编辑</a>
                                            <h3>基础资料</h3>
                                        </div>
                                        <div class="fdata">
                                            <p><span>姓名：</span></p>
                                        </div>
                                        <div class="fdata">
                                            <p><span>生日：</span><span class="value" _empty="">
                                            </span></p>
                                        </div>
                                        <div class="fdata lblgender">
                                            <p><span>性别：</span><span class="value" val="m">男</span></p>
                                        </div>
                                        <div class="btn_editinfo"><a id="editInfoWap" class="btnadpt bg_normal" href="">编辑基础资料</a></div>
                                    </div>
                                    <div class="framedatabox">
                                        <div class="fdata">
                                            <h3>高级设置</h3>
                                        </div>
                                        <div class="fdata click-row">
                                            <a class="color4a9 fr" target="_blank" href="https://www.mipay.com/" title="管理">管理</a>
                                            <p>
                                                <span>银行卡</span>
                                                <span class="arrow_r"></span>
                                            </p>
                                        </div>
                                        <div class="fdata click-row">
                                            <a style="display:none;" class="color4a9 fr" target="_blank" href="javascript:;" title="管理" id="switchRegion">修改</a>
                                            <p>
                                                <span>帐号地区： </span>
                                                <span class="box_center"><em id="region" _code="CN">中国</em><i class="arrow_r hidewap"></i></span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>



        </div>
    </div>
</div>
</body>
</html>
