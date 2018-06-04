package com.gem.hami.dao;

import com.gem.hami.entity.ForumPostComment;

public interface ForumPostCommentMapper {
    /**
     * @Author：sunshilin
     * @param: 一条评论
     * @result: boolean
     * @Description: 将帖子评论插入数据库
     * @Date：Created in 20:01 2018/6/4
     * @Modified By:
     */
    public boolean insertForumPostComment(ForumPostComment forumPostComment);



    /**
     * @Author：sunshilin
     * @param: 评论id
     * @result:
     * @Description: 根据id删除评论
     * @Date：Created in 20:09 2018/6/4
     * @Modified By:
     */
    public boolean deleteForumPostComment(int commentId);
}