package com.gem.hami.dao;

import com.gem.hami.entity.ForumPost;
import com.gem.hami.entity.ForumPostExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ForumPostMapper {
    long countByExample(ForumPostExample example);

    int deleteByExample(ForumPostExample example);

    int deleteByPrimaryKey(Integer forumPostId);

    int insert(ForumPost record);

    int insertSelective(ForumPost record);

    List<ForumPost> selectByExampleWithBLOBs(ForumPostExample example);

    List<ForumPost> selectByExample(ForumPostExample example);

    ForumPost selectByPrimaryKey(Integer forumPostId);

    int updateByExampleSelective(@Param("record") ForumPost record, @Param("example") ForumPostExample example);

    int updateByExampleWithBLOBs(@Param("record") ForumPost record, @Param("example") ForumPostExample example);

    int updateByExample(@Param("record") ForumPost record, @Param("example") ForumPostExample example);

    int updateByPrimaryKeySelective(ForumPost record);

    int updateByPrimaryKeyWithBLOBs(ForumPost record);

    int updateByPrimaryKey(ForumPost record);
}