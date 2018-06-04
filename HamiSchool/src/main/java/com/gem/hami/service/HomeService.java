package com.gem.hami.service;

import com.gem.hami.entity.*;

import java.util.Collection;
import java.util.List;

public interface HomeService {
//   /home/findUser.action
//   查询个人资料
    public User findUserByName(String uname);

///home/modifyUser.action
//            修改个人资料,修改密码
    public boolean modifyUser(User user);


//====================================================================================================

//    消息中心：
//            /home/findUserMessage.action
//    显示未读消息(通过userId)显示用户的所有未读消息
    public List<UserMessage> findUserMessagesByCondition(int userId);


//    消息删除功能
    public boolean removeUserMessage(int userMessageId);

//    /admin/removeUser.action
//            删除用户信息
    public boolean removeUser(int adminId,int userId);

}
