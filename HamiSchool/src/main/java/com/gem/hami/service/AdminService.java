package com.gem.hami.service;

import com.gem.hami.entity.Admin;
import com.gem.hami.entity.Report;

import java.util.List;


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
    public boolean removeAdmin(int adminId,int removedId);



//  /admin/modifyAdmin.action
//  修改管理员id
//  adminId 本人的管理员号,根据本人的管理员级别决定能不能修改
// admin要修改的管理员信息
    public boolean modifyAdmin(int adminId,Admin admin);


//  /admin/findAdmin.action
//  按管理员id 查找,显示个人资料
    public Admin findAdmin(int adminId);

//  /admin/findAdminsByCondition
//  显示所有管理员信息
//  按名称模糊查找
    public List<Admin> findAdminsByCondition(String name);

    /**
     * @Author：Wang
     * @Result:
     * @Date：Created in 19:30 2018/6/4
     * @Modified By: tian
     * 因为这是service层接口，一个seivice层接口可能要调用几个dao层接口
     * dao层接口属于对数据库的原子操作 方法名一般用 insert delete update select
     * service层是 是对数据库的一组操作  本项目中方法名一般用 add remove modify find
    /**
     * 查找所有的管理员
     * @return
     */
    public List<Admin> findAdmin();


//            /admin/removeUser.action
//            删除用户信息
    public boolean removeUserByName(String uname);

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
    public boolean  removeReportByTietle(String title);


}
