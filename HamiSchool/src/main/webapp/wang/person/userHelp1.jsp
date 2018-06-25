
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

    <link href="<%= basePath %>tian/showHelp/showHelp_files/helpShow.css" rel="stylesheet">
    <link href="<%= basePath %>bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="<%= basePath %>bootstrap/js/jquery.min.js"></script>
    <script src="<%= basePath %>bootstrap/js/bootstrap.js"></script>
    <script src="<%= basePath%>tian/tian.js"></script>
<!--Gallery栏目框-->
    <link href="<%= basePath %>tian/showHelp/Gallery_files/style.css" rel="stylesheet" type="text/css" media="all">
    <link href="<%= basePath %>tian/showHelp/Gallery_files/animate.css" rel="stylesheet" type="text/css" media="all">

    <script src="<%= basePath %>bootstrap/js/jquery.min.js"></script>

    <title>HelpBuyDetail</title>

    <script>

        (function(){
            var webp = (function(){
                try{
                    return (document.createElement('canvas').toDataURL('image/webp').indexOf('data:image/webp') === 0);
                }catch(err) {
                    return false;
                }
            })()
            var DR = window.devicePixelRatio||1

            function formatImg(url,w,h) {
                url = trimHttp(url)
                w = parseInt(w)
                h = parseInt(h)
                if(!url) return
                var suffix = url.match(/(.*\.(jpg|jpeg|gif|png))(\?.*)?/)
                if(!suffix) return
                //路径是否包含/bfs/
                var isBfs = url.indexOf('/bfs/') != -1 ? true : false
                //是否是GIF图片
                if(suffix[2] === 'gif' || !isBfs){
                    return url
                }
                //裁剪规则
                var cut = (w && h) ? '@' + w + 'w_' + h + 'h' : '@'
                //图片后参数 比如视频动态图
                var args = suffix[3] ? suffix[3] : ''
                if(webp){
                    return suffix[1] + cut + '.webp' + args
                }else{
                    return suffix[1] + cut + '.' + suffix[2] + args
                }
            }

            function trimHttp(url){
                return url ? url.replace(/^http:|^https:/, '') : ''
            }
            function detailImg(e,w,h){
                var w = w||null
                var h = h||null
                if(e.getAttribute('webpCheck')){
                    return
                }
                // let w = e.width;
                // let h = e.height;
                var imgStr = e.getAttribute('data-bg-img');
                if(!imgStr){
                    return
                }
                var webpStr = formatImg(imgStr,w*DR,h*DR)
                e.setAttribute('webpCheck','checked')
                e.setAttribute('src',webpStr)

                e.onerror=null
            }
            //try

            window.detailImg = detailImg



            window.articleIdList = []


            window.original = {
                rid:"0",
                categories: JSON.parse('[{"id":2,"parent_id":0,"name":"动画","children":[{"id":4,"parent_id":2,"name":"动漫杂谈"},{"id":5,"parent_id":2,"name":"动漫资讯"},{"id":31,"parent_id":2,"name":"动画技术"}]},{"id":1,"parent_id":0,"name":"游戏","children":[{"id":6,"parent_id":1,"name":"单机游戏"},{"id":7,"parent_id":1,"name":"电子竞技"},{"id":8,"parent_id":1,"name":"手机游戏"},{"id":9,"parent_id":1,"name":"网络游戏"},{"id":10,"parent_id":1,"name":"桌游棋牌"}]},{"id":28,"parent_id":0,"name":"影视","children":[{"id":12,"parent_id":28,"name":"电影"},{"id":35,"parent_id":28,"name":"电视剧"},{"id":36,"parent_id":28,"name":"纪录片"},{"id":37,"parent_id":28,"name":"综艺"}]},{"id":3,"parent_id":0,"name":"生活","children":[{"id":13,"parent_id":3,"name":"美食"},{"id":21,"parent_id":3,"name":"萌宠"},{"id":14,"parent_id":3,"name":"时尚"},{"id":22,"parent_id":3,"name":"运动"},{"id":15,"parent_id":3,"name":"日常"}]},{"id":29,"parent_id":0,"name":"兴趣","children":[{"id":23,"parent_id":29,"name":"绘画"},{"id":24,"parent_id":29,"name":"手工"},{"id":38,"parent_id":29,"name":"摄影"},{"id":39,"parent_id":29,"name":"音乐舞蹈"},{"id":11,"parent_id":29,"name":"模型手办"}]},{"id":16,"parent_id":0,"name":"轻小说","children":[{"id":18,"parent_id":16,"name":"原创连载"},{"id":19,"parent_id":16,"name":"同人连载"},{"id":32,"parent_id":16,"name":"短篇小说"},{"id":20,"parent_id":16,"name":"小说杂谈"}]},{"id":17,"parent_id":0,"name":"科技","children":[{"id":25,"parent_id":17,"name":"人文历史"},{"id":33,"parent_id":17,"name":"自然"},{"id":26,"parent_id":17,"name":"数码"},{"id":27,"parent_id":17,"name":"汽车"},{"id":34,"parent_id":17,"name":"学习"}]}]')
            }
        })()

    </script>
    <link href="<%= basePath %>tian/showHelp/showHelp_files/list.42d79f81f299efa3cf40cae42dfe4e28c0f11ae9.css" rel="stylesheet">
   <link href="/wang/css/num1.css" rel="stylesheet">
