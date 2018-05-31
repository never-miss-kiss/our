package com.gem.hami.dao;

import com.gem.hami.entity.ForumPostLike;
import com.gem.hami.entity.ForumPostLikeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ForumPostLikeMapper {
    long countByExample(ForumPostLikeExample example);

    int deleteByExample(ForumPostLikeExample example);

    int deleteByPrimaryKey(Integer likeId);

    int insert(ForumPostLike record);

    int insertSelective(ForumPostLike record);

    List<ForumPostLike> selectByExample(ForumPostLikeExample example);

    ForumPostLike selectByPrimaryKey(Integer likeId);

    int updateByExampleSelective(@Param("record") ForumPostLike record, @Param("example") ForumPostLikeExample example);

    int updateByExample(@Param("record") ForumPostLike record, @Param("example") ForumPostLikeExample example);

    int updateByPrimaryKeySelective(ForumPostLike record);

    int updateByPrimaryKey(ForumPostLike record);
}