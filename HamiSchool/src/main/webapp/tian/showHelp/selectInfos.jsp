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
                        <c:if test="${helpInfo.helpType==1}">
                        <a href="<%= basePath%>/help/helpDetail.action?helpType=${helpInfo.helpType}&helpId=${helpInfo.helpId}" target="_blank" class="article-title-holder">
                            <span class="article-title" title="帮我买">帮我买</span>
                            </c:if>
                            <c:if test="${helpInfo.helpType==2}">
                            <a href="<%= basePath%>/help/helpDetail.action?helpType=${helpInfo.helpType}&helpId=${helpInfo.helpId}" target="_blank" class="article-title-holder">
                                <span class="article-title" title="帮我送">帮我送</span>
                                </c:if>
                                <c:if test="${helpInfo.helpType==3}">
                                <a href="<%= basePath%>/help/helpDetail.action?helpType=${helpInfo.helpType}&helpId=${helpInfo.helpId}" target="_blank" class="article-title-holder">
                                    <span class="article-title" title="帮我取">帮我取</span>
                                    </c:if>
                                    <c:if test="${helpInfo.helpType==4}">
                                    <a href="<%= basePath%>help/helpDetail.action?helpType=${helpInfo.helpType}&helpId=${helpInfo.helpId}" target="_blank" class="article-title-holder">
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
                        <c:if test="${helpInfo.helpType==1}">
                        <a href="<%= basePath%>help/helpDetail.action?helpType=${helpInfo.helpType}&helpId=${helpInfo.helpId}" target="_blank" class="article-title-holder">
                            <div class="cover-image loaded" style="background-image: url(<%= basePath %>tian/images/handwrite1.png);"></div>
                            </c:if>
                            <c:if test="${helpInfo.helpType==2}">
                            <a href="<%= basePath%>help/helpDetail.action?helpType=${helpInfo.helpType}&helpId=${helpInfo.helpId}" target="_blank" class="article-title-holder">
                                <div class="cover-image loaded" style="background-image: url(<%= basePath %>tian/images/handwrite2.png);"></div>
                                </c:if>
                                <c:if test="${helpInfo.helpType==3}">
                                <a href="<%= basePath%>help/helpDetail.action?helpType=${helpInfo.helpType}&helpId=${helpInfo.helpId}" target="_blank" class="article-title-holder">
                                    <div class="cover-image loaded" style="background-image: url(<%= basePath %>tian/images/handwrite3.png);"></div>
                                    </c:if>
                                    <c:if test="${helpInfo.helpType==4}">
                                    <a href="<%= basePath%>help/helpDetail.action?helpType=${helpInfo.helpType}&helpId=${helpInfo.helpId}" target="_blank" class="article-title-holder">
                                        <div class="cover-image loaded" style="background-image: url(<%= basePath %>tian/images/handwrite4.png);"></div>
                                        </c:if>
                                    </a>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>

    <%--末尾的示例帖子--%>

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
