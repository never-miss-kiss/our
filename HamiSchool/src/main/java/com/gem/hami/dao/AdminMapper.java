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
    public boolean deleteAdminById(int adminId, int removedId);

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
    public boolean updateAdmin(int adminId, Admin admin);

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
     * @Date：Created in 20:04 2018/6/4
     * @Modified By:
     */
    /**
     * 修改管理员（预留）
     * @param admin
     * @return
     */
    public boolean updateAdmin(Admin admin);


}