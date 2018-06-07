package com.gem.hami.service.Impl;

import com.gem.hami.dao.UserMapper;
import com.gem.hami.dao.UserMessageMapper;
import com.gem.hami.entity.User;
import com.gem.hami.entity.UserMessage;
import com.gem.hami.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class HomeServiceImpl implements HomeService {
    @Autowired
    private UserMessageMapper userMessageMapper ;

    /**
     * @Author：Wang
     * @Date：Created in 10:08 2018/6/6
     * @Modified By:
     */
    private UserMapper userMapper;

    /**
     * @Author：Wang
     * @Date：Created in 10:08 2018/6/6
     * @Modified By:
     */
    @Override
    public User findUser(String userId) {
        return userMapper.selectUserById(userId);
    }


    /**
     * @Author：Wang
     * @Date：Created in 10:08 2018/6/6
     * @Modified By:
     */
    @Override
    public User modifyUser(User user) {
        return userMapper.updateUser(user);
    }


    /**
      * @Author：sunshilin
      * @param: userId
      * @result: 消息通知列表
      * @Description:查询某人的所有消息通知
      * @Date：Created in 10:17 2018/6/7
      * @Modified By:
     */
    @Override
    public List<UserMessage> findUserMessagesByCondition(int userId) {
        return userMessageMapper.selectUserMessagesByCondition(userId) ;
    }


    /**
      * @Author：sunshilin
      * @param: * @param null
      * @result:
      * @Description:
      * @Date：Created in 10:18 2018/6/7
      * @Modified By:
     */
    @Override
    public boolean removeUserMessage(int userMessageId) {
        userMessageMapper.modifyUserMessagesIsRead(userMessageId);
        return userMessageMapper.deleteUserMessagesIsRead();
    }
}
