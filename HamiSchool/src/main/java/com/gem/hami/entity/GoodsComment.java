package com.gem.hami.entity;

import java.util.Date;

public class GoodsComment {
    private Integer goodsCommentId;

    private String content;

    private Integer userId;

    private Date releaseTime;

    private Goods goods;

    public Integer getGoodsCommentId() {
        return goodsCommentId;
    }

    public void setGoodsCommentId(Integer goodsCommentId) {
        this.goodsCommentId = goodsCommentId;
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

    public Goods getGoods() {
        return goods;
    }

    public void setGoods(Goods goods) {
        this.goods = goods;
    }


}