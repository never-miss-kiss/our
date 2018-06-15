<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>

<div class="article-list-holder">

    <c:forEach items="${pageInfo.list}" var="helpInfo">
        <div class="article-item item-tp-4" data-id="484261">
            <div class="item-holder">
                <div class="article-content">
                    <div class="article-left-block">
                        <a href="#" target="_blank" class="article-title-holder">

                            <c:if test="${helpInfo.helpType==1}">
                                <span class="article-title" title="帮我买">帮我买</span>
                            </c:if>
                            <c:if test="${helpInfo.helpType==2}">
                                <span class="article-title" title="帮我送">帮我送</span>
                            </c:if>
                            <c:if test="${helpInfo.helpType==3}">
                                <span class="article-title" title="帮我取">帮我取</span>
                            </c:if>
                            <c:if test="${helpInfo.helpType==4}">
                                <span class="article-title" title="代排队">代排队</span>
                            </c:if>

                        </a>
                        <div class="article-desc">
                            <p>${helpInfo.name}   酬劳：${helpInfo.personPrice}元   截止日期：${helpInfo.endTime}</p>

                        </div>

                        <div class="article-info-bar">
                            <a href="#" target="_blank" class="up-content">
                                <span class="face-holder"><img src="<%= basePath %>tian/showHelp/showHelp_files/头像.jpg" class="face-img"></span>
                                <span class="nick-name">${helpInfo.user.nickname}</span>
                            </a>
                            <a href="https://www.bilibili.com/read/douga#rid=4" target="_self">
                                <span class="category">帮我取</span>
                            </a>
                            <span class="view">${helpInfo.clickCount}</span>
                            <span class="like ">点赞量</span>
                            <a href="#" target="_blank">
                                <span class="reply">${helpInfo.commentCount}</span>
                            </a>
                        </div>
                    </div>
                    <div class="cover-img">
                        <a href="#" target="_blank">
                            <div class="cover-image loaded" style="background-image: url(<%= basePath %>tian/images/bear.jpg);"></div>
                        </a>
                    </div>
                </div>
            </div>
        </div>

    </c:forEach>

    <div class="article-item item-tp-4" data-id="515423">
        <div class="item-holder">
            <div class="article-content">
                <div class="article-left-block"><a href="#" target="_blank" class="article-title-holder"><span class="article-title" title="【凯源】腐段子">【凯源】腐段子</span></a>
                    <div class="article-desc">本文为转载文，原作者是【白依源】。“说你爱我！”王俊凯声音低沉，手上的速度却没有变慢。　　　　“不要…唔…嗯～”王源在愈来愈快的步伐中溢出呻·吟。　　　　“说！说你爱我！”那人加大力度，空气中弥漫奇特</div>
                    <div class="article-info-bar"><a href="#" target="_blank" class="up-content">
                        <span class="face-holder"><img src="file:///G:/%E6%80%BB%E9%A1%B9%E7%9B%AE/workplace/Mybilibili%E4%B8%93%E6%A0%8F%20-%20%E5%89%AF%E6%9C%AC/%E5%93%94%E5%93%A9%E5%93%94%E5%93%A9%E4%B8%93%E6%A0%8F_files/0a4a84b0bdeadc31cc70639cc973daa03e65b78a.jpg@26w_26h.webp" class="face-img"></span>
                        <span class="nick-name">KR-卡洛伊</span>
                    </a>
                        <a href="https://www.bilibili.com/read/lightnovel#rid=32" target="_self">
                            <span class="category">短篇小说</span></a><span class="view">89</span><span class="like ">4</span><a href="https://www.bilibili.com/read/cv515423#comment&amp;from=category_0" target="_blank">
                            <span class="reply">3</span></a></div>
                </div>
                <div class="cover-img"><a href="https://www.bilibili.com/read/cv515423?from=category_0" target="_blank">
                    <div class="cover-image loaded" pre-style="background-image:url(https://i0.hdslb.com/bfs/article/9fb67e601d926ae3de301673d39af367fcdfa05a.png@257w_193h.webp)" style="background-image: url(&quot;https://i0.hdslb.com/bfs/article/9fb67e601d926ae3de301673d39af367fcdfa05a.png@257w_193h.webp&quot;);"></div>
                </a></div>
            </div>
        </div>
    </div>

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
    </div>
</div>

</html>
