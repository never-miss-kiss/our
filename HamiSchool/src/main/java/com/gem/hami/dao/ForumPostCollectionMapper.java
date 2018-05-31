package com.gem.hami.dao;

import com.gem.hami.entity.ForumPostCollection;
import com.gem.hami.entity.ForumPostCollectionExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ForumPostCollectionMapper {
    long countByExample(ForumPostCollectionExample example);

    int deleteByExample(ForumPostCollectionExample example);

    int deleteByPrimaryKey(Integer forumPostCollectionId);

    int insert(ForumPostCollection record);

    int insertSelective(ForumPostCollection record);

    List<ForumPostCollection> selectByExample(ForumPostCollectionExample example);

    ForumPostCollection selectByPrimaryKey(Integer forumPostCollectionId);

    int updateByExampleSelective(@Param("record") ForumPostCollection record, @Param("example") ForumPostCollectionExample example);

    int updateByExample(@Param("record") ForumPostCollection record, @Param("example") ForumPostCollectionExample example);

    int updateByPrimaryKeySelective(ForumPostCollection record);

    int updateByPrimaryKey(ForumPostCollection record);
}