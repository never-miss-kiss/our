package com.gem.hami.dao;

import com.gem.hami.entity.ForumCommentReply;

public interface ForumCommentReplyMapper {
    /**
     * @Author：sunshilin
     * @param: 一条评论回复
     * @result: boolean
     * @Description: 将评论回复插入数据库
     * @Date：Created in 20:03 2018/6/4
     * @Modified By:
     */
    public boolean insertForumCommentReply(ForumCommentReply forumCommentReply);



    /**
     * @Author：sunshilin
     * @param: 该条评论回复的id
     * @result: boolean
     * @Description: 根据id 删除评论回复
     * @Date：Created in 20:05 2018/6/4
     * @Modified By:
     */
    public boolean deleteForumCommentReply(int replyId);

}