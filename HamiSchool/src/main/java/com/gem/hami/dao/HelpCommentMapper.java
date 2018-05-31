package com.gem.hami.dao;

import com.gem.hami.entity.HelpComment;
import com.gem.hami.entity.HelpCommentExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HelpCommentMapper {
    long countByExample(HelpCommentExample example);

    int deleteByExample(HelpCommentExample example);

    int deleteByPrimaryKey(Integer helpCommentId);

    int insert(HelpComment record);

    int insertSelective(HelpComment record);

    List<HelpComment> selectByExample(HelpCommentExample example);

    HelpComment selectByPrimaryKey(Integer helpCommentId);

    int updateByExampleSelective(@Param("record") HelpComment record, @Param("example") HelpCommentExample example);

    int updateByExample(@Param("record") HelpComment record, @Param("example") HelpCommentExample example);

    int updateByPrimaryKeySelective(HelpComment record);

    int updateByPrimaryKey(HelpComment record);
}