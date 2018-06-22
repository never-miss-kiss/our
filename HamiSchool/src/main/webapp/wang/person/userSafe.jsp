<%--
  Created by IntelliJ IDEA.
  User: WWX
  Date: 2018/6/19
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width,initial-scale=1.0,minimum-scale=1.0, maximum-scale=1.0,user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <title>小米帐号 -帐号安全</title>

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/wang/css/reset.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/wang/css/layout.css">
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/wang/css/modacctip.css">
    <script src="/wang/script/jquery-1.11.2.js"></script>
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
    <script >
        $(document).ready(function(){
            $("#editInfo").click(function(){
                $('#User').hide();
                $('#editInfo').hide();
                $('#editUser').show();
                $('#edit').show();
            })
        });
        $(document).ready(function(){
            $("#edit").click(function(){
                $('#User').show();
                $('#editInfo').show();
                $('#editUser').hide();
                $('#edit').hide();
            })
        })
    </script>

</head>


<body class="zh_CN">
<div class="popup_mask" style="display: none;" id="loadingMask">
    <div class="bkc"></div>
    <div class="mod_wrap loadingmask">

    </div>
</div>
<div class="wrapper blockimportant">
    <div class="wrap">
        <div class="layout bugfix_ie6 dis_none">
            <div class="n-logo-area clearfix">

                <a id="logoutLink" class="fl-r logout"
                   href="">
                    退出
                </a>
                <script>
                    setTimeout(function () {
                        if (location.hostname === 'account.xiaomi.com') {
                            return;
                        }
                        var link = document.getElementById('logoutLink');
                        if (link) {
                            var href = link.getAttribute('href');
                            var a = document.createElement('a');
                            a.setAttribute('href', '/');
                            var homeURL = a.href;
                            href = href.replace(/\&callback\=.*$/, '&callback=' + homeURL);
                            link.setAttribute('href', href);
                            a = null;
                        }
                    }, 100);
                </script>

            </div>

            <!--头像 名字-->
            <div class="n-account-area-box">
                <div class="n-account-area clearfix">
                    <div class="na-info">
                        <p class="na-name">用户nickname</p>
                        <%--<p class="na-num">账户id</p>--%>
                    </div>
                    <div class="na-img-area fl-l">
                        <!--na-img-bg-area不能插入任何子元素-->
                        <div class="na-img-bg-area"><img
                                src=""><%--头像--%>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="layout">
            <div class="n-main-nav clearfix">
                <ul>
                    <li class="current">
                        <a title="个人信息">个人信息</a>
                        <em class="n-nav-corner"></em>
                    </li>
                </ul>
            </div>
            <div class="n-frame">
                <div class="uinfo c_b">
                    <div>
                        <div class="main_l">
                            <div class="naInfoImgBox t_c">
                                <div class="na-img-area marauto">
                                    <!--na-img-bg-area不能插入任何子元素-->
                                    <div class="na-img-bg-area">
                                        <img src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E4%B8%AA%E4%BA%BA%E4%BF%A1%E6%81%AF_files/DiLDqkA3YsVzQI_320.jpg">
                                    </div>
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
                                    <a class="color4a9 fr" href="" title="编辑" id="editInfo">
                                        <i class="iconpencil"></i>编辑</a>
                                    <div method="post" id="eidt" style="display: none">
                                    <a class="color4a9 fr" href="" >
                                       | 取消</a>
                                    <a class="color4a9 fr" href="">
                                        保存 |</a>
                                    </div>
                                    <h3>基础资料</h3>
                                </div>
                                <form id="user" method="post">
                                <div class="fdata ">
                                    <p><span>姓名：</span><span class="value">随未央</span></p>
                                </div>
                                <div class="fdata ">
                                    <p><span>性别：</span>
                                        <select style="border: none">
                                            <option >请选择</option>
                                            <option style="border: none" value="M">男</option>
                                            <option style="border: none" value="F">女</option>
                                        </select>
                                    </p>
                                </div>
                                <div class="fdata ">
                                    <p><span>签名：</span><span class="value" val="m"></span></p>
                                </div>
                                <div class="fdata ">
                                    <p><span>学校：</span><span class="value" val="m"></span></p>
                                </div>
                            </form>
                            </div>
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
                            <a href="" class="n-btn">
                                修改
                            </a>
                        </div>
                    </li>
                    <li id="changeEmail" class="click-row">
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
                            <a __href="/pass/bindAddress?userId=173775946&amp;type=EM&amp;replace=true&amp;address=95******9@q*.com"
                               class="n-btn">修s改</a>
                        </div>
                    </li>
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
                            <a class="n-btn btnChangeMobile"
                               __href="/pass/bindUserAddress?userId=173775946&amp;type=PH"
                               data-mode="update">
                                修1改
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<style type="text/css">