</head>

<body>
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
                            <a href="<%=basePath%>goods/findAllGoods.action"><span class="res2">二手</span></a>
                            <a class="active" href="<%=basePath%>help/selectAllHelps.action"><span class="res3">跑腿</span></a>
                            <a  href="<%=basePath%>forum/list.action"><span class="res1">哈密社区</span></a>
                            <a href="#"><span class="res2">哈密认证</span></a>
                            <a href="#"><span class="res3">联系我们</span></a>
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
                            <a href="#">
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
                                <a href="#">
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
    <div class="tab-content">
    <div class="nav-tab-bar">
        <%--<a href="" target="_self" class="logo"> </a>--%>
        <a href="javascript:selectInfos(1,1)" target="_self" class="tab-item " data-tab-id="0"> <span>帮我买</span>
        <div class="pointer"></div>
    </a>
            <a href="javascript:selectInfos(2,1)" target="_self" class="tab-item " data-tab-id="2">
                <span>帮我送</span>
            </a>
            <a href="javascript:selectInfos(3,1)" target="_self" class="tab-item  " data-tab-id="1">
                <span>帮我取</span>
            </a>
            <a href="javascript:selectInfos(4,1)" target="_self" class="tab-item  " data-tab-id="28">
                <span>代排队</span>
            </a>
    </div><%--需要--%>
    <div class="page-content">
        <div class="left-side">
            <div class="article-list" id="articlelist">
                <div class="article-list-holder">
                    <c:forEach items="${pageInfo.list}" var="helpInfo">
                        <div class="article-item item-tp-4" data-id="484261">
                            <div class="item-holder">
                                <div class="article-content">
                                    <div class="article-left-block">
                                        <c:if test="${helpInfo.helpType==1}">
                                            <a href="<%= basePath%>help/helpDetail.action
                                        ?helpType=${helpInfo.helpType}
                                        &helpId=${helpInfo.helpId}"
                                               target="_blank"
                                               class="article-title-holder" />
                                           <%-- <span class="article-title" title="帮我买">
                                                帮我买
                                            </span>--%>
                                        </c:if>
                                        <c:if test="${helpInfo.helpType==2}">
                                            <a href="<%= basePath%>help/helpDetail.action
                                        ?helpType=${helpInfo.helpType}
                                        &helpId=${helpInfo.helpId}" target="_blank"
                                           class="article-title-holder" />
                                            <%--<span class="article-title" title="帮我送">
                                                帮我送
                                            </span>--%>
                                        </c:if>
                                        <c:if test="${helpInfo.helpType==3}">
                                            <a href="<%= basePath%>help/helpDetail.action
                                            ?helpType=${helpInfo.helpType}
                                            &helpId=${helpInfo.helpId}"
                                               target="_blank"
                                               class="article-title-holder" />
                                            <%--<span class="article-title" title="帮我取">
                                                帮我取</span>--%>
                                        </c:if>
                                        <c:if test="${helpInfo.helpType==4}">
                                            <a href="<%= basePath%>help/helpDetail.action
                                            ?helpType=${helpInfo.helpType}
                                            &helpId=${helpInfo.helpId}"
                                               target="_blank"
                                               class="article-title-holder" />
                                            <%--<span class="article-title" title="代排队">
                                                代排队
                                            </span>--%>
                                        </c:if>
                                        <div class="article-desc">
                                            <p>${helpInfo.name}
                                                酬劳：${helpInfo.personPrice}元
                                                截止日期：${helpInfo.endTime}
                                            </p>
                                        </div>
                                        <div class="article-info-bar">
                                            <a href="#" target="_blank"
                                               class="up-content">
                                                <span class="face-holder">
                                                    <img src="<%= basePath %>tian/showHelp/showHelp_files/头像.jpg" class="face-img">
                                                </span>
                                                <span class="nick-name">
                                                        ${helpInfo.user.nickname}
                                                </span>
                                            </a>
                                            <span class="view">${helpInfo.clickCount}</span>
                                            <span class="like ">点赞量</span>
                                            <a href="#" target="_blank">
                                                <span class="reply">${helpInfo.commentCount}</span>
                                            </a>
                                        </div>
                                    </div>
                                    <%--<div class="cover-img">
                                        <a href="#" target="_blank">
                                            <div class="cover-image loaded" style="background-image: url(<%= basePath %>tian/images/bear.jpg);"></div>
                                        </a>
                                    </div>--%>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <%--分页--%>
                    <div class="paging2">

                        <form  onsubmit="return false" action="#" id="mainForm" method="post">
                            <input type="hidden" name="curPage" id="curPage"/>

                            <div class='page fix'>
                                共 <b>${pageInfo.total}</b> 条
                                <a href="javascript:selectInfos(${helpType},${pageInfo.firstPage})" class='first'>首页</a>
                                <c:if test="${!pageInfo.isFirstPage}">
                                    <a href="javascript:selectInfos(${helpType},${pageInfo.prePage})" class='pre'>上一页</a>
                                </c:if>
                                当前第<span>${pageInfo.pageNum}</span>页

                                <c:if test="${!pageInfo.isLastPage}">
                                    <a href="javascript:selectInfos(${helpType},${pageInfo.nextPage})" class='next'>下一页</a>
                                </c:if>
                                <a href="javascript:selectInfos(${helpType},${pageInfo.lastPage})" class='last'>末页</a>

                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
    <div class="to-top"> </div>
    <script src="<%= basePath %>bootstrap/js/jquery.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="<%= basePath %>tian/showHelp/showHelp_files/header.js.下载"></script>
