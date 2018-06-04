
<html lang="zh-CN" xml:lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">

    <meta name="viewport" content="width=device-width">
    <title>Hami校园社区</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <!--<link rel="stylesheet" type="text/css" href="http://s1.bbs.xiaomi.cn/statics/css/zh-cn/index.css">-->


    <!--[if lt IE 9]>
    <link rel="stylesheet" type="text/css" href="http://s1.bbs.xiaomi.cn/statics/css/zh-cn/ie8-header.css">
    <![endif]-->
    <!--<script type="text/javascript" async="" src="../mstr.js.下载"></script>-->
    <!--<script type="text/javascript" async="" src="../xmst.js.下载"></script>-->
    <!--<script type="text/javascript" src="../zh-cn.js.下载"></script>-->
    <!--<script type="text/javascript" src="../jquery.min.js.下载"></script>-->
    <!--<script type="text/javascript" src="../base.js.下载"></script>-->
    <!--<script type="text/javascript" src="../jquery.lazyload.js.下载"></script>-->
    <!--<script type="text/javascript" async="" src="../sign.js.下载" charset="UTF-8"></script>-->

    <link rel="stylesheet" href="../css/homepage.css">
    <link rel="stylesheet" href="../css/index.css">
    <link rel="stylesheet" href="../css/sign.css">
</head>

