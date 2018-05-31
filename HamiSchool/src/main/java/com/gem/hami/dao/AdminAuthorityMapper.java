package com.gem.hami.dao;

import com.gem.hami.entity.AdminAuthority;
import com.gem.hami.entity.AdminAuthorityExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdminAuthorityMapper {
    long countByExample(AdminAuthorityExample example);

    int deleteByExample(AdminAuthorityExample example);

    int deleteByPrimaryKey(Integer authorityId);

    int insert(AdminAuthority record);

    int insertSelective(AdminAuthority record);

    List<AdminAuthority> selectByExample(AdminAuthorityExample example);

    AdminAuthority selectByPrimaryKey(Integer authorityId);

    int updateByExampleSelective(@Param("record") AdminAuthority record, @Param("example") AdminAuthorityExample example);

    int updateByExample(@Param("record") AdminAuthority record, @Param("example") AdminAuthorityExample example);

    int updateByPrimaryKeySelective(AdminAuthority record);

    int updateByPrimaryKey(AdminAuthority record);
}