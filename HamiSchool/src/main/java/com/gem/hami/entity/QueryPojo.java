package com.gem.hami.entity;

import java.util.Date;

/**
 * @Author：Tian
 * @Param：
 * @Result:
 * @Date：Created in 10:35 2018/6/7
 * @Modified By:
 */
public class QueryPojo {
    private Integer goodsCategoryId;
    private Integer price;
    private Integer releaseTime;
    private Integer clickCount;
    private Integer schoolId;

    public QueryPojo() {
    }

    public Integer getGoodsCategoryId() {
        return goodsCategoryId;
    }

    public void setGoodsCategoryId(Integer goodsCategoryId) {
        this.goodsCategoryId = goodsCategoryId;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getReleaseTime() {
        return releaseTime;
    }

    public void setReleaseTime(Integer releaseTime) {
        this.releaseTime = releaseTime;
    }

    public Integer getClickCount() {
        return clickCount;
    }

    public void setClickCount(Integer clickCount) {
        this.clickCount = clickCount;
    }

    public Integer getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(Integer schoolId) {
        this.schoolId = schoolId;
    }
}
