package com.gem.hami.entity;

import java.util.Date;

public class ForumCommentReply {
    private Integer forumCommentReplyId;

    private String content;

    private Integer userId;

    private Integer commentedUserId;

    private Date createTime;

    private Integer forumPostCommentId;

    public Integer getForumCommentReplyId() {
        return forumCommentReplyId;
    }

    public void setForumCommentReplyId(Integer forumCommentReplyId) {
        this.forumCommentReplyId = forumCommentReplyId;
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

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getForumPostCommentId() {
        return forumPostCommentId;
    }

    public void setForumPostCommentId(Integer forumPostCommentId) {
        this.forumPostCommentId = forumPostCommentId;
    }
}