</style>
<script src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/jquery-1.js"></script>
<script src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/placeholder.js"></script>


<script>
    var JSP_VAR = {
        deviceType: "PC",
        dataCenter: "lg",
        locale: "zh_CN",
        region: "CN",
        callback: "",
        sid: "",
        hidden: "",
        "_sign": "",
        privacyLink: '',
        userId: "",
        cancel: "取消",
        cUserId: ""
    };
</script>
<style>
    .btn-action-go {
        display: none;
    }
</style>

<!--TIPS s-->
<!-- 修改|设置密码 s -->
<form method="post" style="display: block">
        <div class="popup_mask">
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
<!-- 修改密码 e -->
<!-- 修改密码成功 s -->
<div class="popup_mask">
    <div class="bkc"></div>
    <div class="mod_wrap">
        <div class="mod_acc_tip" id="popUpdatePasswordSuccess" style="display:none">
            <div class="mod_tip_hd">
                <h4>修改密码</h4>
                <a class="btn_mod_close" href="" onclick="javascript:void location.reload(true);"
                   title=""><span>关闭</span></a>
            </div>
            <div class="mod_tip_bd">
                <div class="wapbox">
                    <div class="t_c mar30">
                        <div class="txt_ff6"><em class="acctip_icon acctip_icon_2"></em>
                            成功修改密码
                        </div>
                    </div>
                    <div class="t_c mar30">
                        <p><span class="logoutCountdown"></span> 秒后自动登出，请重新登录</p>
                    </div>
                </div>
                <div class="tip_btns wap_btn_abs">
                    <a class="btn_tip btn_commom btnReturn" href="https://account.xiaomi.com/" title="立即重新登录">立即重新登录</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 修改密码成功 e -->

<!-- 绑定手机发送验证码 s -->
<div class="popup_mask">
    <div class="bkc"></div>
    <div class="mod_wrap">
        <div class="mod_acc_tip" id="popVerifyMobile" style="display:none;">
            <div class="mod_tip_hd">
                <h4>安全验证</h4>
                <a class="btn_mod_close" href="" title=""><span>关闭</span></a>
            </div>
            <div class="mod_tip_bd">
                <div class="disten30x103">
                    <h6>我们向您的手机 <em>156******78</em> 发送了一条验证短信</h6>
                    <div class="mod inputsend">
                        <label class="input_bg"><input class="remain_input" placeholder="请输入验证码" type="text"></label>
                        <span class="remain">
							<a title="重新发送" class="resend">重新发送</a>
                            <!--<tt style="display:none;">30秒</tt>-->
						</span>
                    </div>
                </div>
                <div class="tip_btns">
                    <a class="btn_tip btn_commom" href="" title="确定">确定</a>
                    <a class="btn_tip btn_back" href="" title="取消">取消</a>
                </div>
                <div class="txt_qst"><em class="icon_qst"></em><a
                        href="http://static.account.xiaomi.com/html/faq/faqSMSerror.html" target="_blank"
                        title="我为何收不到验证码？">我为何收不到验证码？</a></div>
            </div>
        </div>
    </div>
