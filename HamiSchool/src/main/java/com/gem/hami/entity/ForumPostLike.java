package com.gem.hami.entity;

import java.util.Date;

public class ForumPostLike {
    private Integer likeId;

    private Integer froumPostId;

    private Integer userId;

    private Date createTime;

    public Integer getLikeId() {
        return likeId;
    }

    public void setLikeId(Integer likeId) {
        this.likeId = likeId;
    }

    public Integer getFroumPostId() {
        return froumPostId;
    }

    public void setFroumPostId(Integer froumPostId) {
        this.froumPostId = froumPostId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}