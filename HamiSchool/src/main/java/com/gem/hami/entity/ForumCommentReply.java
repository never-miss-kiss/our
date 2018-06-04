package com.gem.hami.entity;

import java.util.Date;

public class ForumCommentReply {
    private Integer forumCommentReplyId;

    private String content;

    private User user;

    private User commentedUser;

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