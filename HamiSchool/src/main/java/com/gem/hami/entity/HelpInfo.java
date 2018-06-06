package com.gem.hami.entity;

import java.util.Date;

public class HelpInfo {

    protected String name;

    protected Float recommendedPrice;

    protected Float personPrice;

    protected Date createTime;

    protected Integer userId;

    protected  Date endTime;

    protected String isFinished;

    protected int clickCount;

    protected byte helpType;//表示跑腿表的种类 1帮我买 2.帮我送 3.帮我取 4.代排队

    public int getClickCount() {
        return clickCount;
    }

    public void setClickCount(int clickCount) {
        this.clickCount = clickCount;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Float getRecommendedPrice() {
        return recommendedPrice;
    }

    public void setRecommendedPrice(Float recommendedPrice) {
        this.recommendedPrice = recommendedPrice;
    }

    public Float getPersonPrice() {
        return personPrice;
    }

    public void setPersonPrice(Float personPrice) {
        this.personPrice = personPrice;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public String getIsFinished() {
        return isFinished;
    }

    public void setIsFinished(String isFinished) {
        this.isFinished = isFinished;
    }

    public byte getHelpType() {
        return helpType;
    }

    public void setHelpType(byte helpType) {
        this.helpType = helpType;
    }

    public HelpInfo() {
    }


}
