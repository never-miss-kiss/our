package com.gem.hami.service;

public interface InitService {
//    /init/login.action
//    登陆
    public boolean login(int id,String password);

//    /init/register.action
//    注册
    public boolean register(int id,String password);


//  获得验证码
    public String  getPhotoVerification(int userId);
    public String  getEmailVerification(int userId,String email);
    public String  getPhoneVerification(int userId,String phone);

//   /init/forget.action
//   提交
//   账号，新密码，验证码
//id 用户id  ，password 新的密码，typeId 验证码类型，verification 所输入验证码
    public boolean forget(int id,String password,int typeId,String verification);


}
