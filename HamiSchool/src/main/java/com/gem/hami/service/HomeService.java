package com.gem.hami.service;

import com.gem.hami.entity.*;

import java.util.Collection;
import java.util.List;

public interface HomeService {
//   /home/findUser.action
//   查询个人资料
    public User findUser(int userId);

///home/modifyUser.action
//            修改个人资料,修改密码
    public User modifyUser(User user);



//     /home/findCollectionByCondition.action
//    显示我的收藏（包含收藏的物品、帖子任务、跑腿任务）：
//   userId 用户号，typeId 查找方式(1.都显示  2.只显示收藏的二手 3.只显示帖子 4只显示跑腿)
    public List<AllCollection> findCollectionsbyCondition(int userId,int typeId);


// /home/removeCollection.action
//            取消收藏的东西
// typeId 表示要删除的类型(1.二手 2.论坛 3.跑腿) ，
// collectionId  表示要删除的数据在它的表中的主键
    public boolean removeCollection(int typeId,int collectionId);



//    消息中心：
//            /home/findUserMessage.action
//    显示未读消息(通过userId)显示用户的所有未读消息
    public List<UserMessage> findUserMessagesByCondition(int userId);



//    消息删除（已读）功能
    public boolean removeUserMessage(int userMessageId);

//    /admin/removeUser.action
//            删除用户信息
    public boolean removeUser(int adminId,int userId);

//    /admin/removeReport.action
//    处理举报信息；
    public boolean removeReport(int adminId,int reportId);


}
