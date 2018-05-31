package com.gem.hami.dao;

import com.gem.hami.entity.SchoolApplication;
import com.gem.hami.entity.SchoolApplicationExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SchoolApplicationMapper {
    long countByExample(SchoolApplicationExample example);

    int deleteByExample(SchoolApplicationExample example);

    int deleteByPrimaryKey(Integer schoolApplicationId);

    int insert(SchoolApplication record);

    int insertSelective(SchoolApplication record);

    List<SchoolApplication> selectByExample(SchoolApplicationExample example);

    SchoolApplication selectByPrimaryKey(Integer schoolApplicationId);

    int updateByExampleSelective(@Param("record") SchoolApplication record, @Param("example") SchoolApplicationExample example);

    int updateByExample(@Param("record") SchoolApplication record, @Param("example") SchoolApplicationExample example);

    int updateByPrimaryKeySelective(SchoolApplication record);

    int updateByPrimaryKey(SchoolApplication record);
}