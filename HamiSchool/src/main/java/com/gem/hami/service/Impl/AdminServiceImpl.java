package com.gem.hami.service.Impl;

import com.gem.hami.dao.AdminAuthorityMapper;
import com.gem.hami.dao.AdminMapper;
import com.gem.hami.dao.ReportMapper;
import com.gem.hami.dao.UserMapper;
import com.gem.hami.entity.Admin;
import com.gem.hami.entity.QueryPojo_User;
import com.gem.hami.entity.Report;
import com.gem.hami.entity.User;
import com.gem.hami.service.AdminService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @Author：Wang
 * @Date：Created in 9:25 2018/6/6
 * @Modified By:
 * 添加各个实现方法
 */

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired
    private AdminMapper adminMapper;

    @Autowired
    private UserMapper userMapper;
    @Autowired
    private ReportMapper reportMapper;



    @Override
    public boolean addAdmin(Admin admin) {
        return adminMapper.insertAdmin(admin);
    }

    @Override
    public boolean removeAdmin(int adminId, int removedId) {
        return false;
    }

    @Override
    public boolean removeAdminById(int adminId) {
        return adminMapper.deleteAdminById(adminId);
    }

    @Override
    public boolean modifyAdmin(Admin admin) {
        return adminMapper.updateAdmin(admin);
    }

    @Override
    public boolean modifyAdmin(int adminId, Admin admin) {
        return false;
    }

    @Override
    public Admin findAdmin(int adminId) {
        return adminMapper.selectAdminById(adminId);
    }

    @Override
    public List<Admin> findAdminsByCondition(String name) {
        return adminMapper.selectAdminByCondition(name);
    }

    @Override
    public List<Admin> findAllAdmin() {
        return adminMapper.selectAllAdmin();
    }

    @Override
    public User findUserByName(String uname) {
        return userMapper.selectUserByName(uname);
    }

    @Override
    public List<User> findAllUser() {
        return adminMapper.selectAllUser();
    }

    @Override
    public PageInfo<User> getAllUser(Map<String, Object> map) {

//        起始条件
        int curPage = (int) map.get("curPage");
//        查询的条数
        int pageSieze = (int) map.get("pageSize");
//        拦截sql语句 添加limit分页
        PageHelper.startPage(curPage,pageSieze);

        List<User> userList = userMapper.selectUserByCondition((QueryPojo_User) map.get("queryPojo"));

        PageInfo<User> pageInfo = new PageInfo<>(userList);


        return pageInfo;
    }

    @Override
    public boolean removeUserById(int uid) {
        return userMapper.deleteUserById(uid);
    }

    @Override
    public List<Report> findReport() {
        return reportMapper.selectAllReport();
    }



    @Override
    public boolean addReport(Report report) {
        return reportMapper.insertReport(report);
    }

    @Override
    public boolean removeReportByid(int rid) {
        return reportMapper.deleteReportById(rid);
    }

    @Override
    public List<Report> findReportByReson(int rid) {
        return reportMapper.selectReportByReson(rid);
    }


}
