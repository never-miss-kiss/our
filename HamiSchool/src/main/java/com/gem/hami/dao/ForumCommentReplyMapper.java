package com.gem.hami.dao;

import com.gem.hami.entity.ForumCommentReply;

import java.util.List;

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
      * @param: * @param null
      * @result:
      * @Description:查找某帖子下的所有评论回复
      * @Date：Created in 8:49 2018/6/14
      * @Modified By:
     */
    public List<ForumCommentReply> selectForumCommentReply(int forumId);


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