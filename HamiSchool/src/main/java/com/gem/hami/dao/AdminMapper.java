package com.gem.hami.dao;

import com.gem.hami.entity.Admin;
import com.gem.hami.entity.Report;
import com.gem.hami.entity.User;

import java.util.List;

public interface AdminMapper {
    /**
     * @Author：Wang
     * @Result:
     * @Date：Created in 19:24 2018/6/4
     * @Modified By:
     */
    /**
     * public List<Admin> findAdmin()
     * 查找所有的管理员
     * @return
     */
    public List<Admin> selectAllAdmin();

    /**
     * @Author：Wang
     * @Result:
     * @Date：Created in 19:32 2018/6/4
     * @Modified By:
     */
    /**
     * public boolean addAdmin(Admin admin);
     * 增加管理员
     * @param admin
     * @return
     */
    public boolean insertAdmin(Admin admin);

    /**
     * @Author：Wang
     * @Result:
     * @Date：Created in 19:34 2018/6/4
     * @Modified By:tian
     */
    /**
     * public boolean removeAdmin(int adminId,int removedId)
     * 删除管理员    adminId 高级管理员id,removedId 被删除的管理员id
     * @param adminId
     * @param removedId
     * @return
     */
    public boolean deleteAdmin(int adminId,int removedId);

    /**
     * @Author：Wang
     * @Result:
     * @Date：Created in 19:37 2018/6/4
     * @Modified By:
     */
    /**
     * public boolean modifyAdmin(int adminId,Admin admin);
     * adminId 本人的管理员号,根据本人的管理员级别决定能不能修改
     * admin要修改的管理员信息
     * @param adminId
     * @param admin
     * @return
     */
    public boolean updateAdmin(int adminId,Admin admin);

    /**
     * @Author：Wang
     * @Result:
     * @Date：Created in 19:40 2018/6/4
     * @Modified By:
     */
    /**
     * public Admin findAdmin(int adminId)
     * 根据管理员id查找管理员
     * @param adminId
     */
    public void selectAdminById(int adminId);
    /**
     * @Author：Wang
     * @Date：Created in 19:42 2018/6/4
     * @Modified By:
     */
    /**
     * public List<Admin> findAdminsByCondition(String name);
     * 根据条件查询管理员
     * @param aname
     */
    public void selectAdminByCondition(String aname);

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

    public boolean deleteUser(int userId);

    /**
     * @Author：Wang
     * @Date：Created in 20:04 2018/6/4
     * @Modified By:
     */
    /**
     * 修改管理员（预留）
     * @param admin
     * @return
     */
    public boolean updateAdmin(Admin admin);

    /**
     * @Author：Wang
     * @Date：Created in 20:12 2018/6/4
     * @Modified By:
     */
    /**
     * 查询所有举报
     * @return
     */
    public List<Report> selectReport();

    /**
     * @Author：Wang
     * @Date：Created in 20:17 2018/6/4
     * @Modified By: tian
     */
    /**
     * 根据id删除举报
     * @param id
     * @return
     */
    public boolean  deleteReportById(String id);

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

}