package com.gem.hami.dao;

import com.gem.hami.entity.MessageType;
import com.gem.hami.entity.MessageTypeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MessageTypeMapper {
    long countByExample(MessageTypeExample example);

    int deleteByExample(MessageTypeExample example);

    int deleteByPrimaryKey(Integer messageTypeId);

    int insert(MessageType record);

    int insertSelective(MessageType record);

    List<MessageType> selectByExample(MessageTypeExample example);

    MessageType selectByPrimaryKey(Integer messageTypeId);

    int updateByExampleSelective(@Param("record") MessageType record, @Param("example") MessageTypeExample example);

    int updateByExample(@Param("record") MessageType record, @Param("example") MessageTypeExample example);

    int updateByPrimaryKeySelective(MessageType record);

    int updateByPrimaryKey(MessageType record);
}