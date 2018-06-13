package com.gem.hami.entity;

import java.util.Date;

public class HelpInfo {

    protected String name;

    protected Float recommendedPrice;

    protected Float personPrice;

    protected Date createTime;

    protected Integer userId;

    protected String nickname;

    protected  Date endTime;

    protected String isFinished;

    protected int clickCount;

    protected byte helpType;//表示跑腿表的种类 1帮我买 2.帮我送 3.帮我取 4.代排队

    protected String title;

    protected String content;

    protected User user;


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

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
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

    public int getClickCount() {
        return clickCount;
    }

    public void setClickCount(int clickCount) {
        this.clickCount = clickCount;
    }

    public byte getHelpType() {
        return helpType;
    }

    public void setHelpType(byte helpType) {
        this.helpType = helpType;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public String toString() {
        return "HelpInfo{" +
                "name='" + name + '\'' +
                ", recommendedPrice=" + recommendedPrice +
                ", personPrice=" + personPrice +
                ", createTime=" + createTime +
                ", userId=" + userId +
                ", nickname='" + nickname + '\'' +
                ", endTime=" + endTime +
                ", isFinished='" + isFinished + '\'' +
                ", clickCount=" + clickCount +
                ", helpType=" + helpType +
                ", user=" + user +
                '}';
    }
}
