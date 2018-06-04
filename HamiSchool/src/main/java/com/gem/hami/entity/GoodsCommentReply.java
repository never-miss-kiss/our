package com.gem.hami.entity;

import java.util.Date;

public class GoodsCommentReply {
    private Integer goodsCommentReplyId;

    private String content;

    private User user;

    private User commentedUser;

    private GoodsComment goodsComment;

    private Date createTime;

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