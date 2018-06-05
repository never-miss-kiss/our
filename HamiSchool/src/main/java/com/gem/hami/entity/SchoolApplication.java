package com.gem.hami.entity;

import java.util.Date;

public class SchoolApplication {
    private Integer schoolApplicationId;

    private School school;

    private Integer userId;

    private String name;

    private String phone;

    private String email;

    private String qq;

    private Integer applicationStateId;

    private Date submitTime;

    private Date dealTime;

    private String remark;

    private Admin admin;

    private ApplicationState applicationState;

    public ApplicationState getApplicationState() {
        return applicationState;
    }

    public void setApplicationState(ApplicationState applicationState) {
        this.applicationState = applicationState;
    }

    public Integer getSchoolApplicationId() {
        return schoolApplicationId;
    }

    public void setSchoolApplicationId(Integer schoolApplicationId) {
        this.schoolApplicationId = schoolApplicationId;
    }

    public School getSchool() {
        return school;
    }

    public void setSchool(School school) {
        this.school = school;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
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

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq == null ? null : qq.trim();
    }

    public Integer getApplicationStateId() {
        return applicationStateId;
    }

    public void setApplicationStateId(Integer applicationStateId) {
        this.applicationStateId = applicationStateId;
    }

    public Date getSubmitTime() {
        return submitTime;
    }

    public void setSubmitTime(Date submitTime) {
        this.submitTime = submitTime;
    }

    public Date getDealTime() {
        return dealTime;
    }

    public void setDealTime(Date dealTime) {
        this.dealTime = dealTime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Admin getAdmin() {
        return admin;
    }

    public void setAdmin(Admin admin) {
        this.admin = admin;
    }
}