</div>
<!-- 绑定手机发送验证码 e -->
<!-- phonePanel s-->

<!-- phonePanel e-->
<!-- 绑定安全手机 s -->
<div class="popup_mask callable">
    <div class="bkc"></div>
    <div class="mod_wrap">
        <div class="mod_acc_tip" id="popEnterNewPhone" style="display:none">
            <div class="mod_tip_hd">
                <h4>修改安全手机</h4>
                <a class="btn_mod_close" href="" title=""><span>关闭</span></a>
            </div>
            <div class="mod_tip_bd">
                <div class="tabbar_panel">
                    <div class="tabbar">
                        <div class="tab_opt c_b">
                            <!-- 选中添加class为now -->
                            <span class="phonetab1 now">输入新手机</span>
                            <span class="phonetab2">验证新手机</span>
                            <span class="phonetab3 end">完成</span>
                        </div>
                        <div class="tabline c_b">
                            <i class="now"></i>
                            <i></i>
                            <i></i>
                            <span class="justify_fix"></span>
                        </div>
                    </div>
                </div>
                <div class="wapbox">
                    <dl class="binding phonestep1">
                        <dt>请输入安全手机号码</dt>
                        <dd class="zindex_4">
                            <div class="tits set_qst_tit">
                                <p class="c_b"><span>中国</span><em>+86</em></p>
                                <i class="icon_cirarr"></i>
                            </div>
                            <div class="country-container-panel">
                                <div class="country-container">
                                    <div class="country-code">
                                        <div class="container countrycode-container-usual">
                                            <div class="header">常用</div>
                                            <ul class="list">
                                                <li class="record clearfix">
                                                    <span class="record-country" data-code="+86"
                                                          data-brief="CN">中国</span><span
                                                        class="record-code">+86</span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="cancel_panel">
                                        <div class="cancel_box"><a class="btnadpt bg_white btn-cancel"
                                                                   href="javascript:void(0);">取消</a></div>
                                    </div>
                                </div>
                            </div>
                        </dd>
                        <dd>
                            <div>
                                <label class="input_bg"><input class="new_phone" name="phone" placeholder="请输入手机号码"
                                                               autocomplete="off" disableautocomplete=""
                                                               type="tel"></label>
                                <input class="full_new_phone" value="" autocomplete="off" disableautocomplete=""
                                       type="hidden">
                            </div>
                            <div class="err_tip error-con" _text=""><em class="icon_error"></em><span></span></div>
                            <div class="err_tip wng_fmt err_tip_independ" style="display:none" _text="手机号码格式错误">
                                手机号码格式错误
                            </div>
                            <div class="err_tip empty_phone err_tip_independ" style="display:none" _text="请输入手机号码">
                                请输入手机号码
                            </div>
                            <div class="err_tip phone_bound err_tip_independ" style="display:none" _text="此号码和当前绑定号码相同">
                                此号码和当前绑定号码相同
                            </div>
                            <div class="err_tip phone_bound_elsewhere err_tip_independ" style="display:none"
                                 _text="该号码已绑定到其它帐号上">该号码已绑定到其它帐号上
                            </div>
                            <div class="err_tip dupl_phone err_tip_independ" _text="安全手机不能与备用手机相同">安全手机不能与备用手机相同</div>
                            <div class="err_tip reach_max err_tip_independ" _text="您发送了过多的验证信息，请您次日再试">
                                您发送了过多的验证信息，请您次日再试
                            </div>
                            <div class="err_tip binding_left_times err_tip_independ"
                                 _text="该手机号绑定的小米帐号个数已达上限(3)，不能再绑定新的小米帐号">该手机号绑定的小米帐号个数已达上限(3)，不能再绑定新的小米帐号
                            </div>
                        </dd>
                        <dd>
                            <div class="inputcode">
                                <label class="input_bg chkcode"><input name="icode" placeholder="图片验证码" class="capt_box"
                                                                       autocomplete="off" disableautocomplete=""
                                                                       type="text"></label>
                                <img class="chkcode_img"
                                     src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/getCode"
                                     _src="/pass/getCode?icodeType=antispam" alt="">
                                <a class="color333 hidden" href="" title="换一张">换一张</a>
                            </div>
                            <div class="err_tip error-con" _text=""><em class="icon_error"></em><span></span></div>
                        </dd>

                        <div class="err_tip empty_capt err_tip_independ" style="display:none" _text="请输入验证码">请输入验证码
                        </div>
                        <div style="display:none;" class="err_tip wng_capt err_tip_independ" _text="验证码不正确，请重新输入">
                            验证码不正确，请重新输入
                        </div>
                        <div class="err_tip sys_err err_tip_independ" style="display:none" _text="系统错误，请稍候再试">
                            系统错误，请稍候再试
                        </div>
                        <div class="err_tip bad_param err_tip_independ" style="display:none" _text="参数错误">参数错误</div>
                        <div class="tip_btns">
                            <a class="btn_tip btn_commom" href="" title="下一步">下一步</a>
                        </div>
                    </dl>
                    <dl class="bind_info_panel bind-info-panel" style="display:none">
                        <p class="bind_tip bind-tip">该手机号于<span class="ff6 bind-time"></span>时间绑定了帐号<span
                                class="ff6 bind-id"></span>，继续操作将与<span class="ff6 bind-id"></span>解绑，请确认要继续吗？</p>
                        <div class="tip_btns">
                            <a class="btn_tip btn_commom" data-action="ok" data-type="PH" title="确定">确定</a>
                            <a class="btn_tip btn_back" data-action="back" data-type="PH" title="返回">返回</a>
                        </div>
                    </dl>
                    <dl class="verify" style="display:none">
                        <div class="disten30x103 phonestep2">
                            <h6 class="pb10">我们向您的手机 <em> </em>发送了一条验证短信 <br>请输入短信中的验证码</h6>
                            <div class="mod inputsend">
                                <label class="input_bg"><input class="phone_capt remain_input" name="ticket"
                                                               placeholder="请输入验证码" autocomplete="off"
                                                               disableautocomplete="" type="text"></label>
                                <span class="remain">
								<a class="resend noSend" href="javascript:void(0);" title="重新发送" autocomplete="off"
                                   disableautocomplete="true" disabled="disabled">重新发送</a>
							</span>
                            </div>
                            <div class="err_tip error-con" _text=""><em class="icon_error"></em><span></span></div>
                            <div class="err_tip empty_capt err_tip_independ" style="display:none" _text="请输入验证码">
                                请输入验证码
                            </div>
                            <div class="err_tip wng_capt err_tip_independ" style="display:none;" _text="验证码错误或已过期">
                                验证码错误或已过期
                            </div>
                            <div class="err_tip phone_used err_tip_independ" style="display:none;"
                                 _text="此手机在一段时间内绑定了过多的小米帐号，请换个手机号码试试">此手机在一段时间内绑定了过多的小米帐号，请换个手机号码试试
                            </div>
                            <div class="err_tip sms_custom err_tip_independ" style="display:none;" _text="">
                                <div class="text"></div>
                            </div>
                            <div class="err_tip quota_tip" id="quotaTextLabel" _text="您今天还能发送条短信">您今天还能发送<b
                                    style="display:inline;font-weight:normal;" id="quotaLabel"></b>条短信
                            </div>
                        </div>
                        <div class="tip_btns">
                            <a class="btn_tip btn_commom" href="" title="确定">确定</a>
                            <a class="btn_tip btn_back" href="" title="取消">取消</a>
                        </div>
                        <div class="txt_qst"><em class="icon_qst"></em><a target="_blank"
                                                                          href="http://static.account.xiaomi.com/html/faq/faqSMSerror.html"
                                                                          title="我为何收不到验证码？">我为何收不到验证码？</a></div>
                    </dl>
                    <dl style="display:none" class="success">
                        <div class="t_c">
                            <h4>

                                您已成功修改安全手机！

                            </h4>
                        </div>
                        <div class="tip_btns wap_btn_abs">
                            <a class="btn_tip btn_commom" href="" title="返回我的帐号">返回我的帐号</a>
                        </div>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 绑定安全手机 e -->
