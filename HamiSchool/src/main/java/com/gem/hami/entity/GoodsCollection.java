package com.gem.hami.entity;

import java.util.Date;

public class GoodsCollection {
    private Integer goodsCollectionId;

    private Integer userId;

    private Integer goodsId;

    private Date time;

    public Integer getGoodsCollectionId() {
        return goodsCollectionId;
    }

    public void setGoodsCollectionId(Integer goodsCollectionId) {
        this.goodsCollectionId = goodsCollectionId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}