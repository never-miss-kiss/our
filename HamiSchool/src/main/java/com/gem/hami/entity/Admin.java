package com.gem.hami.entity;

import java.util.Date;

public class Admin {

    private Integer adminId;

    private Integer userId;

    private String name;

    private String password;

    private String sex;

    private Integer age;

    private String phone;

    private String email;

    private String nickname;

    private Integer adminAuthorityId;

    private Integer schoolId;

    private Date createTime;

    private Integer creatorId;

    private String remark;

    private AdminAuthority adminAuthority;


    public Integer getAdminId() {
        return adminId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getName() {
        return name;
    }

    public void setName(String realname) {
        this.name = realname == null ? null : realname.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }


    public Integer getAdminAuthorityId() {
        return adminAuthorityId;
    }

    public void setAdminAuthorityId(Integer adminAuthorityId) {
        this.adminAuthorityId = adminAuthorityId;
    }

    public AdminAuthority getAdminAuthority() {
        return adminAuthority;
    }

    public void setAdminAuthority(AdminAuthority adminAuthority) {
        this.adminAuthority = adminAuthority;
    }

    public Integer getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(Integer schoolId) {
        this.schoolId = schoolId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getCreatorId() {
        return creatorId;
    }

    public void setCreatorId(Integer creatorId) {
        this.creatorId = creatorId;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}