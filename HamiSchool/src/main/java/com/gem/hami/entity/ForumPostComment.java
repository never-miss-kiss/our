package com.gem.hami.entity;

import java.util.Date;

public class ForumPostComment {
    private Integer forumPostCommentId;

    private String content;

    private User user;

    private Date releaseTime;

    private ForumPost forumPost;

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

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public ForumPost getForumPost() {
        return forumPost;
    }

    public void setForumPost(ForumPost forumPost) {
        this.forumPost = forumPost;
    }

    public Date getReleaseTime() {
        return releaseTime;
    }

    public void setReleaseTime(Date releaseTime) {
        this.releaseTime = releaseTime;
    }
}