package com.gem.hami.service;

import com.gem.hami.entity.User;

public interface InitService {
//    /init/login.action
//    登陆
    //此id非彼id
    public User login(String id);

//    /init/register.action
//    注册
    public boolean register(User user);


//  获得验证码 图片验证码不需要写接口
    public String  getPhotoVerification(int userId);
    public String  getEmailVerification(int userId, String email);
    public String  getPhoneVerification(int userId, String phone);

//   /init/forget.action
//   提交
//   账号，新密码，验证码
//id 用户id  ，password 新的密码，typeId 验证码类型，verification 所输入验证码
    public boolean forget(int id, String password, int typeId, String verification);


}
