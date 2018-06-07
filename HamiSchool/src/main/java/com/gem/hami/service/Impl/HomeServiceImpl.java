package com.gem.hami.service.Impl;

import com.gem.hami.dao.UserMapper;
import com.gem.hami.entity.User;
import com.gem.hami.entity.UserMessage;
import com.gem.hami.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HomeServiceImpl implements HomeService {
    /**
     * @Author：Wang
     * @Date：Created in 10:08 2018/6/6
     * @Modified By:
     */
    @Autowired
    private UserMapper userMapper;

    /**
     * @Author：Wang
     * @Date：Created in 10:08 2018/6/6
     * @Modified By:
     */
    @Override
    public User findUserById(Integer userId) {
        return userMapper.selectUserById(userId);
    }

    /**
     * @Author：Wang
     * @Date：Created in 10:08 2018/6/6
     * @Modified By:
     */
    @Override
    public boolean modifyUser(User user) {
        return userMapper.updateUser(user);
    }
//===================================================================================================
    @Override
    public List<UserMessage> findUserMessagesByCondition(int userId) {
        return null;
    }

    @Override
    public boolean removeUserMessage(int userMessageId) {
        return false;
    }
}
