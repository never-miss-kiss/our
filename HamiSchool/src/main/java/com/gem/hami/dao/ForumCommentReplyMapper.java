package com.gem.hami.dao;

import com.gem.hami.entity.ForumCommentReply;
import com.gem.hami.entity.ForumCommentReplyExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ForumCommentReplyMapper {
    long countByExample(ForumCommentReplyExample example);

    int deleteByExample(ForumCommentReplyExample example);

    int deleteByPrimaryKey(Integer forumCommentReplyId);

    int insert(ForumCommentReply record);

    int insertSelective(ForumCommentReply record);

    List<ForumCommentReply> selectByExample(ForumCommentReplyExample example);

    ForumCommentReply selectByPrimaryKey(Integer forumCommentReplyId);

    int updateByExampleSelective(@Param("record") ForumCommentReply record, @Param("example") ForumCommentReplyExample example);

    int updateByExample(@Param("record") ForumCommentReply record, @Param("example") ForumCommentReplyExample example);

    int updateByPrimaryKeySelective(ForumCommentReply record);

    int updateByPrimaryKey(ForumCommentReply record);
}