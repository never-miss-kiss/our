package com.gem.hami.dao;

import com.gem.hami.entity.ReasonCategory;
import com.gem.hami.entity.ReasonCategoryExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReasonCategoryMapper {
    long countByExample(ReasonCategoryExample example);

    int deleteByExample(ReasonCategoryExample example);

    int deleteByPrimaryKey(Integer reasonCategoryId);

    int insert(ReasonCategory record);

    int insertSelective(ReasonCategory record);

    List<ReasonCategory> selectByExample(ReasonCategoryExample example);

    ReasonCategory selectByPrimaryKey(Integer reasonCategoryId);

    int updateByExampleSelective(@Param("record") ReasonCategory record, @Param("example") ReasonCategoryExample example);

    int updateByExample(@Param("record") ReasonCategory record, @Param("example") ReasonCategoryExample example);

    int updateByPrimaryKeySelective(ReasonCategory record);

    int updateByPrimaryKey(ReasonCategory record);
}