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

    <title>帖子详情</title>
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
    <script src="../js1/zh-cn (2).js"></script>
    <script src="<%=path%>/bootstrap/jQuery.js"></script>


    <link rel="canonical" href="http://bbs.xiaomi.cn/t-29693730">
    <link rel="stylesheet" href="<%=path%>/sun/css/ueditor.css">
    <link rel="stylesheet" href="<%=path%>/sun/css/sign.css">
    <link rel="stylesheet" href="<%=path%>/sun/css/codemirror.css">
    <link rel="stylesheet" href="<%=path%>/sun/css/index.css">
    <link rel="stylesheet" href="<%=path%>/sun/css/invitation.css">
    <link rel="stylesheet" href="<%=path%>/sun/css/datePicker.css">

</head>



<body class="xmbbs_desktop">




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
                            <img src="${pageContext.request.contextPath}/profilePicture/${ForumPost.user.photo}"
                                 class="user_pic">
                        </a>
                        <div class="user_msg" style="margin-top: 0px">
					        <span style="margin-top: 0px">
                                <a href="http://bbs.xiaomi.cn/user/detail/miid/137006033" class="user_name"  style="margin-top: 0px">${ForumPost.user.nickname}</a>
							</span>
                            <p><span class="txt" style="font-size: 11px">${ForumPost.user.signature}</span>
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
                            <c:forEach items="${ForumPostRecent}" var="one">
                            <li>
                                <a href="${pageContext.request.contextPath}/forum/content.action?postId=${one.forumPostId}">${one.title}</a>
                            </li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
            <%--列表百宝箱--%>
            <div class="left_wrap">
                <div class="sidebarplate"
                     onclick="">

                    <div class="sidebarplate_tab">
                        <div class="tab">
                            <span class="on">学校推荐</span>
                        </div>
                    </div>
                    <div>
                        <ul class="on">
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2819" target="_blank"><span style="color:#ff0000;">河南科技大学</span></a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2836" target="_blank"><span style="color:#ff0000;">郑州航院</span></a>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2090" target="_blank">苏州大学</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2686" target="_blank">山东师范大学</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2815" target="_blank">郑州大学</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2840" target="_blank">洛阳理工学院</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2827" target="_blank">河南师范大学</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2688" target="_blank">聊城大学</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2669" target="_blank">山东大学</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2677" target="_blank">齐鲁工业大学</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2825" target="_blank">新乡医学院</a></li>
                            <li><a href="${pageContext.request.contextPath}/forum/list.action?schoId=2037" target="_blank">华东师范大学</a></li>


                        </ul>
                    </div>
                </div>
            </div>

        </div>


        <div class="contain_right clearfix fl" style="">





         <div class="filtrate invitation" f-id="501" date-id="29693730" t-id="2167">

                <%--帖子详情--%>
                <div class="invitation_con">

                    <h1>
                        <span></span>
                        <span></span>
                        <span class="name">${ForumPost.title}</span>
                    </h1>
                    <p class="txt">
                        <span class="user_msg_mobile"></span>
                        <span class="marktxt">${ForumPost.user.nickname}</span>

                        <span>发表在 </span>
                        <span class="time">${ForumPost.releaseTime}</span>
                        <span class="f_r"><i class="msg"></i>点击数：${ForumPost.clickCount}</span>
                        <span class="f_r"><i class="see"></i>点赞数：8430</span>
                    </p>

                    <div class="invitation_content">
                        ${ForumPost.content}

                        <%--<blockquote><p style="text-align: center;"><strong><span style="font-family: 微软雅黑;"><a--%>
                                <%--href="http://bbs.xiaomi.cn/t-29545641" target="_blank"--%>
                                <%--style="text-decoration-line: none; outline: 0px; font-family: arial, Microsoft Yahei, Hiragino Sans GB, sans-serif; font-size: 20px; color: rgb(245, 124, 0);">小米8年度旗舰发布会官方汇总，持续更新&gt;&gt;</a></span></strong>--%>
                        <%--</p></blockquote>--%>


                    </div>
                </div>



                <!--评论框-->
                <div>
                    <script>