<!-- 绑定安全邮箱 s -->
<div class="popup_mask callable">
    <div class="bkc"></div>
    <div class="mod_wrap">
        <div class="mod_acc_tip" id="popEnterNewEmail" style="display:none;">
            <div class="mod_tip_hd">
                <h4>
                    修改安全邮箱
                </h4>
                <a class="btn_mod_close" href="" title=""><span>关闭</span></a>
            </div>
            <div class="mod_tip_bd">
                <div class="tabbar_panel">
                    <div class="tabbar">
                        <div class="tab_opt c_b">
                            <!-- 选中添加class为now -->
                            <span class="mailtab1 now">输入新邮箱</span>
                            <span class="mailtab2">验证新邮箱</span>
                            <span class="mailtab3 end">完成</span>
                        </div>
                        <div class="tabline c_b">
                            <i class="now"></i>
                            <i></i>
                            <i></i>
                            <span class="justify_fix"></span>
                        </div>
                    </div>
                </div>
                <div class="wapbox">
                    <dl class="binding mailstep1">
                        <dt>请输入新的安全邮箱地址</dt>
                        <dd>
                            <label class="input_bg">
                                <input placeholder="请输入邮箱"
                                       class="new_email" autocomplete="off"
                                       disableautocomplete="" type="text">
                            </label>
                        </dd>
                        <div class="err_tip wng_fmt err_tip_independ"
                             style="display:none" _text="邮箱格式错误">邮箱格式错误
                        </div>
                        <div class="err_tip empty_email err_tip_independ"
                             style="display:none" _text="请输入邮箱地址">请输入邮箱地址
                        </div>
                        <div class="err_tip email_bound err_tip_independ"
                             style="display:none" _text="此邮箱地址和当前绑定邮箱地址相同">
                            此邮箱地址和当前绑定邮箱地址相同
                        </div>
                        <div class="err_tip email_bound_elsewhere err_tip_independ"
                             style="display:none"
                             _text="该邮箱地址已被其他帐号绑定">该邮箱地址已被其他帐号绑定
                        </div>
                        <div class="err_tip bad_param err_tip_independ"
                             style="display:none" _text="参数错误">参数错误
                        </div>
                        <dd class="inputcode">
                            <label class="input_bg chkcode">
                                <input placeholder="图片验证码" class="capt_box"
                                       autocomplete="off" disableautocomplete=""
                                       type="text"></label>
                            <img class="chkcode_img"
                                 src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/getCode"
                                 _src="/pass/getCode?icodeType=antispam" alt="">
                            <a class="color333 hidden" href="" title="换一张">换一张</a>
                        </dd>
                        <div style="display:none;" class="err_tip empty_capt err_tip_independ" _text="请输入验证码">请输入验证码
                        </div>
                        <div style="display:none;" class="err_tip wng_capt err_tip_independ" _text="验证码不正确，请重新输入">
                            验证码不正确，请重新输入
                        </div>
                        <div class="err_tip sys_err err_tip_independ" style="display:none" _text="系统错误，请稍候再试">
                            系统错误，请稍候再试
                        </div>
                        <div style="display:none;" class="err_tip reach_max err_tip_independ"
                             _text="您发送了过多的验证信息，请您次日再试">您发送了过多的验证信息，请您次日再试
                        </div>
                        <div class="tip_btns">
                            <a class="btn_tip btn_commom" href="" title="下一步">下一步</a>
                        </div>
                    </dl>
                    <dl class="verify" style="display:none;">
                        <div class="disten30x103 mailstep2">
                            <h6 class="doub_ln">我们向 <em></em> 发送了验证邮件<br>请输入邮件中的验证码</h6>
                            <div class="mod inputsend">
                                <label class="input_bg"><input placeholder="请输入验证码" class="capt_box remain_input"
                                                               autocomplete="off" disableautocomplete=""
                                                               type="text"></label>
                                <span class="remain">
								<a title="重新发送" class="resend">重新发送</a>
							</span>

                            </div>
                            <!-- 错误信息提示 -->
                            <div style="display:none;" class="err_tip empty_capt err_tip_independ" _text="请输入验证码">
                                请输入验证码
                            </div>
                            <div style="display:none;" class="err_tip wng_capt err_tip_independ" _text="验证码错误或已过期">
                                验证码错误或已过期
                            </div>
                            <div style="display:none;" class="err_tip sys_err err_tip_independ" _text="系统错误，请稍候再试">
                                系统错误，请稍候再试
                            </div>
                            <div class="err_tip quota_tip" id="emailQuotaTextLabel" _text="您今天还能发送{left}次邮件">
                                您今天还能发送{left}次邮件
                            </div>
                        </div>
                        <div class="tip_btns">
                            <a class="btn_tip btn_commom" href="" title="确定">确定</a>
                            <a class="btn_tip btn_back" href="" title="取消">取消</a>
                        </div>
                        <div class="txt_qst"><em class="icon_qst"></em><a target="_blank"
                                                                          href="http://static.account.xiaomi.com/html/faq/faqRegisterReceiveCheckNum.html"
                                                                          title="一直收不到验证邮件">一直收不到验证邮件</a></div>
                    </dl>
                    <dl style="display:none;" class="success">
                        <div class="t_c">
                            <h4>

                                您已成功修改安全邮箱！

                            </h4>
                        </div>
                        <div class="tip_btns wap_btn_abs">
                            <a class="btn_tip btn_commom" href="" title="返回我的帐号">返回我的帐号</a>
                        </div>
                    </dl>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 绑定安全邮箱 e -->
