package com.gem.hami.dao;

import com.gem.hami.entity.UserMessage;

import java.util.List;

public interface UserMessageMapper {
    /**
      * @Author：sunshilin
      * @param: 用户id
      * @result: 未读消息集合
      * @Description: 搜索某用户所有的未读消息（where idRead=false）
      * @Date：Created in 21:25 2018/6/4
      * @Modified By:
     */
    public List<UserMessage> selectUserMessagesByCondition(int userId);



    /**
      * @Author：sunshilin
      * @param: 未读消息id
      * @result:
      * @Description:点击标为已读时根据id将idRead设为true
      * @Date：Created in 21:30 2018/6/4
      * @Modified By:
     */
    public boolean  modifyUserMessagesIsRead(int userMessageId);



    /**
      * @Author：sunshilin
      * @param:
      * @result:
      * @Description:将表为已读的从消息列表里删去
      * @Date：Created in 21:32 2018/6/4
      * @Modified By:
     */
    public boolean  deleteUserMessagesIsRead();

}