//                        alert("pinglun");
                        function fabiao(){

                            var comment = $("#fabiao").val();

                            var tiziid = $("#teziid").val();

                            $.ajax({
                                type:"post",
                                url:"${pageContext.request.contextPath}/forum/addcomment.action",
                                data:{"comment":comment,"tiziid":tiziid},
                                success:function (ssb) {
                                    if(ssb){
                                        window.location.reload();
                                    }
                                }
                            })

                        }

                    </script>

                       <a href="" target="_blank" id="myimagepar">
                           <img class="user_head" id="myimage"
                                src="${pageContext.request.contextPath}/profilePicture/${sessionScope.userInfo.photo}">
                       </a>
                       <input id="fabiao" name="comment" placeholder="说说你的看法" \>
                        <input id="teziid" name="postid" type="hidden" value="${param.postId}">
                       <button  class="btn" id="butt" onclick="fabiao()">发表</button>

                </div>
                <style>
                        #domyself{
                            width: 40px;
                        }
                        #myimage{
                            width: 45px;
                            height: 45px;
                            position:absolute;
                            margin-top: -5px;
                        }
                        #fabiao{
                            width: 462px;
                            height: 40px;
                            margin-left: 50px;
                        }
                    </style>



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



                    <%--评论回复--%>
                    <ul class="reply_list">
                        <!-- top post list-->
                        <c:forEach items="${ForumComment}" var="forumcomment">
                        <li class="clearfix" post-id="650782626" id="810" float-id="810" u-id="405698082">
                            <div class="reply_list_img">
                                <a href="" target="_blank"
                                   rel="noopener noreferrer">
                                    <img class="user_head"

                                         src="${pageContext.request.contextPath}/profilePicture/${forumcomment.user.photo}">
                                </a>
                            </div>
                            <div class="reply_list_con">
                                <div class="auth_msg clearfix">
                                    <a href="http://bbs.xiaomi.cn/u-detail-405698082" class="auth_name" target="_blank"
                                       rel="noopener noreferrer">${forumcomment.user.nickname}</a>
                                    <i class="vip_icon 	vip_icon_m0	"></i>
                                    <span class="time">&nbsp;&nbsp;</span>
                                    <span class="at"> 发表于</span>
                                    <span class="time">${forumcomment.releaseTime}</span>
                                    <span class="comefrom"></span>

                                    <span class="reply_list_float">810#</span>
                                </div>

                                <div class="reply_txt"><p>${forumcomment.content}</p>
                                    <p class="replay_bu">
                                        <a class="replay_btn" onclick="showkuang(${forumcomment.user.userId},${forumcomment.forumPostCommentId},${ForumPost.forumPostId})">回复</a>

                                        <span class="replay_btn J_report">举报</span>

                                    </p>

                                 <%--以下foreach为评论回复   --%>
                                <c:forEach items="${ForumPostReply}" var="formcommentreply">

                                    <ul>
                                    <c:if test="${forumcomment.forumPostCommentId==formcommentreply.forumPostCommentId}">
                                        <div class="reply_list_img" style="margin-left: 35px">
                                            <a href="" target="_blank" rel="noopener noreferrer">
                                                <img class="user_head" style="height: 30px;width: 30px "
                                                     src="${pageContext.request.contextPath}/profilePicture/${formcommentreply.user.photo}">
                                            </a>
                                        </div>
                                        <p>

                                             <li class="copyli"><span class="myauth_name">${formcommentreply.user.nickname}</span>回复<span class="myauth_name">${formcommentreply.commentedUser.nickname}</span>:${formcommentreply.content}
                                             </li>
                                             <span class="replyspan" onclick="showkuang(${formcommentreply.user.userId},${formcommentreply.forumPostCommentId},${ForumPost.forumPostId})" >
                                                  回复
                                            </span>
                                        </p>
                                    </c:if>
                                    </ul>
                                        <style>
                                            .replyspan{
                                                float: right;
                                                width: 30px;
                                                font-size: 13px;
                                                margin-right: 20px;
                                                color: #8c8c8c;
                                            }
                                            .copyli{
                                                display:block;
                                                width:500px;
                                                margin-left:70px;
                                                white-space:normal;
                                                word-break : break-all;
                                                word-wrap: break-word;
                                            }
                                            .myauth_name{
                                                margin-right: 5px;
                                                font-size: 14px;
                                                color: #ff8b3d
                                            }
                                            #huifukongge{
                                                position: relative;
                                                height: 20px;
                                                margin-top: 20px;
                                            }
                                        </style>
                                    <input id="huifukongge" type="hidden" value="空格">
                                </c:forEach>
                                </div>
                                <input type="hidden" class="myselfhidden" onclick="transfer(${forumcomment.forumPostCommentId})"/>

                            </div>
                        </li>
                        <!--回复框-->
                        <div class="scollReplyWrap" style="top: 485px; display: none;" id="showkuang" >

                                <input type="text" id="reply_conntent" name="contentmy" />
                                <input type="hidden" id="reply_commentedid" name="comedid"/>
                                <input type="hidden" id="reply_commentid" name="comid"/>
                                <input type="hidden" id="reply_forumId" name="forumId"/>
                                <span class="btn" id="cancelmy">取消</span>
                                <button type="button" class="btn" id="replymy" onclick="replymy()">回复</button>

                        </div>
                        <style>
                            #reply_p{
                                margin-top: 0px;
                            }
                            #reply_span{
                                margin-top: 0px;
                                margin-left: 380px;
                                width: 40px;
                                height: 30px;
                                font-size: 19px;
                                text-align: center;
                                line-height: 30px;

                            }
                            #input1{

                                margin-left: 10px;
                            }
                            #button{
                                margin-left: 100px;
                                margin-top: 150px;
                            }

                            #div1{
                                border-top:4px orange solid;
                                position:absolute;

                                left: 190px;
                                width:400px;
                                height:150px;
                                z-index:10;
                                background:#F3F3F3;

                            }
                        </style>
                        <%--<div id="div1" style="display:none;">--%>
                            <%--<span id="reply_span" onclick="closeDiv(this)" >x</span>--%>
                            <%--<p id="reply_p"><span style="margin-left: 10px">回复：</span><span>田野</span></p>--%>
                            <%--<input type="text" name="input1" id="input1" style="width:300px;height: 40px; ">--%>
                            <%--<button type="submit" style="height: 40px;width: 60px;" >回复</button>--%>
                        <%--</div>--%>

                        <script>

                                function showkuang(userid,commentId,postId) {
//                                alert(postId);
                                document.getElementById("showkuang").style.display="block";
                                document.getElementById("reply_commentedid").value=userid;
//                                alert("要回复的人的id"+document.getElementById("reply_commentedid").value);
                                document.getElementById("reply_commentid").value=commentId;
//                                alert("评论id"+document.getElementById("reply_commentid").value);
                                document.getElementById("reply_forumId").value=postId;
//                                alert("帖子id"+document.getElementById("reply_forumId").value);

                                <%--$.ajax({--%>
                                    <%--type:"post",--%>
                                    <%--&lt;%&ndash;url:"${pageContext.request.contextPath}/forum/addcommentreply.action?userId="+userid+"&commentId="+commentId,&ndash;%&gt;--%>
<%--//                                    data:{"userId":userid},--%>
                                    <%--success:function (abd) {--%>
                                        <%--if(abd){--%>
                                            <%--alert("回复成功");--%>
                                        <%--}--%>
                                    <%--}--%>


                                <%--})--%>
                            }
                        </script>
                        <script>
                            function replymy() {

                                var commedid = document.getElementById("reply_commentedid").value;
                                var contentreply = document.getElementById("reply_conntent").value;
                                var commid = document.getElementById("reply_commentid").value;
                                var foruId = document.getElementById("reply_forumId").value;
//                                alert(foruId);
                                $.ajax({
                                    type:"post",
                                    url:"${pageContext.request.contextPath}/forum/addcommentreply.action",
                                    data:{"commid":commid,"commedid":commedid,"contentreply":contentreply,"forumId":foruId},
                                    success:function (abs) {
                                        if(abs){
                                            alert("回复成功");
                                            window.location.reload();
                                        }
                                    }
                                })
                            }

                        </script>

                    </c:forEach>
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
                        <%--    <li class="page selected "><a>1</a></li>
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
                                <!--</li-->                    </li>--%>
                        </ul>
                    </div>
                </div>
            </div>


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