package com.gem.hami.dao;

import com.gem.hami.entity.HelpSend;
import com.gem.hami.entity.HelpSendExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HelpSendMapper {
    long countByExample(HelpSendExample example);

    int deleteByExample(HelpSendExample example);

    int deleteByPrimaryKey(Integer helpSendId);

    int insert(HelpSend record);

    int insertSelective(HelpSend record);

    List<HelpSend> selectByExample(HelpSendExample example);

    HelpSend selectByPrimaryKey(Integer helpSendId);

    int updateByExampleSelective(@Param("record") HelpSend record, @Param("example") HelpSendExample example);

    int updateByExample(@Param("record") HelpSend record, @Param("example") HelpSendExample example);

    int updateByPrimaryKeySelective(HelpSend record);

    int updateByPrimaryKey(HelpSend record);
}