<!-- 设置密保问题 s -->

<!-- 设置密保问题 e -->
<!-- 回答设置密保问题 s -->

<!-- 回答设置密保问题 e -->
<!-- 设置密保成功 s -->

<!-- 设置密保成功 e -->
<!-- 开启登录保护 s -->

<!-- 开启登录保护 e -->
<!-- 获取动态口令 s -->

<!-- 获取动态口令 e -->
<!-- 获取安全令牌 s -->

<!-- 获取安全令牌 e -->
<!-- 激活安全令牌 s -->

<!-- 激活安全令牌 e -->
<!-- 添加信任设备 s -->

<!-- 添加信任设备 e -->
<!-- 成功开启登录保护 s -->

<!-- 成功开启登录保护 e -->
<!-- 设置安全令牌 s -->

<!-- 设置安全令牌 e -->
<!-- 开启登录保护未绑定邮箱 s -->

<!-- 开启登录保护未绑定邮箱 e -->
<!-- 开启登录保护未绑定手机 s -->

<!-- 开启登录保护未绑定手机 e -->
<!-- 设置备用手机号 s -->

<!-- 设置备用手机号 e -->
<!-- 关闭登录保护 s -->

<!-- 关闭登录保护 e -->
<!-- 查看备用密钥 s -->
<!--不做成模态-->

