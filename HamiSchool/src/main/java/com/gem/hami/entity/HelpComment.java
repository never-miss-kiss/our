package com.gem.hami.entity;

public class HelpComment {
    private Integer helpCommentId;

    private String content;

    private Integer userId;

    private Byte releaseType;

    private Integer helpId;

    private Integer commentedUserId;

    private User user;

    private User commentedUser;

    public User getCommentedUser() {
        return commentedUser;
    }

    public void setCommentedUser(User commentedUser) {
        this.commentedUser = commentedUser;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getHelpCommentId() {
        return helpCommentId;
    }

    public void setHelpCommentId(Integer helpCommentId) {
        this.helpCommentId = helpCommentId;
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

    public Byte getReleaseType() {
        return releaseType;
    }

    public void setReleaseType(Byte releaseType) {
        this.releaseType = releaseType;
    }

    public Integer getHelpId() {
        return helpId;
    }

    public void setHelpId(Integer helpId) {
        this.helpId = helpId;
    }

    public Integer getCommentedUserId() {
        return commentedUserId;
    }

    public void setCommentedUserId(Integer commentedUserId) {
        this.commentedUserId = commentedUserId;
    }
}