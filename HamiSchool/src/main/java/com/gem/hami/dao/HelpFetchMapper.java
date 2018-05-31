package com.gem.hami.dao;

import com.gem.hami.entity.HelpFetch;
import com.gem.hami.entity.HelpFetchExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HelpFetchMapper {
    long countByExample(HelpFetchExample example);

    int deleteByExample(HelpFetchExample example);

    int deleteByPrimaryKey(Integer helpFetchId);

    int insert(HelpFetch record);

    int insertSelective(HelpFetch record);

    List<HelpFetch> selectByExample(HelpFetchExample example);

    HelpFetch selectByPrimaryKey(Integer helpFetchId);

    int updateByExampleSelective(@Param("record") HelpFetch record, @Param("example") HelpFetchExample example);

    int updateByExample(@Param("record") HelpFetch record, @Param("example") HelpFetchExample example);

    int updateByPrimaryKeySelective(HelpFetch record);

    int updateByPrimaryKey(HelpFetch record);
}