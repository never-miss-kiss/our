<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="zh-CN" xml:lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="viewport" content="width=device-width">

    <title>原型修改</title>

    <!--[if lt IE 9]>
    <link rel="stylesheet" type="text/css" href="http://s1.bbs.xiaomi.cn/statics/css/zh-cn/ie8-header.css">
    <![endif]-->
    <script src="../js1/mstr.js"></script>
    <script src="../js1/xmst.js"></script>
    <script src="../js1/zh-cn.js"></script>
    <script src="../js1/jquery.min.js"></script>
    <script src="../js1/base.js"></script>
    <script src="../js1/sign.js" charset="UTF-8"></script>
    <script src="../js1/codemirror.js" defer="defer"></script>

    <link rel="canonical" href="http://bbs.xiaomi.cn/t-29693730">
    <link rel="stylesheet" href="<%=path%>/sun/css/ueditor.css">
    <link rel="stylesheet" href="<%=path%>/sun/css/sign.css">
    <link rel="stylesheet" href="<%=path%>/sun/css/codemirror.css">
    <link rel="stylesheet" href="<%=path%>/sun/css/index.css">
    <link rel="stylesheet" href="<%=path%>/sun/css/invitation.css">
    <link rel="stylesheet" href="<%=path%>/sun/css/datePicker.css">

</head>



<body class="xmbbs_desktop" style="">

<%--<script>switchMobile.init()</script>--%>

