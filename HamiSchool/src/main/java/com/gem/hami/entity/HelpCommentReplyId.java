package com.gem.hami.entity;

import java.util.Date;

public class HelpCommentReplyId {
    private Integer helpCommentReplyId;

    private String content;

    private Integer userId;

    private Integer commentedUserId;

    private Integer helpPostCommentId;

    private Date createTime;

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

    public Integer getHelpPostCommentId() {
        return helpPostCommentId;
    }

    public void setHelpPostCommentId(Integer helpPostCommentId) {
        this.helpPostCommentId = helpPostCommentId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}