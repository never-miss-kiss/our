package com.gem.hami.service.Impl;

import com.gem.hami.dao.UserMapper;
import com.gem.hami.entity.User;
import com.gem.hami.service.InitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InitServiceImpl implements InitService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User login(String id) {

        return userMapper.selectUserByNum(id);

    }

    @Override
    public boolean register(User user) {

        return userMapper.insertUser(user);
    }

    @Override
    public String getPhotoVerification(int userId) {
        return null;
    }

    @Override
    public String getEmailVerification(int userId, String email) {
        return null;
    }

    @Override
    public String getPhoneVerification(int userId, String phone) {
        return null;
    }

    @Override
    public boolean forget(int id, String password, int typeId, String verification) {
        return false;
    }
}
