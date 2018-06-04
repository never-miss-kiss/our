package com.gem.hami.dao;

import com.gem.hami.entity.HelpCommentReply;

public interface HelpCommentReplyMapper {

    /**
      * @Author：Tian

      * @Description：添加跑腿的评论回复
      * @Result:
      * @Date：Created in 20:03 2018/6/4
      * @Modified By:
     */
    public boolean insertCommentReply(HelpCommentReply helpCommentReply);

    public boolean deleteHelpCommentReply(int replyId);
}