<script src="<%= basePath %>tian/showHelp/showHelp_files/log-reporter.js.下载">

</script>
<script>
    window.reportMsgObj = {}
    window.reportConfig = {
        sample: 1,
        errorTracker: false,
        resourceTracker: false,
        scrollTracker: false,
        msgObjects: 'reportMsgObj'
    }
    var reportScript = document.createElement('script');
    reportScript.src = "//s1.hdslb.com/bfs/seed/log/report/log-reporter.js";
    $(function () {
        document.getElementsByTagName('body')[0].appendChild(reportScript);
    })
</script>
<script>
    function selectInfos(typeId,curPage){
        $.ajax({
            type:"get",
            url:"${pageContext.request.contextPath}/help/selectInfos.action",
            data:"typeId="+typeId+"&curPage="+curPage,
            success:function(data){
                $("#articlelist").html(data);
            },
            error : function(){
                alert("nani");
            }
        })
    }
</script>
<script type="text/javascript"
        src="<%= basePath %>tian/showHelp/showHelp_files/manifest.42d79f81f299efa3cf40cae42dfe4e28c0f11ae9.js.下载">
</script>
<script type="text/javascript" src="<%= basePath %>tian/showHelp/showHelp_files/vendor.42d79f81f299efa3cf40cae42dfe4e28c0f11ae9.js.下载">

</script>
<script type="text/javascript" src="<%= basePath %>tian/showHelp/showHelp_files/list.42d79f81f299efa3cf40cae42dfe4e28c0f11ae9.js.下载"></script>
<script src="<%= basePath %>tian/showHelp/showHelp_files/log-reporter.js.下载"></script>

<script src="file://s1.hdslb.com/bfs/seed/log/report/log-reporter.js"></script>
<script src="file://s1.hdslb.com/bfs/seed/log/report/log-reporter.js"></script>

</body>
</html>
