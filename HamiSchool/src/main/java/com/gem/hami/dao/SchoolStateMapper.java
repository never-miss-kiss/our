package com.gem.hami.dao;

import com.gem.hami.entity.SchoolState;
import com.gem.hami.entity.SchoolStateExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SchoolStateMapper {
    long countByExample(SchoolStateExample example);

    int deleteByExample(SchoolStateExample example);

    int deleteByPrimaryKey(Integer schoolStateId);

    int insert(SchoolState record);

    int insertSelective(SchoolState record);

    List<SchoolState> selectByExample(SchoolStateExample example);

    SchoolState selectByPrimaryKey(Integer schoolStateId);

    int updateByExampleSelective(@Param("record") SchoolState record, @Param("example") SchoolStateExample example);

    int updateByExample(@Param("record") SchoolState record, @Param("example") SchoolStateExample example);

    int updateByPrimaryKeySelective(SchoolState record);

    int updateByPrimaryKey(SchoolState record);
}