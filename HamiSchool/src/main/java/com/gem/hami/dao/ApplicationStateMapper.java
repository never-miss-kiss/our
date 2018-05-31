package com.gem.hami.dao;

import com.gem.hami.entity.ApplicationState;
import com.gem.hami.entity.ApplicationStateExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ApplicationStateMapper {
    long countByExample(ApplicationStateExample example);

    int deleteByExample(ApplicationStateExample example);

    int deleteByPrimaryKey(Integer applicationStateId);

    int insert(ApplicationState record);

    int insertSelective(ApplicationState record);

    List<ApplicationState> selectByExample(ApplicationStateExample example);

    ApplicationState selectByPrimaryKey(Integer applicationStateId);

    int updateByExampleSelective(@Param("record") ApplicationState record, @Param("example") ApplicationStateExample example);

    int updateByExample(@Param("record") ApplicationState record, @Param("example") ApplicationStateExample example);

    int updateByPrimaryKeySelective(ApplicationState record);

    int updateByPrimaryKey(ApplicationState record);
}