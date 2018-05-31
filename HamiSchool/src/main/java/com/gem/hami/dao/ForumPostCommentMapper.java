package com.gem.hami.dao;

import com.gem.hami.entity.ForumPostComment;
import com.gem.hami.entity.ForumPostCommentExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ForumPostCommentMapper {
    long countByExample(ForumPostCommentExample example);

    int deleteByExample(ForumPostCommentExample example);

    int deleteByPrimaryKey(Integer forumPostCommentId);

    int insert(ForumPostComment record);

    int insertSelective(ForumPostComment record);

    List<ForumPostComment> selectByExample(ForumPostCommentExample example);

    ForumPostComment selectByPrimaryKey(Integer forumPostCommentId);

    int updateByExampleSelective(@Param("record") ForumPostComment record, @Param("example") ForumPostCommentExample example);

    int updateByExample(@Param("record") ForumPostComment record, @Param("example") ForumPostCommentExample example);

    int updateByPrimaryKeySelective(ForumPostComment record);

    int updateByPrimaryKey(ForumPostComment record);
}