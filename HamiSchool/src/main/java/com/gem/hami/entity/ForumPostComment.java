package com.gem.hami.entity;

import java.util.Date;

public class ForumPostComment {
    private Integer forumPostCommentId;

    private String content;

    private Integer userId;

    private Date releaseTime;

    public Integer getForumPostCommentId() {
        return forumPostCommentId;
    }

    public void setForumPostCommentId(Integer forumPostCommentId) {
        this.forumPostCommentId = forumPostCommentId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getReleaseTime() {
        return releaseTime;
    }

    public void setReleaseTime(Date releaseTime) {
        this.releaseTime = releaseTime;
    }
}