<body class="xmbbs_desktop" >
<script>switchMobile.init()</script>
<div class="main">
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



        @media screen and (max-width: 1500px) {
            .xmcomm_header {
                width: 990px
            }



            .xmcomm_header .header_menu {
                left: -10px;
                margin: 0 0 0 250px
            }




            .xmcomm_header .header_more_list ul {
                width: 364px
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
    <div class="xmcomm_header_wrap">
        <div class="xmcomm_header">

            <ul class="header_menu">
                <li><a href="http://www.xiaomi.cn/index.html">主页</a></li>
                <li><a href="http://bbs.xiaomi.cn/">二手物品</a></li>
                <li>
                    <span>跑腿</span>
                </li>
                <li><a href="http://wan.xiaomi.cn/" target="_blank">联系我们</a></li>
                <li><a href="http://pai.xiaomi.cn/" target="_blank">关于我们</a></li>
                <li><a href="https://s1.mi.com/m/ghd/2018/mst051002/index.html" target="_blank">更换学校</a></li>
            </ul>
        </div>
    </div>
    <div class="head_wrap">
        <div class="header wrap_990">
            <div class="user_wrap">
                <div class="topbar-info J_userInfo " id="login">
                    <a class="loginbtn" href="http://bbs.xiaomi.cn/site/login">登录</a>
                    <a href="http://account.xiaomi.com/pass/register" class="registerbtn">注册</a>
                </div>
            </div>
        </div>
    </div>
    <!-- 			<div class="bannerTop">
                    <a href="http://hd.xiaomi.cn/mipop/2016dl/" target="_blank" rel="noopener noreferrer" class="download_pc"><img src="http://cdn.fds.api.xiaomi.com/b2c-bbs-cms/2016/0819/20160819070742289.jpg"></a>
                </div> -->
    <div class="container_wrap wrap_990 clearfix">
        <div class="contain_left fr">
            <div class="left_wrap">
                <div class="sidebarplate"
                     onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;侧边栏&#39;, &#39;版块推荐&#39;]);">

                    <div class="sidebarplate_tab">
                        <div class="tab">
                            <span class="on">学校推荐</span>
                        </div>
                    </div>
                    <div>
                        <ul class="on">
                            <li><a href="" target="_blank"><span style="color:#ff0000;">河南科技大学</span></a></li>
                            <li><a href="" target="_blank"><span style="color:#ff0000;">郑州航院</span></a>
                            </li>
                            <li><a href="" target="_blank">南阳理工</a></li>
                            <li><a href="" target="_blank">山东师范大学</a></li>
                            <li><a href="" target="_blank">郑州大学</a></li>
                            <li><a href="" target="_blank">洛阳理工学院</a></li>
                            <li><a href="" target="_blank">河南师范大学</a></li>
                            <li><a href="" target="_blank">聊城大学</a></li>
                            <li><a href="" target="_blank">山东大学</a></li>
                            <li><a href="" target="_blank">齐鲁工业大学</a></li>
                            <li><a href="" target="_blank">新乡医学院</a></li>
                            <li><a href="" target="_blank">洛阳理工大学</a></li>
                            <li><a href="" target="_blank"></a></li>
                            <li><a href="" target="_blank"></a></li>

                        </ul>



                    </div>
                </div>
            </div>


            <div class="left_wrap">
                <div class="con">
                    <div class="hotspot">
                        <h3>大家都在搜</h3>
                    </div>
                    <div class="shareActive">
                        <a href="http://wan.xiaomi.cn/activity/detail/activity_id/177" target="_blank"
                           class="shareActive_img"><img src="../images/20180528010156209.jpg"></a> <span
                            class="shareActive_txt"> 飞利浦智睿床头灯</span>
                    </div>


                    <div class="shareActive">
                        <a href="http://bbs.xiaomi.cn/t-15121215" class="shareActive_img"><img
                                src="../images/20180424044403369.jpg"></a> <span class="shareActive_txt">小米校园女神团招募啦!</span>
                    </div>

                </div>
            </div>


            <div class="left_wrap">
                <div class="con">
                    <div class="hotspot">
                        <h3>这个地方放点啥</h3>
                        <img src="../images/20171128094227219.png" class="two_dimension_code">
                    </div>
                </div>
            </div>

            <div class="left_wrap">
                <div class="con">
                    <div class="hotspot">
                        <h3>这个地方放点啥</h3>
                        <img src="../images/20180320105715268.jpg" class="two_dimension_code">
                    </div>
                </div>
            </div>


        </div>
        <div class="contain_right fl clearfix ">


            <!--<div class="hostplate">-->
                <!--<span class="name">热门版块:</span>-->
                <!--<ul class="hostplate_con clearfix">-->
                    <!--<li class="list_item">-->
                        <!--<a href="http://bbs.xiaomi.cn/f-390" class="list_item_con"-->
                           <!--onclick="_hmt.push([&#39;_trackEvent&#39;, &#39;bbs首页&#39;, &#39;热门版块&#39;, &#39;&#39;]);">-->
                            <!--<img src="../T1SJJgBgbT1R4cSCrK.png">-->
                            <!--<span class="txt">MIUI功能与讨论</span>-->
                        <!--</a>-->
                    <!--</li>-->
                    <!--<li class="list_item">-->
                        <!--<a href="http://bbs.xiaomi.cn/f-475" class="list_item_con"-->
                           <!--onclick="_hmt.push([&#39;_trackEvent&#39;, &#39;bbs首页&#39;, &#39;热门版块&#39;, &#39;&#39;]);">-->
                            <!--<img src="../58101629cb677.png">-->
                            <!--<span class="txt">小米MIX 2</span>-->
                        <!--</a>-->
                    <!--</li>-->
                    <!--<li class="list_item">-->
                        <!--<a href="http://bbs.xiaomi.cn/f-487" class="list_item_con"-->
                           <!--onclick="_hmt.push([&#39;_trackEvent&#39;, &#39;bbs首页&#39;, &#39;热门版块&#39;, &#39;&#39;]);">-->
                            <!--<img src="../5915502dea48f.jpg">-->
                            <!--<span class="txt">小米6</span>-->
                        <!--</a>-->
                    <!--</li>-->
                    <!--<li class="list_item">-->
                        <!--<a href="http://bbs.xiaomi.cn/f-501" class="list_item_con"-->
                           <!--onclick="_hmt.push([&#39;_trackEvent&#39;, &#39;bbs首页&#39;, &#39;热门版块&#39;, &#39;&#39;]);">-->
                            <!--<img src="../5b03cca990b74.jpg">-->
                            <!--<span class="txt">小米8</span>-->
                        <!--</a>-->
                    <!--</li>-->
                <!--</ul>-->
            <!--</div>-->
            <div class="theme">
                <div class="theme_con">
                    <div class="theme_nav">
                        <a href="http://bbs.xiaomi.cn/" class="theme_nav_list current"
                           onclick="_hmt.push([&#39;_trackEvent&#39;, &#39;bbs首页&#39;, &#39;内容区&#39;, &#39;推荐button&#39;]);_msq.push([&#39;trackEvent&#39;, &#39;tj&#39;,&#39;&#39;,&#39;mibbis_c&#39;]);">
                            推荐
                        </a>
                        <a href="http://bbs.xiaomi.cn/l" class="theme_nav_list"
                           onclick="_hmt.push([&#39;_trackEvent&#39;, &#39;bbs首页&#39;, &#39;最新主题button&#39;, &#39;&#39;]);_msq.push([&#39;trackEvent&#39;, &#39;new&#39;,&#39;&#39;,&#39;mibbis_c&#39;]);">
                            最新主题
                        </a>
                        <a href="http://bbs.xiaomi.cn/thread/add" class="btn theme_nav_btn"
                           onclick="_hmt.push([&#39;_trackEvent&#39;, &#39;bbs首页&#39;, &#39;内容区&#39;, &#39;发表新主题&#39;]);">发表新主题</a>
                    </div>

                    <ul>
                        <style type="text/css">
                            .personLayer ol.clearfix li:nth-child(1) {
                                display: none;
                            }

                            /*.personLayer li.integral {*/
                                /*border-left: none;*/
                                /*padding-left: 24px;*/
                            /*}*/
                        </style>
                        <li class="theme_list clearfix" u-id="137006033">
                            <div class="theme_list_img">
                                <a href="http://bbs.xiaomi.cn/u-detail-137006033" class="headportrait" target="_blank"
                                   rel="noopener noreferrer">
                                    <img class="user_head" src="../images/avatar.jpg"
                                         data-original="http://cdn.fds.api.xiaomi.com/b2c-bbs/cn/137006033/avatar.jpg?&amp;width=50&amp;height=50"
                                         style="display: block;">
                                </a>
                            </div>
                            <div class="theme_list_con">

                                <div class="title">
                                    <a href="http://bbs.xiaomi.cn/t-29629024"  class="title_name " target="_blank"
                                       rel="noopener noreferrer"
                                       onclick="">
                                        王文祥自己臭(｡･∀･)ﾉﾞ嗨好玩吗？ </a>

                                <div class="auth_msg clearfix">
                                    <a href="http://bbs.xiaomi.cn/u-detail-137006033" class="user_name" target="_blank"
                                       rel="noopener noreferrer">永_恆</a>
                                    <i class=""></i>

                                    <span class="time txt">1分钟前</span>

                                    <span class="comefrom txt"></span>
                                    <span class="stick txt">置顶</span>
                                    <p class="see">
                                        <span class="numb msg"><i></i>收藏</span>
                                        <span class="numb view"><i></i>点赞</span>
                                        <span class="numb msg"><i></i>点赞数：93276</span>
                                        <span class="numb view"><i></i>点击量：93276</span>
                                    </p>
                                </div>
                            </div>
                         </li>



                                    </ul>
                                    <div class="base_widget_paging">
                                        <div class="paging_widget_2">
                                            <ul>
                                                <li class="page selected "><a
                                                        onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">1</a>
                                                </li>
                                                <li class="page"><a href="http://bbs.xiaomi.cn/d-2"
                                                                    onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">2</a>
                                                </li>
                                                <li class="page"><a href="http://bbs.xiaomi.cn/d-3"
                                                                    onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">3</a>
                                                </li>
                                                <li class="page"><a href="http://bbs.xiaomi.cn/d-4"
                                                                    onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">4</a>
                                                </li>
                                                <li class="page"><a href="http://bbs.xiaomi.cn/d-5"
                                                                    onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">5</a>
                                                </li>
                                                <li class="page"><a href="http://bbs.xiaomi.cn/d-6"
                                                                    onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">6</a>
                                                </li>
                                                <li class="page"><a href="http://bbs.xiaomi.cn/d-7"
                                                                    onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">7</a>
                                                </li>
                                                <li class="page"><a href="http://bbs.xiaomi.cn/d-8"
                                                                    onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">8</a>
                                                </li>
                                                <li class="page"><a href="http://bbs.xiaomi.cn/d-9"
                                                                    onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">9</a>
                                                </li>
                                                <li class="page"><a href="http://bbs.xiaomi.cn/d-10"
                                                                    onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">10</a>
                                                </li>
                                                <li class="next"><a href="http://bbs.xiaomi.cn/d-2"
                                                                    onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">&gt;</a>
                                                </li>
                                                <li class="last"><a href="http://bbs.xiaomi.cn/d-1034"
                                                                    onclick="_hmt.push([&#39;_trackEvent&#39;,&#39;bbs首页&#39;,&#39;帖子列表&#39;, &#39;翻页&#39;]);">末页&gt;&gt;</a>
                                                    <!--</li-->                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript" src="../personLayer.js.下载"></script>
        </div>
        <script type="text/javascript" src="../slide.js.下载"></script>
    </div>
    <div class="bannerBottom">
        <a href="http://bbs.xiaomi.cn/app/download" target="_blank" rel="noopener noreferrer" class="download_m"><img
                src="../banner_bottom_m.png"></a>
    </div>
</div>
<div class="footer">
    <!--<div class="mobile_switch">-->
        <!--<a class="switch_desktop disable" id="J_switchDesktop" href="http://bbs.xiaomi.cn/#">电脑版</a>-->
        <!--<a class="switch_mobile" id="J_switchMobile" href="http://bbs.xiaomi.cn/#">手机版</a>-->
        <!--<a class="switch_app download_m" href="http://bbs.xiaomi.cn/#">客户端<i>new</i></a>-->
    <!--</div>-->
    <div class="footertop">
        <div class="wrap_990">
            <div class="footertop_con">
                <dl>
                    <dd><a href="http://www.cnmo.com/" target="_blank" rel="noopener noreferrer">手机中国</a></dd>
                    <dd><a href="http://bbs.kuaipan.cn/" target="_blank" rel="noopener noreferrer">金山快盘</a></dd>
                </dl>
                <dl>
                    <dd><a href="http://www.leiphone.com/" target="_blank" rel="noopener noreferrer">雷锋网</a></dd>
                    <dd><a href="http://www.chinaz.com/" target="_blank" rel="noopener noreferrer">站长之家</a></dd>
                </dl>
                <dl>
                    <dd><a href="http://www.mydrivers.com/" target="_blank" rel="noopener noreferrer">驱动之家</a></dd>
                    <dd><a href="http://bbs.feng.com/" target="_blank" rel="noopener noreferrer">威锋论坛</a></dd>
                </dl>
                <dl>
                    <dd><a href="http://mobile.zol.com.cn/" target="_blank" rel="noopener noreferrer">ZOL手机频道</a></dd>
                    <dd><a href="http://bbs.zhiyoo.com/" target="_blank" rel="noopener noreferrer">安卓网</a></dd>
                </dl>
                <dl>
                    <dd><a href="http://bbs.mumayi.com/" target="_blank" rel="noopener noreferrer">安卓论坛</a></dd>
                    <dd><a href="http://www.znds.com/" target="_blank" rel="noopener noreferrer">智能电视网</a></dd>
                </dl>
                <dl>
                    <dd><a href="http://www.igao7.com/" target="_blank" rel="noopener noreferrer">爱搞机</a></dd>
                    <dd><a href="http://www.tvhome.com/" target="_blank" rel="noopener noreferrer">电视之家</a></dd>
                </dl>
            </div>
        </div>
    </div>
    <div class="footerdown">
        <div class="wrap_990">
            <a href="http://bbs.xiaomi.cn/" class="milogo">Hami</a>
            <a href="http://bbs.xiaomi.cn/" class="link">HamiSchool</a>
            <span>未备案 <a target="_blank" rel="noopener noreferrer"
                                                 href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=11010802020134"
                                                 style="cursor:pointer;color: white;">未备案</a></span>
        </div>
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
<script src="../autologin.js.下载"></script>

<iframe src="../autologin.html" style="width: 0px; height: 0px;"></iframe>
</body>
</html>