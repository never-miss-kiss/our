package com.gem.hami.entity;

public class GoodsCategory {
    private Integer goodsCategoryId;

    private String goodsCategoryName;

    public Integer getGoodsCategoryId() {
        return goodsCategoryId;
    }

    public void setGoodsCategoryId(Integer goodsCategoryId) {
        this.goodsCategoryId = goodsCategoryId;
    }

    public String getGoodsCategoryName() {
        return goodsCategoryName;
    }

    public void setGoodsCategoryName(String goodsCategoryName) {
        this.goodsCategoryName = goodsCategoryName == null ? null : goodsCategoryName.trim();
    }
}