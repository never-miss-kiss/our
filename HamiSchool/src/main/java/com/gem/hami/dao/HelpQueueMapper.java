package com.gem.hami.dao;

import com.gem.hami.entity.HelpQueue;
import com.gem.hami.entity.HelpQueueExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HelpQueueMapper {
    long countByExample(HelpQueueExample example);

    int deleteByExample(HelpQueueExample example);

    int deleteByPrimaryKey(Integer helpQueueId);

    int insert(HelpQueue record);

    int insertSelective(HelpQueue record);

    List<HelpQueue> selectByExample(HelpQueueExample example);

    HelpQueue selectByPrimaryKey(Integer helpQueueId);

    int updateByExampleSelective(@Param("record") HelpQueue record, @Param("example") HelpQueueExample example);

    int updateByExample(@Param("record") HelpQueue record, @Param("example") HelpQueueExample example);

    int updateByPrimaryKeySelective(HelpQueue record);

    int updateByPrimaryKey(HelpQueue record);
}