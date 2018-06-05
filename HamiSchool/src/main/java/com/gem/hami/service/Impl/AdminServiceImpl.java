package com.gem.hami.service.Impl;

import com.gem.hami.entity.Admin;
import com.gem.hami.entity.Report;
import com.gem.hami.service.AdminService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Override
    public boolean addAdmin(Admin admin) {
        return false;
    }

    @Override
    public boolean removeAdmin(int adminId, int removedId) {
        return false;
    }

    @Override
    public boolean modifyAdmin(int adminId, Admin admin) {
        return false;
    }

    @Override
    public Admin findAdmin(int adminId) {
        return null;
    }

    @Override
    public List<Admin> findAdminsByCondition(String name) {
        return null;
    }

    @Override
    public List<Admin> findAdmin() {
        return null;
    }

    @Override
    public boolean removeUserByName(String uname) {
        return false;
    }

    @Override
    public List<Report> findReport() {
        return null;
    }



    @Override
    public boolean addReport(Report report) {
        return false;
    }

    @Override
    public boolean removeReportByTietle(String title) {
        return false;
    }


}
