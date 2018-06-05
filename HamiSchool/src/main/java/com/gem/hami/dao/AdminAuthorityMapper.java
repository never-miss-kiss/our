package com.gem.hami.dao;


import com.gem.hami.entity.AdminAuthority;

public interface AdminAuthorityMapper {
    public void updateAdminAuthorityById(AdminAuthority adminAuthority);

    public void deleteAdminAuthorityById(int id);

    public void insertAdminAuthority(AdminAuthority adminAuthority);

    public void selectAdminAuthority();

}