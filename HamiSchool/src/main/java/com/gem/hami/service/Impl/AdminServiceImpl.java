package com.gem.hami.service.Impl;

import com.gem.hami.dao.AdminAuthorityMapper;
import com.gem.hami.dao.AdminMapper;
import com.gem.hami.dao.ReportMapper;
import com.gem.hami.dao.UserMapper;
import com.gem.hami.entity.Admin;
import com.gem.hami.entity.Report;
import com.gem.hami.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
    private AdminAuthorityMapper authorityMapper;
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
    public boolean removeUserByName(String uname) {
        return userMapper.deleteUserByCondition(uname);
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
    public List<Report> findReportByTitle(String title) {
        return reportMapper.selectReportByTitle(title);
    }

}
