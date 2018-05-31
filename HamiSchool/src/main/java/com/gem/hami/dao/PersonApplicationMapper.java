package com.gem.hami.dao;

import com.gem.hami.entity.PersonApplication;
import com.gem.hami.entity.PersonApplicationExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PersonApplicationMapper {
    long countByExample(PersonApplicationExample example);

    int deleteByExample(PersonApplicationExample example);

    int deleteByPrimaryKey(Integer personApplicationId);

    int insert(PersonApplication record);

    int insertSelective(PersonApplication record);

    List<PersonApplication> selectByExample(PersonApplicationExample example);

    PersonApplication selectByPrimaryKey(Integer personApplicationId);

    int updateByExampleSelective(@Param("record") PersonApplication record, @Param("example") PersonApplicationExample example);

    int updateByExample(@Param("record") PersonApplication record, @Param("example") PersonApplicationExample example);

    int updateByPrimaryKeySelective(PersonApplication record);

    int updateByPrimaryKey(PersonApplication record);
}