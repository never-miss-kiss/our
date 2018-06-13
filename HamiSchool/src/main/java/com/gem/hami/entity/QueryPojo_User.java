package com.gem.hami.entity;

/**
 *@Author：wang
 *@Date: Created in 2018-6-13 10:11:56
 *@Modified By:
 */

/**
 * User分页
 */
public class QueryPojo_User {
    private Integer userId;
    private Integer shoolId;
    private String nickname;
    private String sex;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getShoolId() {
        return shoolId;
    }

    public void setShoolId(Integer shoolId) {
        this.shoolId = shoolId;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }
}
