package com.gem.hami.entity;

import java.util.Date;

public class GoodsCommentReply {
    private Integer goodsCommentReplyId;

    private String content;

    private Integer userId;

    private Integer commentedUserId;

    private Integer goodsCommentId;

    private Date createTime;

    private User user;

    private User commentedUser;

    private GoodsComment goodsComment;

    public Integer getGoodsCommentReplyId() {
        return goodsCommentReplyId;
    }

    public void setGoodsCommentReplyId(Integer goodsCommentReplyId) {
        this.goodsCommentReplyId = goodsCommentReplyId;
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

    public Integer getGoodsCommentId() {
        return goodsCommentId;
    }

    public void setGoodsCommentId(Integer goodsCommentId) {
        this.goodsCommentId = goodsCommentId;
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

    public GoodsComment getGoodsComment() {
        return goodsComment;
    }

    public void setGoodsComment(GoodsComment goodsComment) {
        this.goodsComment = goodsComment;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}