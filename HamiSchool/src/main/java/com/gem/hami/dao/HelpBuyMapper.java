package com.gem.hami.dao;

import com.gem.hami.entity.HelpBuy;
import com.gem.hami.entity.HelpBuyExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HelpBuyMapper {
    long countByExample(HelpBuyExample example);

    int deleteByExample(HelpBuyExample example);

    int deleteByPrimaryKey(Integer helpBuyId);

    int insert(HelpBuy record);

    int insertSelective(HelpBuy record);

    List<HelpBuy> selectByExample(HelpBuyExample example);

    HelpBuy selectByPrimaryKey(Integer helpBuyId);

    int updateByExampleSelective(@Param("record") HelpBuy record, @Param("example") HelpBuyExample example);

    int updateByExample(@Param("record") HelpBuy record, @Param("example") HelpBuyExample example);

    int updateByPrimaryKeySelective(HelpBuy record);

    int updateByPrimaryKey(HelpBuy record);
}