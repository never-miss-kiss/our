package com.gem.hami.service;

import com.gem.hami.entity.Admin;
import com.gem.hami.entity.Report;
import com.gem.hami.entity.User;
import com.github.pagehelper.PageInfo;

import java.util.List;
import java.util.Map;


public interface AdminService {
//    /admin
//    管理员后台：

//     /admin/addAdmin.action
//    添加管理员
//    admin被添加的管理员信息
    public boolean addAdmin(Admin admin);


//   /admin/removeAdmin.action
//   删除管理员
//    adminId 高级管理员id,removedId 被删除的管理员id
    public boolean removeAdmin(int adminId, int removedId);

    /**
     * @Author：Wang
     * @Date：Created in 8:54 2018/6/6
     * @Modified By:
     */
    /**
     * 根据管理员Id删除管理员
     * @param adminId
     * @return
     */
    public boolean removeAdminById(int adminId);

    /**
     * @Author：Wang
     * @Date：Created in 8:50 2018/6/6
     * @Modified By:
     */
    /**
     * 修改管理员信息
     * @param admin
     * @return
     */
    public boolean modifyAdmin(Admin admin);



//  /admin/modifyAdmin.action
//  修改管理员id
//  adminId 本人的管理员号,根据本人的管理员级别决定能不能修改
// admin要修改的管理员信息
    public boolean modifyAdmin(int adminId, Admin admin);


//  /admin/findAdmin.action
//  按管理员id 查找,显示个人资料
    public Admin findAdminByname(String nickname);
    public Admin findAdminByEmail(String email);

//  /admin/findAdminsByCondition
//  显示所有管理员信息
//  按名称模糊查找
    public List<Admin> findAdminsByCondition(String name);

    /**
     * @Author：Wang
     * @Result:
     * @Date：Created in 19:30 2018/6/4
     * @Modified By: tian (2018-6-14 21:48:44  wang 删除此接口)
     * 因为这是service层接口，一个seivice层接口可能要调用几个dao层接口
     * dao层接口属于对数据库的原子操作 方法名一般用 insert delete update select
     * service层是 是对数据库的一组操作  本项目中方法名一般用 add remove modify find
    /**
     * 查找所有的管理员
     * @return
     */
//    public List<Admin> findAllAdmin();

    /**
     *@Author：wang
     *@Date: Created in 2018-6-14 21:48:35
     *@Modified By:
     */
    /**
     * 管理员分页
     * @param map
     * @return
     */
    public PageInfo<Admin> getAllAdmin(Map<String,Object> map);


//            /admin/removeUser.action
//            查找用户信息
    public User findUserByName(String uname);

    /**
     * @Author：Wang
     * @Date：Created in 2018-6-11 08:51:24
     * @Modified By:
     */
    /**
     * 查找所有用户
     * @return
     */
    public List<User> findAllUser();

    /**
     *@Author：wang
     *@Date: Created in 2018年6月13日 11:25:40
     *@Modified By:
     */
    /**
     * User分页
     * @param map
     * @return
     */
    public PageInfo<User> getAllUser(Map<String,Object> map);


    /**
     * @Author：Wang
     * @Date：Created in 9:04 2018/6/6
     * @Modified By:
     */
    /**
     * 根据用户id删除用户
     * @param userId
     * @return
     */
    public boolean removeUserById(int userId);

    /**
     * @Author：Wang
     * @Date：Created in 19:50 2018/6/4
     * @Modified By:
     */
    /**
     * /admin/findReport.action
     * 查找所有的举报信息
     * @return
     */
    public List<Report> findReport();

//
//
    /**
     * @Author：Wang
     * @Date：Created in 20:02 2018/6/4
     * @Modified By:
     */
    /**
     * /User?addReport.action
     * 举报功能（即举报表的提交）
     * @param report
     * @return
     */
    public boolean addReport(Report report);


//  /admin/removeReport.action
//    处理举报信息；
    public boolean  removeReportByid(int rid);

    /**
     * @Author：Wang
     * @Date：Created in 9:14 2018/6/6
     * @Modified By:
     */
    /**
     * 根据标题模糊查询举报信息
     * @param rid
     * @return
     */
    public List<Report> findReportByReson(int rid);

    /**
     *@Author：wang
     *@Date: Created in 2018年6月13日 11:25:10
     *@Modified By:
     */
    /**
     * 举报分页
     * @param map
     * @return
     */
    public PageInfo<Report> getAllReprort(Map<String,Object> map);


}
