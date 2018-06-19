package com.gem.hami.entity;

public class QueryPojo_Admin {
    private Integer adminId;
    private Integer userId;
    private String name;
    private String phone;
    private String email;
    private String nickname;
    private Integer adminAuthorityId;
    private AdminAuthority authority;

    public AdminAuthority getAuthority() {
        return authority;
    }

    public void setAuthority(AdminAuthority authority) {
        this.authority = authority;
    }

    public Integer getAdminId() {

        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
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
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public Integer getAdminAuthorityId() {
        return adminAuthorityId;
    }

    public void setAdminAuthorityId(Integer adminAuthorityId) {
        this.adminAuthorityId = adminAuthorityId;
    }
}
