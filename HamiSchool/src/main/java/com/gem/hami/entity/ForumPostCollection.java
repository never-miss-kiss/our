package com.gem.hami.entity;

import java.util.Date;

public class ForumPostCollection {
    private Integer forumPostCollectionId;

    private Integer userId;

    private Integer forumPostId;

    private Date time;

    public Integer getForumPostCollectionId() {
        return forumPostCollectionId;
    }

    public void setForumPostCollectionId(Integer forumPostCollectionId) {
        this.forumPostCollectionId = forumPostCollectionId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getForumPostId() {
        return forumPostId;
    }

    public void setForumPostId(Integer forumPostId) {
        this.forumPostId = forumPostId;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}