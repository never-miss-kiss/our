package com.gem.hami.dao;

import com.gem.hami.entity.User;
import java.util.List;
public interface UserMapper {
    /**
      * @Author：sunshilin
      * @param: 用户名和密码
      * @result:    返回一个用户
      * @Description: 登录需要，根据密码和用户名查找用户是否
      * @Date：Created in 20:32 2018/6/4
      * @Modified By:
     */
    public User selectUserByNameAndPwd(int id, String password);




    /**
      * @Author：sunshilin
      * @param: * @param null
      * @result:
      * @Description:快速注册
      * @Date：Created in 20:37 2018/6/4
      * @Modified By:
     */
    public boolean insertUser(int id, String password);




    /**
      * @Author：sunshilin
      * @param: 用户id
      * @result:
      * @Description: 根据id把email查询出来
      * @Date：Created in 20:43 2018/6/4
      * @Modified By:
     */
    public String  getEmail(int userId);




    /**
      * @Author：sunshilin
      * @param: 用户id
      * @result: 用户的手机号
      * @Description:  根据id将用户的手机号查出来
      * @Date：Created in 20:50 2018/6/4
      * @Modified By:
     */
    public String  getPhoneNum(int userId);




    /**
      * @Author：sunshilin
      * @param: 用户id
      * @result: 用户的信息
      * @Description: 查询出用户的信息后和要修改的信息比对
      * @Date：Created in 20:52 2018/6/4
      * @Modified By:
     */
    public User selectUserById(int userId);




    /**
      * @Author：sunshilin
      * @param:用户id，修改后的密码
      * @result:
      * @Description:根据id修改密码
      * @Date：Created in 20:57 2018/6/4
      * @Modified By:
     */
    public boolean updateUser(int id, String password);

//================================================================================================================

    /**
     * @Author：Wang
     * @Result:
     * @Date：Created in 19:16 2018/6/4
     * @Modified By:
     */
    /**
     * 查找所有的User
     * @return
     */
    public List<User> selectAllUser();
    /**
     * @Author：Wang
     * @Result:
     * @Date：Created in 19:17 2018/6/4
     * @Modified By:tian
     */
    /**
     * 根据Id查找User
     * @param uid
     */
    public void selectUserById(String uid);
    /**
     * @Author：Wang
     * @Result:
     * @Date：Created in 19:14 2018/6/4
     * @Modified By:
     */
    /**
     *
     * @param sid
     */
    public User selectUserBySchoolId(int sid);

    /**
     *
     * @param user
     * @return
     */
    /**
     * @Author：Wang
     * @Result:
     * @Date：Created in 19:19 2018/6/4
     * @Modified By:
     */
    public boolean updateUserById(int id);

    /**
     * @Author：Wang
     * @Date：Created in 20:20 2018/6/4
     * @Modified By:
     */
    /**
     * 根据名字查User
     * @param uname
     * @return
     */
    public User selectUserByName(String uname);
    /**
     * @Author：Wang
     * @Date：Created in 20:15 2018/6/4
     * @Modified By:
     */
    /**
     * 根据名字删除用户
     * @param uname
     * @return
     */
    public boolean deleteUserByCondition(String uname);
    /**
     * @Author：Wang
     * @Date：Created in 19:44 2018/6/4
     * @Modified By:
     */
    /**
     * public boolean removeUser(int userId);
     * 根据id删除用户
     * @param userId
     * @return
     */
    public boolean deleteUserById(int userId);

}