<!-- 查看备用密钥 e -->
<!--无法通过验证，申请人工审核 s-->

<!--无法通过验证，申请人工审核 e-->
<!--无法通过验证遇到问题 s-->

<!--无法通过验证遇到问题 e-->
<!--删除帐号警告 s-->

<!--删除帐号警告 e-->
<!--删除帐号提示 s-->

<!--删除帐号提示 e-->
<!--删除帐号成功 s-->

<!--删除帐号成功 e-->
<!--删除帐号失败 s-->

<!--删除帐号失败 e-->
<!--TIPS e-->
<!--发短信之国际化-->

<!--密保数据-->

<script>
    (function () {
        var mibaoLink = document.getElementById('mibao_link');
        if (mibaoLink) {
            var href = mibaoLink.getAttribute('__href');
            if (location.hostname.indexOf('oneboxhost') !== -1) {
                href = href.replace("/sq.id.mi.com/", "/oneboxhost.sq.id.mi.com/").replace("https://", "http://");
            }
            mibaoLink.setAttribute("__href", href);
        }
    })();
</script>
<script>
    var MSG = {
        cancel: "取消",
        toMore: "您今天已经发送太多短信，请换个时间或者改用其他号码",
        phone_empty: "请输入手机号码",
        delphone_empty: "请输入手机号码",
        icode_empty: "请输入验证码",
        ticket_empty: "请输入验证码",
        phone_rule: "手机号码格式错误",
        icode_rule: "图片验证码错误",
        ticket_rule: "验证码错误或已过期",
        ticket_resError: "验证码错误或已过期",
        phoneUnqualCurrent: "此号码和当前绑定号码相同",
        phBindToOther: "该号码已绑定到其它帐号上",
        reachMax: "您发送了过多的验证信息，请您次日再试",
        error_system: "系统错误，请稍候再试",
        bad_param: "参数错误",
        bindLeftTimes: "该手机号绑定的小米帐号个数已达上限(3)，不能再绑定新的小米帐号",
        phoneBindTomuch: "此手机在一段时间内绑定了过多的小米帐号，请换个手机号码试试",
        password_empty: "原密码不能为空",
        repassword_empty: "新密码不能为空",
        repassword2_empty: "请重复新密码",
        repassword_rule: "密码长度8~16位，数字、字母、字符至少包含两种",
        repassword2_rule: "密码输入不一致",
        not_same_pwd: "不能与原密码相同",
        password_resError: "原密码不正确",
        password_resError: "原密码不正确",
        repassword_format_error: "新密码格式错误",
        pwd_risk_error: "新密码不能包含小米帐号，绑定手机，绑定邮箱",
        pwd_in_black: "您的密码可能存在安全风险，请您重新设置一个全新的密码",
        too_frequently: "您的操作频率过快，请稍后再试。"
    };
