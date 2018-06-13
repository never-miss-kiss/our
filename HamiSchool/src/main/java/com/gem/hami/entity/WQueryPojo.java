package com.gem.hami.entity;

/**
 * @Author：Tian
 * @Param：
 * @Result:
 * @Date：Created in 10:35 2018/6/7
 * @Modified By: wang 2018-6-11 14:39:56
 */
public class WQueryPojo {
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
