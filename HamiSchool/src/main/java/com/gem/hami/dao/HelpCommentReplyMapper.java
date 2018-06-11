package com.gem.hami.dao;

import com.gem.hami.entity.HelpCommentReply;

import java.util.List;

public interface HelpCommentReplyMapper {

    /**
     * @Author：Tian

     * @Description：添加跑腿的评论回复
     * @Result:
     * @Date：Created in 20:03 2018/6/4
     * @Modified By:
     */
    public List<HelpCommentReply> selectReplysByCommentId(int CommentId);

    public HelpCommentReply selectReplyByReplyId(int ReplyId);

    public boolean insertHelpCommentReply(HelpCommentReply helpCommentReply);

    public boolean deleteHelpCommentReply(int replyId);
}