</script>
<script src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/jquery-1.js"></script>
<script src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/jquery.js"></script>
<script src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/jquery_002.js"></script>
<script src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/select.js"></script>
<script src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/oo-min.js"></script>
<script src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/cookie.js"></script>
<script src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/time.js"></script>
<script src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/identity-cn.js"></script>
<a target="_blank"></a>

<!--发短信 s-->
<script src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/l11n.js"></script>
<script src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/sms.js"></script>
<!--发短信 e-->
<!--URL解析 s-->
<script src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/url.js"></script>
<!--URL解析 e-->
<script>
    JSP_VAR.isPasswordSet = true;
</script>
<script src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/2014.js">
</script>

<script src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/placeholder_002.js">
</script>
<script src="%E5%B0%8F%E7%B1%B3%E5%B8%90%E5%8F%B7%20-%E5%B8%90%E5%8F%B7%E5%AE%89%E5%85%A8_files/countryCode.js">
</script>

<script>
    var mibaoData = $.parseJSON($('#questionData').text().replace(/\'/g, '"'));
    OO(['com.mi.passport.portal.2014'], function (portal2014, O) {
        var Security = portal2014.Security;
        var sec = new Security();
        sec.render();
    });
</script>
<style type="text/css">
    /*干掉该死的IE6的遮罩问题*/
    #loadingMask .bkc {
        _height: 200%;
    }
</style>


</body>
</html>
