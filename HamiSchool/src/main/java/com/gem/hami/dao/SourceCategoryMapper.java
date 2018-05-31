package com.gem.hami.dao;

import com.gem.hami.entity.SourceCategory;
import com.gem.hami.entity.SourceCategoryExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SourceCategoryMapper {
    long countByExample(SourceCategoryExample example);

    int deleteByExample(SourceCategoryExample example);

    int deleteByPrimaryKey(Integer sourceCategoryId);

    int insert(SourceCategory record);

    int insertSelective(SourceCategory record);

    List<SourceCategory> selectByExample(SourceCategoryExample example);

    SourceCategory selectByPrimaryKey(Integer sourceCategoryId);

    int updateByExampleSelective(@Param("record") SourceCategory record, @Param("example") SourceCategoryExample example);

    int updateByExample(@Param("record") SourceCategory record, @Param("example") SourceCategoryExample example);

    int updateByPrimaryKeySelective(SourceCategory record);

    int updateByPrimaryKey(SourceCategory record);
}