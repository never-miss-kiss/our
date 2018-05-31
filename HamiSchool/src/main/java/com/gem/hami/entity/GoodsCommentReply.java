package com.gem.hami.entity;

import java.util.Date;

public class GoodsCommentReply {
    private Integer goodsCommentReplyId;

    private String content;

    private Integer userId;

    private Integer commentedUserId;

    private Integer goodsCommentId;

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

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}