package com.gem.hami.dao;

import com.gem.hami.entity.User;

import java.util.List;


public interface UserMapper {
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
    public List<User> selectUser();
    /**
     * @Author：Wang
     * @Result:
     * @Date：Created in 19:17 2018/6/4
     * @Modified By:
     */
    /**
     * 根据Id查找User
     * @param uid
     */
    public void selectUserById(String uid);

    /**
     * @Author：Wang
     * @Result:
     * @Date：Created in 19:15 2018/6/4
     * @Modified By:
     */
    /**
     * @param uname
     */
    public void selectUserByName(String uname);

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
    public void selectUserBySchoolId(int sid);

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
    public boolean updateUser(User user);
}