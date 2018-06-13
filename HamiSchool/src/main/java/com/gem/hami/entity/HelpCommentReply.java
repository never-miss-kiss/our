package com.gem.hami.entity;

import java.util.Date;

public class HelpCommentReply {
    private Integer helpCommentReplyId;

    private String content;

    private Integer userId;

    private Integer commentedUserId;

    private Integer helpCommentId;

    private Date createTime;

    private User user;

    private User commentedUser;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public User getCommentedUser() {
        return commentedUser;
    }

    public void setCommentedUser(User commentedUser) {
        this.commentedUser = commentedUser;
    }

    public Integer getHelpCommentReplyId() {
        return helpCommentReplyId;
    }

    public void setHelpCommentReplyId(Integer helpCommentReplyId) {
        this.helpCommentReplyId = helpCommentReplyId;
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

    public Integer getCommentedUserId() {
        return commentedUserId;
    }

    public void setCommentedUserId(Integer commentedUserId) {
        this.commentedUserId = commentedUserId;
    }

    public Integer getHelpCommentId() {
        return helpCommentId;
    }

    public void setHelpCommentId(Integer helpCommentId) {
        this.helpCommentId = helpCommentId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}