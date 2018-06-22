<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<c:forEach items="${helpCommentReplyList}" var="reply">
    <div class="reply-item col-sm-12">
        <div class="col-sm-12 reply-item-top">
            <div class="col-sm-3">
                <img src="<%=basePath%>profilePicture/${reply.user.photo}" alt="${username}" class="img-circle" height="50" width="50">
            </div>

            <div>
                <p class="col-sm-3 name1">${reply.user.nickname}</p>
                <p class="col-sm-2">回复</p>
                <p class="col-sm-3 name1">${reply.commentedUser.nickname}</p>
            </div>

        </div>
        <div class="col-sm-12 reply-item-middle">
            <p>${reply.content}</p>
        </div>
        <div class="col-sm-12 reply-item-bottom">
            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#replyReply${reply.helpCommentReplyId}" value="${reply.helpCommentReplyId}">
                回复
            </button>
            <button type="button" class="btn btn-default" data-toggle="modal" data-target="#replyReport${reply.helpCommentReplyId}" value="${reply.helpCommentReplyId}">
                举报
            </button>
            <!-- Modal 回复的模态框-->
            <div class="modal fade" id="replyReply${reply.helpCommentReplyId}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">回复： ${reply.user.nickname}</h4>
                        </div>
                        <form method="post" action="<%=basePath %>/help/addHelpCommentReply.action">
                            <input name="userId" type="hidden" value="5">
                            <input name="commentedUserId" type="hidden" value="${reply.userId}">
                            <input name="helpCommentId" type="hidden" value="${reply.helpCommentId}">
                            <input name="releaseType" type="hidden" value="${reply.helpComment.releaseType}">
                            <input name="helpId" type="hidden" value="${reply.helpComment.helpId}">
                            <div class="modal-body">
                                <textarea name="content" class="form-control" rows="3">
                                </textarea>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                <button type="submit" class="btn btn-primary">发表</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>

            <!-- Modal 举报的模态框-->
            <div class="modal fade" id="replyReport${reply.helpCommentReplyId}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">举报表</h4>
                        </div>

                        <form method="post" action="###">
                            <div class="modal-body${reply.helpCommentReplyId}">
                                <div class="btn-group-vertical col-sm-6" role="group" aria-label="...">
                                    <button id="button1" value="1" type="button" class="btn btn-default active" >垃圾广告信息</button>
                                    <button id="button1" value="2" type="button" class="btn btn-default" >不友善行为</button>
                                    <button  id="button1" value="3" type="button" class="btn btn-default">涉嫌造谣</button>
                                    <button  id="button1" value="4" type="button" class="btn btn-default">涉黄信息</button>
                                </div>
                                <div class="btn-group-vertical col-sm-6" role="group" aria-label="...">
                                    <button id="button1" value="5" type="button" class="btn btn-default" >诱导赌博</button>
                                    <button id="button1" value="6" type="button" class="btn btn-default" >操纵言论</button>
                                    <button  id="button1" value="7" type="button" class="btn btn-default">影响选举</button>
                                    <button  id="button1" value="8" type="button" class="btn btn-default">其他</button>
                                </div>
                                <input type="hidden" class="reasonCategoryId${reply.helpCommentReplyId}" name="reasonCategoryId" value="1">
                                <input type="hidden" id="reportedUserId" name="reportedUserId" value="${reply.userId}" >
                                <input type="hidden" id="sourceCategoryId" name="sourceCategoryId" value="12">
                                <input type="hidden" id="sourceItemId" name="sourceItemId" value="${reply.helpCommentReplyId}">
                                <input type="hidden" id="helpId" name="helpId" value="${reply.helpComment.helpId}">
                                <input type="hidden" id="helpType" name="helpType" value="${reply.helpComment.releaseType}">
                                <script>
                                    //让属性可以只选一个
                                    $(".modal-body${reply.helpCommentReplyId} button").each(function(i,element){
                                        $(this).click(function(){
                                            var i = $(this).val();
                                            $(".modal-body${reply.helpCommentReplyId}  button").removeClass("active");
                                            $(".modal-body${reply.helpCommentReplyId}  button").eq(i-1).addClass("active");
                                            $(".reasonCategoryId${reply.helpCommentReplyId}").val(i);
                                            alert(i);
                                        })
                                    });
                                </script>
                                <textarea class="form-control" rows="3" placeholder="补充理由..."></textarea>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                <button type="submit" class="btn btn-primary">发表</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>


        </div>
    </div>
</c:forEach>

</html>
