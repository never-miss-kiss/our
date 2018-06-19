package com.gem.hami.service;

import com.gem.hami.entity.*;
import com.github.pagehelper.PageInfo;

import java.util.Collection;
import java.util.List;
import java.util.Map;

public interface HomeService {

//   /home/findUser.action
//   查询个人资料
    public User findUserById(Integer userId);

///home/modifyUser.action
//            修改个人资料,修改密码
    public boolean modifyUser(User user);

    public PageInfo<Goods> selectGoodByUserId(Map<String, Object> map);

    public PageInfo<GoodsCollection> selectAllGoodsCollection(Map<String, Object> map);

    public PageInfo<UserMessage> getAllUserMessageByUserId(Map<String, Object> map);


//====================================================================================================

//    消息中心：
//            /home/findUserMessage.action
//    显示未读消息(通过userId)显示用户的所有未读消息
    public List<UserMessage> findUserMessagesByCondition(int userId);


//    消息删除（已读）功能
    //先标为已读，后删掉
    public boolean removeUserMessage(int userMessageId);



}
