// JavaScript Document
function findCommentReply(commentId) {
	$.ajax({
        type: "POST",
        url: "/HamiSchool/help/findCommentReplyByCondition.action",
        data: "commentId="+commentId,
        success: function(data) {
            var comment = "#comment" + commentId;
            var showButton = "#showButton" + commentId;
            var clearButton = "#clearButton" + commentId;
            $(comment).html(data);

            $(showButton).addClass("hidden");
            $(clearButton).removeClass("hidden");

        },
        error : function(){
            alert("nani");
        }
	});
}

function clearReply(commentId) {
    var comment = "#comment" + commentId;
    var showButton = "#showButton" + commentId;
    var clearButton = "#clearButton" + commentId;
    $(clearButton).addClass("hidden");
    $(showButton).removeClass("hidden");
    $(comment).html(" ");
}


function findCommentReply1(commentId)
{
		var comment = "#comment" + commentId;
		var strs = '<div class="comment-item col-sm-10">\
                            <div class="col-sm-8 comment-item-top">\
                                <div class="col-sm-3">\
                                    <img src="banner/头像.jpg" alt="${username}" class="img-circle" height="50" width="50">\
                                </div>\
                                <div>\
 			                 		<h3 class="col-sm-7">大地哥哥</h3>\
								</div>\
                            </div>\
							<div class="col-sm-8 comment-item-middle"></div>\
							</div>\
							 <div class="col-sm-8 comment-item-bottom">\
                                <button type="button" class="btn btn-default" data-toggle="modal" data-target="#test">\
                                      回复\
                                 </button>\
                                    <div class="modal fade" id="test" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">\
                                      <div class="modal-dialog" role="document">\
                                        <div class="modal-content">\
                                          <div class="modal-header">\
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>\
                                            <h4 class="modal-title" id="myModalLabel">回复： 无心</h4>\
                                          </div>\
                                          <form method="post" action="###">\
                                              <div class="modal-body">\
                                                     <textarea class="form-control" rows="3"></textarea>\
                                              </div>\
                                              <div class="modal-footer">\
                                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
                                                <button type="submit" class="btn btn-primary">发表</button>\
                                              </div>\
                                          </form>\
                                        </div>\
                                      </div>\
                                    </div>\
									<button type="button" class="btn btn-default" data-toggle="modal" data-target="#btn-report">举报</button>\
									<div class="modal fade" id="btn-report" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">\
                                      <div class="modal-dialog" role="document">\
                                        <div class="modal-content">\
                                          <div class="modal-header">\
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>\
                                            <h4 class="modal-title" id="myModalLabel">举报表</h4>\
                                          </div>\
                                          <form method="post" action="###">\
                                              <div class="modal-body">\
                                              		  <div class="btn-group-vertical col-sm-6" role="group" aria-label="...">\
                                                      		  <button id="button1" type="button" class="btn btn-default active" >垃圾广告信息</button>\
                                                              <button id="button1" type="button" class="btn btn-default" >不友善行为</button>\
                                                              <button  id="button1" type="button" class="btn btn-default">反动言论</button>\
                                                              <button  id="button1" type="button" class="btn btn-default">涉黄信息</button>\
											          </div>\
                                                       <div class="btn-group-vertical col-sm-6" role="group" aria-label="...">\
                                                      		  <button id="button1" type="button" class="btn btn-default" >垃圾广告信息</button>\
                                                              <button id="button1" type="button" class="btn btn-default" >操纵言论</button>\
                                                              <button  id="button1" type="button" class="btn btn-default">影响选举</button>\
                                                              <button  id="button1" type="button" class="btn btn-default">涉嫌造谣</button>\
											          </div>\
													  <textarea class="form-control" rows="3" placeholder="补充理由..."></textarea>\
													  </div>\
                                              <div class="modal-footer">\
                                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>\
												<button type="submit" class="btn btn-primary">发表</button>\
												</div>\
                                          </form>\
                                        </div>\
                                      </div>\
                                    </div>\
                            </div>\
                        </div>\
                        <div style="clear:both"></div>\
						';
			$(comment).append(function(){
				return strs;
			})

}
									
								