<div class="main" style="">

    <style>
        .xmcomm_header_wrap {
            position: relative;
            height: 50px;
            min-width: 990px;
            background: #5b5a5a;
            background: rgba(0, 0, 0, 0.67);
            -webkit-font-smoothing: antialiased
        }

        .xmcomm_header {
            position: relative;
            height: 50px;
            margin: 0 auto
        }

        .xmcomm_header .logo {
            width: 150px;
            height: 50px;
            margin-left: 5px;
            text-indent: -99999px;
            display: inline-block;
            position: absolute;
            left: 0;
            background: url("//s1.bbs.xiaomi.cn/statics/images/logo_cn.png") 0 center no-repeat
        }

        .xmcomm_header .mobile_qr {
            position: absolute;
            left: 162px;
            top: 0;
            width: 70px;
            margin-left: 5px;
            font-size: 14px;
            z-index: 100
        }

        .xmcomm_header .mobile_qr .mobile {
            display: block;
            line-height: 50px;
            padding-left: 14px;
            background: url("//s1.bbs.xiaomi.cn/statics/images/header_mobile.png") 0 center no-repeat;
            color: #ff7e3e
        }

        .xmcomm_header .mobile_qr .qr {
            display: none;
            width: 151px;
            padding: 16px 16px 10px;
            border: 1px solid #e6e6e6;
            background: #fff
        }

        .xmcomm_header .mobile_qr .qr span {
            display: block;
            height: 151px;
            background: url("//s1.bbs.xiaomi.cn/statics/images/header_qr.png") center no-repeat
        }

        .xmcomm_header .mobile_qr .qr strong {
            display: block;
            line-height: 24px;
            color: #454545;
            text-align: center
        }

        .xmcomm_header .mobile_qr:hover .qr {
            display: block
        }

        .xmcomm_header .header_icon {
            width: 16px;
            vertical-align: middle;
            text-indent: -9999px;
            display: inline-block;
            background: url("//s1.bbs.xiaomi.cn/statics/images/header_icon.png") no-repeat
        }

        .xmcomm_header .header_icon.header_revise {
            height: 16px;
            margin-top: -3px;
            background-position: 0 -13px
        }

        .xmcomm_header .header_icon.header_search {
            height: 16px;
            margin-right: 5px;
            background-position: 0 -31px
        }

        .xmcomm_header .header_menu {
            position: absolute;
            left: 50%;
            line-height: 50px;
            margin: 0 0 0 -243px;
            z-index: 100
        }

        .xmcomm_header .header_menu li {
            float: left;
            padding: 0 8px;
            color: #fff;
            font-size: 16px;
            z-index: 20
        }

        .xmcomm_header .header_menu li:last-child {
            padding: 0
        }

        .xmcomm_header .header_menu li:last-child:after {
            content: ".";
            width: 0;
            opacity: 0
        }

        .xmcomm_header .header_menu li a, .xmcomm_header .header_menu li span {
            color: #fff;
            cursor: pointer
        }

        .xmcomm_header .header_menu li a:hover, .xmcomm_header .header_menu li span:hover {
            color: #ff8b3d
        }

        .xmcomm_header .header_menu li span {
            *float: left;
            *padding-right: 20px
        }

        .xmcomm_header .header_menu li span i {
            width: 10px;
            height: 10px;
            background-position: 0 -49px;
            display: inline-block;
            margin: 6px 0 0 5px
        }

        .xmcomm_header .header_menu li .header_menu_list, .xmcomm_header .header_menu li .header_more_list {
            top: -100px;
            height: 0;
            max-height: 0;
            opacity: 0;
            z-index: -1
        }

        .xmcomm_header .header_menu li:hover .header_menu_list, .xmcomm_header .header_menu li:hover .header_more_list {
            top: 50px;
            height: auto;
            max-height: none;
            opacity: 1
        }

        .xmcomm_header .header_menu_list {
            position: absolute;
            left: -252px;
            width: 990px;
            padding: 15px 0;
            border: 1px solid #e6e6e6;
            background: #fff;
            z-index: 11;
            overflow: hidden
        }

        .xmcomm_header .header_menu_list dl {
            line-height: 42px
        }

        .xmcomm_header .header_menu_list dl dt {
            float: left;
            width: 140px;
            color: #ff6700;
            text-align: right
        }

        .xmcomm_header .header_menu_list dl dd {
            margin-left: 150px;
            border-bottom: 1px solid #eee
        }

        .xmcomm_header .header_menu_list dl:last-child dd {
            border-bottom: none
        }

        .xmcomm_header .header_menu_list ul {
            overflow: auto
        }

        .xmcomm_header .header_menu_list ul li {
            float: left;
            padding: 0;
            width: 155px;
            list-style: none;
            color: #cacaca;
            text-align: left;
            white-space: nowrap
        }

        .xmcomm_header .header_menu_list ul li:before {
            content: "";
            display: inline-block;
            width: 6px;
            height: 6px;
            margin-right: 10px;
            margin-top: 18px;
            background: #cacaca;
            border-radius: 50%;
            vertical-align: top
        }

        .xmcomm_header .header_menu_list ul li a {
            color: #616161
        }

        .xmcomm_header .header_menu_list ul li a:hover {
            color: #ff7519
        }

        .xmcomm_header .header_more_list {
            position: absolute;
            left: 450px;
            width: 182px;
            padding: 35px 0;
            background: #fff;
            border: 1px solid #e6e6e6;
            z-index: 11;
            overflow: hidden
        }

        .xmcomm_header .header_more_list ul {
            margin: -6px 0 0 1px;
            width: 182px
        }

        .xmcomm_header .header_more_list ul li {
            float: left;
            padding: 0;
            margin: 0 0 0 48px;
            width: 133px;
            height: 30px;
            line-height: 30px;
            list-style-type: disc;
            border-right: 1px solid #dfdfdf;
            color: #6d6d6d;
            font-size: 14px;
            text-align: left
        }

        .xmcomm_header .header_more_list ul li a {
            color: #6d6d6d;
            line-height: 30px
        }

        .xmcomm_header .header_more_list ul li a:hover {
            color: #ff7519
        }

        .xmcomm_header .header_more_list ul li.hide {
            display: none
        }

        @media screen and (max-width: 1500px) {
            .xmcomm_header {
                width: 990px
            }

            .xmcomm_header .logo, .xmcomm_header .mobile_qr {
                margin-left: 0
            }

            .xmcomm_header .header_menu {
                left: -10px;
                margin: 0 0 0 250px
            }

            .xmcomm_header .header_menu .hidden {
                display: none
            }

            .xmcomm_header .header_menu_list {
                left: -240px
            }

            .xmcomm_header .header_more_list {
                width: 364px;
                left: 384px
            }

            .xmcomm_header .header_more_list ul {
                width: 364px
            }

            .xmcomm_header .header_more_list ul li.hide {
                display: list-item
            }
        }

        @media \0screen\0 {
            .xmcomm_header .header_menu {
                left: -10px;
                margin: 0 0 0 250px
            }

            .xmcomm_header .header_menu .hidden {
                display: none
            }

            .xmcomm_header .header_menu_list {
                left: -240px
            }

            .xmcomm_header .header_more_list {
                width: 364px;
                left: 384px
            }

            .xmcomm_header .header_more_list ul {
                width: 364px
            }

            .xmcomm_header .header_more_list ul li.hide {
                display: list-item
            }

            .xmcomm_header .header_icon.header_revise {
                margin-top: 16px
            }
        }
    </style>

    <!-- 	<div class="bannerTop">
            <a href="http://hd.xiaomi.cn/mipop/2016dl/" target="_blank" rel="noopener noreferrer" class="download_pc"><img src="http://cdn.fds.api.xiaomi.com/b2c-bbs-cms/2016/0819/20160819070742289.jpg"></a>
        </div> -->
    <div class="container_wrap wrap_990 clearfix">

        <div class="plateinfor " >
            <a href="http://bbs.xiaomi.cn/thread/add/fid/501/type/forum" class="btn sendtheme">+发表新主题</a>
        </div>


        <!--帖子发布者信息-->
        <div class="contain_left fr">
            <div class="left_wrap personLayer">
                <div class="con">
                    <div class="personLayer_msg">
                        <a href="http://bbs.xiaomi.cn/u-detail-137006033" class="user_head">
                            <img src="HamiSchool/js1/avatar.jpg"
                                 onerror="javascript:this.src=&#39;http://s1.bbs.xiaomi.cn/statics/images/noavatar_small.gif&#39;;"
                                 class="user_pic">
                        </a>
                        <div class="user_msg">
					<span><a href="http://bbs.xiaomi.cn/user/detail/miid/137006033" class="user_name" u-id="137006033">永_恆</a>
							 							<i class="vip_icon vip_icon_m5"></i>
											</span>
                            <p><span class="txt">运营团队</span>
                                <i class="vipnum vipnum_2"></i>
                            </p>
                        </div>
                    </div>
                    <style type="text/css">
                        .personLayer ol.clearfix li:nth-child(1) {
                            display: none;
                        }

                        .personLayer li.integral {
                            border-left: none;
                            padding-left: 24px;
                        }
                    </style>

                    <a class="btn" href="http://bbs.xiaomi.cn/u-detail-137006033" target="_blank"
                       rel="noopener noreferrer">Ta的主页</a>
                    <span class="btn btn-blue J_sendmsg">发消息</span>
                </div>
            </div>
            <div class="left_wrap">
                <div class="con">
                    <div class="hotspot">

                        <h3>最近发表</h3>
                        <ul class="clearfix">
                            <c:forEach items="${olist}" var="one">
                               <li>
                                ${one.title}
                               </li>
                            </c:forEach>
                            <li>
                                <a href="http://bbs.xiaomi.cn/t-29693730">【视频】小米手机新功能首曝光，这样的小米铃声你喜欢吗？</a>
                            </li>
                            <li>
                                <a href="http://bbs.xiaomi.cn/t-29629024">小米8周年代表作勋章上线！速度领，一起为发布会打Call！</a>
                            </li>
                            <li>
                                <a href="http://bbs.xiaomi.cn/t-29626726">首期《小米8点档》开播！看美女直播还能赢手机</a>
                            </li>
                            <li>
                                <a href="http://bbs.xiaomi.cn/t-29601295">资源组五月活动：小米8周年祝福视频征集中</a>
                            </li>
                            <li>
                                <a href="http://bbs.xiaomi.cn/t-29598169">【抢先体验】MIUI10开启内测招募！</a>
                            </li>
                            <li>
                                <a href="http://bbs.xiaomi.cn/t-29570572">“奋斗体”海报设计大赛开赛啦，小米8喊你来奋斗！</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>


            <div class="left_wrap">
                <div class="sidebarplate"
                     onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;侧边栏&#39;, &#39;版块推荐&#39;]);">

                    <div class="sidebarplate_tab">
                        <div class="tab">
                            <span class="on">版块推荐</span>
                            <span>百宝箱</span>
                        </div>
                    </div>
                    <div>
                        <ul class="on">
                            <li><a href="http://bbs.xiaomi.cn/f-501" target="_blank"><span
                                    style="color:#ff0000;">小米8</span></a></li>
                            <li><a href="http://bbs.xiaomi.cn/f-475" target="_blank"><span style="color:#ff0000;">小米MIX 2S</span></a>
                            </li>
                            <li><a href="http://bbs.xiaomi.cn/f-487" target="_blank">小米 6X</a></li>
                            <li><a href="http://bbs.xiaomi.cn/f-451" target="_blank">小米5/5c/5s/Plus</a></li>
                            <li><a href="http://bbs.xiaomi.cn/f-458" target="_blank">小米Max2</a></li>
                            <li><a href="http://bbs.xiaomi.cn/f-450" target="_blank">小米笔记本</a></li>
                            <li><a href="http://bbs.xiaomi.cn/f-360" target="_blank">红米Note 5</a></li>
                            <li><a href="http://bbs.xiaomi.cn/f-9" target="_blank">小米电视</a></li>
                            <li><a href="http://bbs.xiaomi.cn/f-364" target="_blank">小米盒子</a></li>
                            <li><a href="http://bbs.xiaomi.cn/f-354" target="_blank">小米路由器</a></li>
                            <li><a href="http://bbs.xiaomi.cn/f-361" target="_blank">红米5</a></li>
                            <li><a href="http://bbs.xiaomi.cn/f-362" target="_blank">小米手环</a></li>
                            <li><a href="http://bbs.xiaomi.cn/f-439" target="_blank">九号平衡车</a></li>
                            <li><a href="http://bbs.xiaomi.cn/f-10" target="_blank">小米空气净化器</a></li>

                        </ul>

                    </div>
                </div>
            </div>

        </div>


        <div class="contain_right clearfix fl" style="">





            <div class="filtrate invitation" f-id="501" date-id="29693730" t-id="2167">

                <div class="invitation_con">
                    <!--回复框-->
                    <%--<div class="scollReplyWrap" style="top: 485px; display: block;">--%>
                        <%--<input type="text" id="J_scollReplytxt">--%>
                        <%--<span class="btn btnlineLight" id="J_scollReply">回复</span>--%>
                    <%--</div>--%>


                    <h1>
                        <span></span>
                        <span></span>
                        <span class="name">【视频】王文祥自己臭(｡･∀･)ﾉﾞ嗨好玩吗？</span>
                    </h1>
                    <p class="txt">
                        <span class="user_msg_mobile"></span>
                        <span class="marktxt">置顶</span>

                        <span>发表在 </span>
                        <span class="time"> 05-28 10:54:48</span>
                        <span class="f_r"><i class="msg"></i>点击数：802</span>
                        <span class="f_r"><i class="see"></i>点赞数：8430</span>
                    </p>

                    <div class="invitation_content">
                        ${forumPost.content}
                        <p></p>
                        <blockquote><p style="text-align: center;"><strong><span style="font-family: 微软雅黑;"><a
                                href="http://bbs.xiaomi.cn/t-29545641" target="_blank"
                                style="text-decoration-line: none; outline: 0px; font-family: arial, Microsoft Yahei, Hiragino Sans GB, sans-serif; font-size: 20px; color: rgb(245, 124, 0);">小米8年度旗舰发布会官方汇总，持续更新&gt;&gt;</a></span></strong>
                        </p></blockquote>
                        <p style="padding: 1px 0px;"></p>
                        <p>这个合唱团，团员有些萌！♬︎(๑`･ᴗ･´๑)</p>
                        <p>小米手机新功能首曝光，这样的小米铃声你喜欢吗？~</p>
                        <p style="text-align: center;">
                            <embed type="application/x-shockwave-flash" class="edui-faked-video"
                                   pluginspage="http://www.macromedia.com/go/getflashplayer"
                                   src="https://imgcache.qq.com/tencentvideo_v1/playerv3/TPout.swf?max_age=86400&amp;v=20161117&amp;vid=m0667p67vn3&amp;auto=0"
                                   width="650" height="480" wmode="transparent" play="true" loop="false" menu="false"
                                   allowaccess="never" allowfullscreen="true">
                        </p>
                        <p><br></p>
                        <p>距离小米8 年度旗舰发布会还有3天，5月31日下午2点直播见！</p>
                        <p></p>
                    </div>
                </div>




<!--说说自己的看法-->
                <div class="faster_reply">
                    <a u-id="" u-name="" post-manage="" post-rate="" post-comment=""
                       href="http://bbs.xiaomi.cn/user/detail/miid/" class="headportrait" target="_blank"
                       rel="noopener noreferrer">
                        <img src="../images/noavatar_small.gif"
                             onerror="javascript:this.src=&#39;http://s1.bbs.xiaomi.cn/statics/images/noavatar_small.gif&#39;;">

                    </a>
                    <input placeholder="说说你的看法" id="J_txt">
                    <span class="btn" id="J_fastpublish">发表</span>
                </div>

<!--收藏举报点赞  -->
                <div class="btn_wrap clearfix">

                    <a href="javascript:void(0);" class="report_btn J_reportBtn">举报</a>

                    <a href="javascript:void(0)" class="collect_btn J_collect">收藏</a>
                </div>
            </div>



            <div class="reply" id="comment_top">
                <div class="reply_con">
                    <div class="reply_title clearfix">
					<span class="reply_nav">
						<a href="http://bbs.xiaomi.cn/t-29693730-1-o1" class="current">最新评论</a>
					</span>
                    </div>




                    <ul class="reply_list">
                        <!-- top post list-->
                        <li class="clearfix" post-id="650782626" id="810" float-id="810" u-id="405698082">
                            <div class="reply_list_img">
                                <a href="http://bbs.xiaomi.cn/u-detail-405698082" class="headportrait" target="_blank"
                                   rel="noopener noreferrer">
                                    <img class="user_head"
                                         data-original="http://cdn.fds.api.xiaomi.com/b2c-bbs/cn/405698082/avatar.jpg?&amp;width=50&amp;height=50"
                                         src="../images/noavatar_small.gif">
                                </a>
                            </div>
                            <div class="reply_list_con">
                                <div class="auth_msg clearfix">
                                    <a href="http://bbs.xiaomi.cn/u-detail-405698082" class="auth_name" target="_blank"
                                       rel="noopener noreferrer">Mi_405698082</a>
                                    <i class="vip_icon 	vip_icon_m0	"></i>
                                    <span class="time">&nbsp;&nbsp;</span>
                                    <span class="at"> 发表于</span>
                                    <span class="time">05-28 16:16:28</span>
                                    <span class="comefrom"></span>

                                    <span class="reply_list_float">810#</span>
                                </div>
                                <div class="reply_txt"><p>小米加油</p></div>
                                <p class="replay_bu">
                                    <a href="http://bbs.xiaomi.cn/post/reply/thread_id/29693730/post_id/650782626"
                                       class="replay_btn">回复</a>

                                    <span class="replay_btn J_report">举报</span>

                                </p>
                            </div>
                        </li>
                    </ul>
                    <div class="flotation" style="width: 200px;">
                        <h4>选中<span class="themenum">0</span>篇<span class="closebtn"></span>
                            <span class="allcheck_txt">全选</span>
                            <input type="checkbox" name="allcheck">
                        </h4>
                        <p style="margin: 20px 0px 15px 18px;">
                            <span id="J_reply_warn">警告</span>
                            <span class="move_btn" id="J_reply_delete">删除</span>
                            <span class="shield" id="J_reply_shield">屏蔽</span>
                            <span id="J_reply_stick">置顶</span>
                        </p>
                    </div>
                </div>


                <div class="base_widget_paging">
                    <div class="paging_widget_2">
                        <ul>
                            <li class="page selected "><a>1</a></li>
                            <li class="page"><a href="http://bbs.xiaomi.cn/t-29693730-2-o1#comment_top">2</a></li>
                            <li class="page"><a href="http://bbs.xiaomi.cn/t-29693730-3-o1#comment_top">3</a></li>
                            <li class="page"><a href="http://bbs.xiaomi.cn/t-29693730-4-o1#comment_top">4</a></li>
                            <li class="page"><a href="http://bbs.xiaomi.cn/t-29693730-5-o1#comment_top">5</a></li>
                            <li class="page"><a href="http://bbs.xiaomi.cn/t-29693730-6-o1#comment_top">6</a></li>
                            <li class="page"><a href="http://bbs.xiaomi.cn/t-29693730-7-o1#comment_top">7</a></li>
                            <li class="page"><a href="http://bbs.xiaomi.cn/t-29693730-8-o1#comment_top">8</a></li>
                            <li class="page"><a href="http://bbs.xiaomi.cn/t-29693730-9-o1#comment_top">9</a></li>
                            <li class="page"><a href="http://bbs.xiaomi.cn/t-29693730-10-o1#comment_top">10</a></li>
                            <li class="next"><a href="http://bbs.xiaomi.cn/t-29693730-2-o1#comment_top">&gt;</a></li>
                            <li class="last"><a href="http://bbs.xiaomi.cn/t-29693730-41-o1#comment_top">末页&gt;&gt;</a>
                                <!--</li-->                    </li>
                        </ul>
                    </div>
                </div>
            </div>

            <!--<div class="reply_area" style="">-->
                <!--<div class="reply_area_con clearfix" style="">-->

                    <!--&lt;!&ndash;低端评论头像&ndash;&gt;-->
                    <!--<a href="http://bbs.xiaomi.cn/user/detail/miid/" target="_blank" rel="noopener noreferrer"><img-->
                            <!--class="user_head" src="HamiSchool/js1/noavatar_small.gif"-->
                            <!--onerror="javascript:this.src=&#39;http://s1.bbs.xiaomi.cn/statics/images/noavatar_small.gif&#39;;">-->
                    <!--</a>-->


                    <!--&lt;!&ndash;低端评论框&ndash;&gt;-->
                    <!--<div class="area_con">-->
                        <!--<div id="editor" class="edui-default">-->
                            <!--<div id="edui1" class="edui-editor  edui-default" style="width: 584px; z-index: 0;">-->
                                <!--<div id="edui1_toolbarbox" class="edui-editor-toolbarbox edui-default" style="">-->
                                    <!--<div id="edui1_toolbarboxouter" class="edui-editor-toolbarboxouter edui-default">-->
                                        <!--&lt;!&ndash;<div class="edui-editor-toolbarboxinner edui-default">&ndash;&gt;-->
                                            <!--&lt;!&ndash;<div id="edui2" class="edui-toolbar   edui-default"&ndash;&gt;-->
                                                 <!--&lt;!&ndash;onselectstart="return false;"&ndash;&gt;-->
                                                 <!--&lt;!&ndash;onmousedown="return $EDITORUI[&quot;edui2&quot;]._onMouseDown(event, this);"&ndash;&gt;-->
                                                 <!--&lt;!&ndash;style="user-select: none;">&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui3" class="edui-box edui-button edui-for-bold edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div id="edui3_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui3&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui3&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui3&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui3&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-button-wrap edui-default">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui3_body" unselectable="on" title="加粗"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onmousedown="return $EDITORUI[&quot;edui3&quot;]._onMouseDown(event, this);"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="return $EDITORUI[&quot;edui3&quot;]._onClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default"></div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui4"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-combox edui-for-fontsize edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div title="字号" id="edui4_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui4&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui4&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui4&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui4&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-combox-body edui-default"&ndash;&gt;-->
                                                             <!--&lt;!&ndash;onclick="$EDITORUI[&quot;edui4&quot;]._onArrowClick();">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui4_button_body"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-box edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="$EDITORUI[&quot;edui4&quot;]._onButtonClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;字号&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div class="edui-box edui-arrow edui-default"></div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui15"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-button edui-for-blockquote edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div id="edui15_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui15&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui15&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui15&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui15&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-button-wrap edui-default">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui15_body" unselectable="on" title="引用"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onmousedown="return $EDITORUI[&quot;edui15&quot;]._onMouseDown(event, this);"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="return $EDITORUI[&quot;edui15&quot;]._onClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default"></div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui16"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-splitbutton edui-for-forecolor edui-default edui-colorbutton">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div title="字体颜色" id="edui16_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui16&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui16&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui16&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui16&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-splitbutton-body edui-default"&ndash;&gt;-->
                                                             <!--&lt;!&ndash;onclick="$EDITORUI[&quot;edui16&quot;]._onArrowClick();">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui16_button_body"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-box edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="$EDITORUI[&quot;edui16&quot;]._onButtonClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default"></div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div class="edui-box edui-arrow edui-default"></div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui19"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-button edui-for-justifyleft edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div id="edui19_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui19&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui19&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui19&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui19&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-button-wrap edui-default">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui19_body" unselectable="on" title="居左对齐"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onmousedown="return $EDITORUI[&quot;edui19&quot;]._onMouseDown(event, this);"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="return $EDITORUI[&quot;edui19&quot;]._onClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default"></div>&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-label edui-default"></div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui20"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-button edui-for-justifycenter edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div id="edui20_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui20&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui20&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui20&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui20&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-button-wrap edui-default">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui20_body" unselectable="on" title="居中对齐"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onmousedown="return $EDITORUI[&quot;edui20&quot;]._onMouseDown(event, this);"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="return $EDITORUI[&quot;edui20&quot;]._onClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default"></div>&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-label edui-default"></div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui21"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-button edui-for-justifyright edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div id="edui21_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui21&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui21&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui21&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui21&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-button-wrap edui-default">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui21_body" unselectable="on" title="居右对齐"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onmousedown="return $EDITORUI[&quot;edui21&quot;]._onMouseDown(event, this);"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="return $EDITORUI[&quot;edui21&quot;]._onClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default"></div>&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-label edui-default"></div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui28"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-button edui-for-link edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div id="edui28_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui28&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui28&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui28&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui28&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-button-wrap edui-default">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui28_body" unselectable="on" title="超链接"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onmousedown="return $EDITORUI[&quot;edui28&quot;]._onMouseDown(event, this);"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="return $EDITORUI[&quot;edui28&quot;]._onClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default"></div>&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-label edui-default"></div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui29"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-button edui-for-unlink edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div id="edui29_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui29&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui29&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui29&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui29&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-button-wrap edui-default">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui29_body" unselectable="on" title="取消链接"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onmousedown="return $EDITORUI[&quot;edui29&quot;]._onMouseDown(event, this);"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="return $EDITORUI[&quot;edui29&quot;]._onClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default"></div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui30"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-button edui-for-simpleupload edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div id="edui30_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui30&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui30&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui30&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui30&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-button-wrap edui-default">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui30_body" unselectable="on" title="单图上传"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onmousedown="return $EDITORUI[&quot;edui30&quot;]._onMouseDown(event, this);"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="return $EDITORUI[&quot;edui30&quot;]._onClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default">&ndash;&gt;-->
                                                                    <!--&lt;!&ndash;<iframe style="display: block; width: 30px; height: 30px; overflow: hidden; border: 0px; margin: 0px; padding: 0px; position: absolute; top: 0px; left: 0px; opacity: 0; cursor: pointer;"&ndash;&gt;-->
                                                                            <!--&lt;!&ndash;src="HamiSchool/js1/saved_resource.html"></iframe>&ndash;&gt;-->
                                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui35"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-button edui-for-insertimage edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div id="edui35_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui35&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui35&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui35&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui35&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-button-wrap edui-default">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui35_body" unselectable="on" title="多图上传"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onmousedown="return $EDITORUI[&quot;edui35&quot;]._onMouseDown(event, this);"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="return $EDITORUI[&quot;edui35&quot;]._onClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default"></div>&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-label edui-default"></div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui40"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-button edui-for-insertvideo edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div id="edui40_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui40&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui40&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui40&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui40&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-button-wrap edui-default">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui40_body" unselectable="on" title="视频"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onmousedown="return $EDITORUI[&quot;edui40&quot;]._onMouseDown(event, this);"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="return $EDITORUI[&quot;edui40&quot;]._onClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default"></div>&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-label edui-default"></div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui41"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-splitbutton edui-for-inserttable edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div title="插入表格" id="edui41_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui41&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui41&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui41&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui41&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-splitbutton-body edui-default"&ndash;&gt;-->
                                                             <!--&lt;!&ndash;onclick="$EDITORUI[&quot;edui41&quot;]._onArrowClick();">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui41_button_body"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-box edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="$EDITORUI[&quot;edui41&quot;]._onButtonClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default"></div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div class="edui-box edui-arrow edui-default"></div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui44"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-button edui-for-deletetable edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div id="edui44_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui44&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui44&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui44&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui44&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-button-wrap edui-default">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui44_body" unselectable="on" title="删除表格"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onmousedown="return $EDITORUI[&quot;edui44&quot;]._onMouseDown(event, this);"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="return $EDITORUI[&quot;edui44&quot;]._onClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default"></div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui45"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-button edui-for-mergecells edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div id="edui45_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui45&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui45&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui45&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui45&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-button-wrap edui-default">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui45_body" unselectable="on" title="合并多个单元格"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onmousedown="return $EDITORUI[&quot;edui45&quot;]._onMouseDown(event, this);"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="return $EDITORUI[&quot;edui45&quot;]._onClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default"></div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui46"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-button edui-for-splittocells edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div id="edui46_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui46&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui46&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui46&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui46&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-button-wrap edui-default">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui46_body" unselectable="on" title="完全拆分单元格"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onmousedown="return $EDITORUI[&quot;edui46&quot;]._onMouseDown(event, this);"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="return $EDITORUI[&quot;edui46&quot;]._onClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default"></div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui51"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-button edui-for-attachment edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div id="edui51_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui51&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui51&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui51&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui51&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-button-wrap edui-default">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui51_body" unselectable="on" title="附件"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onmousedown="return $EDITORUI[&quot;edui51&quot;]._onMouseDown(event, this);"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="return $EDITORUI[&quot;edui51&quot;]._onClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default"></div>&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-label edui-default"></div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui52"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-button edui-for-source edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div id="edui52_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui52&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui52&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui52&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui52&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-button-wrap edui-default">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui52_body" unselectable="on" title="源代码"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onmousedown="return $EDITORUI[&quot;edui52&quot;]._onMouseDown(event, this);"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="return $EDITORUI[&quot;edui52&quot;]._onClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default"></div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div id="edui57"&ndash;&gt;-->
                                                     <!--&lt;!&ndash;class="edui-box edui-button edui-for-hide edui-default">&ndash;&gt;-->
                                                    <!--&lt;!&ndash;<div id="edui57_state"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmousedown="$EDITORUI[&quot;edui57&quot;].Stateful_onMouseDown(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseup="$EDITORUI[&quot;edui57&quot;].Stateful_onMouseUp(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseover="$EDITORUI[&quot;edui57&quot;].Stateful_onMouseOver(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;onmouseout="$EDITORUI[&quot;edui57&quot;].Stateful_onMouseOut(event, this);"&ndash;&gt;-->
                                                         <!--&lt;!&ndash;class="edui-default">&ndash;&gt;-->
                                                        <!--&lt;!&ndash;<div class="edui-button-wrap edui-default">&ndash;&gt;-->
                                                            <!--&lt;!&ndash;<div id="edui57_body" unselectable="on" title="隐藏"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;class="edui-button-body edui-default"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onmousedown="return $EDITORUI[&quot;edui57&quot;]._onMouseDown(event, this);"&ndash;&gt;-->
                                                                 <!--&lt;!&ndash;onclick="return $EDITORUI[&quot;edui57&quot;]._onClick(event, this);">&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-icon edui-default"></div>&ndash;&gt;-->
                                                                <!--&lt;!&ndash;<div class="edui-box edui-label edui-default"></div>&ndash;&gt;-->
                                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                    <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                            <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                        <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                    <!--</div>-->

                                    <!--&lt;!&ndash;评论上传照片&ndash;&gt;-->
                                    <!--<div id="edui1_toolbarmsg" class="edui-editor-toolbarmsg edui-default"-->
                                         <!--style="display:none;">-->
                                        <!--<div id="edui1_upload_dialog" class="edui-editor-toolbarmsg-upload edui-default"-->
                                             <!--onclick="$EDITORUI[&quot;edui1&quot;].showWordImageDialog();">点击上传-->
                                        <!--</div>-->
                                        <!--<div class="edui-editor-toolbarmsg-close edui-default"-->
                                             <!--onclick="$EDITORUI[&quot;edui1&quot;].hideToolbarMsg();">x-->
                                        <!--</div>-->
                                        <!--<div id="edui1_toolbarmsg_label"-->
                                             <!--class="edui-editor-toolbarmsg-label edui-default"></div>-->
                                        <!--<div style="height:0;overflow:hidden;clear:both;" class="edui-default"></div>-->
                                    <!--</div>-->


                                    <!--<div id="edui1_message_holder" class="edui-editor-messageholder edui-default"-->
                                         <!--style="top: 44px; z-index: 1;"></div>-->
                                <!--</div>-->
                                <!--&lt;!&ndash;<div id="edui1_iframeholder" class="edui-editor-iframeholder edui-default"&ndash;&gt;-->
                                     <!--&lt;!&ndash;style="width: 584px; height: 100px; z-index: 0; overflow: hidden;">&ndash;&gt;-->
                                    <!--&lt;!&ndash;<iframe id="ueditor_0" width="100%" height="100%" frameborder="0"&ndash;&gt;-->
                                            <!--&lt;!&ndash;src="javascript:void(function(){document.open();document.write(&quot;&lt;!DOCTYPE html&gt;&lt;html xmlns=&#39;http://www.w3.org/1999/xhtml&#39; class=&#39;view&#39; &gt;&lt;head&gt;&lt;style type=&#39;text/css&#39;&gt;.view{padding:0;word-wrap:break-word;cursor:text;height:90%;}&ndash;&gt;-->
<!--&lt;!&ndash;body{margin:8px;font-family:sans-serif;font-size:16px;}p{margin:5px 0;}&lt;/style&gt;&lt;link rel=&#39;stylesheet&#39; type=&#39;text/css&#39; href=&#39;http://bbs.xiaomi.cn/statics/ueditor/themes/iframe.css&#39;/&gt;&lt;/head&gt;&lt;body class=&#39;view&#39; &gt;&lt;/body&gt;&lt;script type=&#39;text/javascript&#39;  id=&#39;_initialScript&#39;&gt;setTimeout(function(){editor = window.parent.UE.instants[&#39;ueditorInstant0&#39;];editor._setup(document);},0);var _tmpScript = document.getElementById(&#39;_initialScript&#39;);_tmpScript.parentNode.removeChild(_tmpScript);&lt;/script&gt;&lt;/html&gt;&quot;);document.close();}())"&ndash;&gt;-->
                                            <!--&lt;!&ndash;src="HamiSchool/js1/saved_resource(1).html"></iframe>&ndash;&gt;-->
                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                <!--&lt;!&ndash;<div id="edui1_bottombar" class="edui-editor-bottomContainer edui-default">&ndash;&gt;-->
                                    <!--&lt;!&ndash;<table class="edui-default">&ndash;&gt;-->
                                        <!--&lt;!&ndash;<tbody class="edui-default">&ndash;&gt;-->
                                        <!--&lt;!&ndash;<tr class="edui-default">&ndash;&gt;-->
                                            <!--&lt;!&ndash;<td id="edui1_elementpath" class="edui-editor-bottombar edui-default"></td>&ndash;&gt;-->
                                            <!--&lt;!&ndash;<td id="edui1_wordcount" class="edui-editor-wordcount edui-default">字数统计&ndash;&gt;-->
                                            <!--&lt;!&ndash;</td>&ndash;&gt;-->
                                            <!--&lt;!&ndash;<td id="edui1_scale" class="edui-editor-scale edui-default"&ndash;&gt;-->
                                                <!--&lt;!&ndash;style="display: none;">&ndash;&gt;-->
                                                <!--&lt;!&ndash;<div class="edui-editor-icon edui-default"></div>&ndash;&gt;-->
                                            <!--&lt;!&ndash;</td>&ndash;&gt;-->
                                        <!--&lt;!&ndash;</tr>&ndash;&gt;-->
                                        <!--&lt;!&ndash;</tbody>&ndash;&gt;-->
                                    <!--&lt;!&ndash;</table>&ndash;&gt;-->
                                <!--&lt;!&ndash;</div>&ndash;&gt;-->
                                <!--&lt;!&ndash;<div id="edui1_scalelayer" class="edui-default"></div>&ndash;&gt;-->
                            <!--</div>-->
                        <!--</div>-->




                        <!--&lt;!&ndash;<textarea isuploadattach="1" style="height: 100px; display: none;"></textarea>&ndash;&gt;-->
                        <!--&lt;!&ndash;<input type="hidden" id="token" value="">&ndash;&gt;-->
                        <!--<span class="btn" id="J_reply">回复</span>-->
                    <!--</div>-->

                <!--</div>-->
            <!--</div>-->

            <!--<div class="sidebar">-->
                <!--<a href="http://bbs.xiaomi.cn/t-29693730#J_fastpublish" class="sidebar_btn sidebar_msg">回复</a>-->
                <!--<a href="http://bbs.xiaomi.cn/thread/add/fid/501/type/forum" class="sidebar_btn sidebar_postmsg">发贴</a>-->
            <!--</div>-->

            <script type="text/javascript" src="HamiSchool/js1/jquery.lazyload.js"></script>
            <script type="text/javascript" src="HamiSchool/js1/jquery.datePicker-min.js"></script>
            <script type="text/javascript" src="HamiSchool/js1/xmdatepicker.js"></script>
            <script type="text/javascript" src="HamiSchool/js1/ZeroClipboard.min.js"></script>
            <script type="text/javascript" src="HamiSchool/js1/jquery.upload.js"></script>
            <script type="text/javascript" src="HamiSchool/js1/model.js"></script>
            <script type="text/javascript" src="HamiSchool/js1/normal_invitation.js"></script>
            <script type="text/javascript" src="HamiSchool/js1/graderemark.js"></script>
            <script type="text/javascript" src="HamiSchool/js1/talk.js"></script>
            <script type="text/javascript" src="HamiSchool/js1/ueditor.config.js"></script>
            <script type="text/javascript" src="HamiSchool/js1/ueditor.all.js"></script>

            <script type="text/javascript">
                UE.getEditor('editor');
            </script>
        </div>
        <span class="return" style="display: none;">返回</span></div>





    <div class="bannerBottom">
        <a href="http://bbs.xiaomi.cn/app/download" target="_blank" rel="noopener noreferrer" class="download_m"><img
                src="../images/banner_bottom_m.png"></a>
    </div>
</div>
<div class="footer brief">
    <div class="mobile_switch">
        <a class="switch_desktop disable" id="J_switchDesktop" href="http://bbs.xiaomi.cn/t-29693730#">电脑版</a>
        <a class="switch_mobile" id="J_switchMobile" href="http://bbs.xiaomi.cn/t-29693730#">手机版</a>
        <a class="switch_app download_m" href="http://bbs.xiaomi.cn/t-29693730#">客户端<i>new</i></a>
    </div>
    <div class="wrap_990">
        <a href="http://bbs.xiaomi.cn/" class="link">bbs.xiaomi.cn</a>
        <span>京ICP证110507号 京ICP备10046444号 <a target="_blank" rel="noopener noreferrer"
                                             href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802020134"
                                             style="cursor:pointer;color: white;">京公网安备11010802020134号</a></span>
    </div>
</div>

<!-- 统计代码 -->
<script>
    var _msq = _msq || [];
    _msq.push(['setDomainId', 112]);
    _msq.push(['trackPageView']);
    (function () {
        var ms = document.createElement('script');
        ms.type = 'text/javascript';
        ms.async = true;
        ms.src = '//s1.mi.com/stat/18/xmst.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(ms, s);
    })();
</script>
<script>
    var _hmt = _hmt || [];
</script>
<script src="HamiSchool/js1/autologin.js"></script>

<!--wxshare-->
<script src="HamiSchool/js1/jweixin-1.0.0.js"></script>
<script>
    var share = {
        wx_pyq_title: '【视频】小米手机新功能首曝光，这样的小米铃声你喜欢吗？',
        wx_title: '【视频】小米手机新功能首曝光，这样的小米铃声你喜欢吗？',
        wx_link: location.href,
        wx_img: '',
        wx_content: '【视频】小米手机新功能首曝光，这样的小米铃声你喜欢吗？',
        type: 'link',
    };
    var data = {
        "m": "interface-weixin",
        "do": "sdk_signature_info",
        "public_id": "gh_2113c0976bdb",
        "url": location.href, //必须为.mi.com域名下
        "type": "jsonp"
    }

    //判断是否是微信浏览器的函数
    function isWeiXin() {
        //window.navigator.userAgent属性包含了浏览器类型、版本、操作系统类型、浏览器引擎类型等信息，这个属性可以用来判断浏览器类型
        var ua = window.navigator.userAgent.toLowerCase();
        //通过正则表达式匹配ua中是否含有MicroMessenger字符串
        if (ua.match(/MicroMessenger/i) == 'micromessenger') {
            return true;
        } else {
            return false;
        }
    }

    if (isWeiXin()) {
        $.ajax({
            url: 'http://xmt.www.mi.com/index.php',
            dataType: 'jsonp',
            jsonpCallback: 'callback',
            data: $.param(data),
            success: function (Auth) {
                wx.config({
                    debug: false,
                    appId: "wx623336dacc19881d",
                    timestamp: Auth.data.timestamp,
                    nonceStr: Auth.data.nonce_str,
                    signature: Auth.data.signature,
                    jsApiList: ["onMenuShareTimeline", "onMenuShareAppMessage", "onMenuShareQQ", "onMenuShareQZone"] //选择需要使用的接口如调用拍照或从手机相册中选图接口
                });


                wx.ready(function () {
                    wx.onMenuShareTimeline({
                        title: share.wx_pyq_title, // 朋友圈分享标题
                        link: share.wx_link, // 分享链接
                        imgUrl: share.wx_img, // 分享图标
                        success: function () {
                            //callbackfn && callbackfn();
                        },
                        cancel: function () {

                        }
                    });
                    //
                    wx.onMenuShareAppMessage({
                        title: share.wx_title, // 分享标题
                        desc: share.wx_content, // 分享描述
                        link: share.wx_link, // 分享链接
                        imgUrl: share.wx_img, // 分享图标
                        type: share.type,
                        success: function () {
                            //callbackfn && callbackfn();
                        },
                        cancel: function () {
                            // 用户取消分享后执行的回调函数
                        }
                    });
                });

            }
        });
    }
</script>


<iframe src="HamiSchool/js1/autologin.html" style="width: 0px; height: 0px;"></iframe>
<div id="edui_fixedlayer" class="edui-default" style="position: fixed; left: 0px; top: 0px; width: 0px; height: 0px;">
    <div id="edui58" class="edui-popup  edui-bubble edui-default" onmousedown="return false;" style="display: none;">
        <div id="edui58_body" class="edui-popup-body edui-default">
            <iframe style="position:absolute;z-index:-1;left:0;top:0;background-color: transparent;" frameborder="0"
                    width="100%" height="100%" src="HamiSchool/js1/saved_resource(2).html" class="edui-default"></iframe>
            <div class="edui-shadow edui-default"></div>
            <div id="edui58_content" class="edui-popup-content edui-default"></div>
        </div>
    </div>
</div>
</body>
</html>