package com.gem.hami.entity;

import java.util.Date;

public class PersonApplication {
    private Integer personApplicationId;

    private String name;

    private String schoolName;

    private Integer schoolId;

    private String zjh;

    private String phone;

    private String email;

    private String qq;

    private String photo;

    private Integer applicationStateId;

    private  ApplicationState applicationState;

    private Date submitTime;

    private Date dealTime;

    private String remark;

    private Integer adminId;

    public Integer getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(Integer schoolId) {
        this.schoolId = schoolId;
    }

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public String getZjh() {
        return zjh;
    }

    public void setZjh(String zjh) {
        this.zjh = zjh;
    }

    public Integer getPersonApplicationId() {
        return personApplicationId;
    }

    public void setPersonApplicationId(Integer personApplicationId) {
        this.personApplicationId = personApplicationId;
    }

    public Integer getApplicationStateId() {
        return applicationStateId;
    }

    public void setApplicationStateId(Integer applicationStateId) {
        this.applicationStateId = applicationStateId;
    }

    public ApplicationState getApplicationState() {
        return applicationState;
    }

    public void setApplicationState(ApplicationState applicationState) {
        this.applicationState = applicationState;
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

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo == null ? null : photo.trim();
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

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }
}