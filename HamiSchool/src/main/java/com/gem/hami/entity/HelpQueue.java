package com.gem.hami.entity;

import java.util.Date;

public class HelpQueue {
    private Integer helpQueueId;

    private String name;

    private String remarkInfomation;

    private String queueAddress;

    private String remarkQueueAddress;

    private String phone;

    private String queueTime;

    private String duration;

    private Float distance;

    private Float recommendedPrice;

    private Float personPrice;

    private Date createTime;

    public Integer getHelpQueueId() {
        return helpQueueId;
    }

    public void setHelpQueueId(Integer helpQueueId) {
        this.helpQueueId = helpQueueId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getRemarkInfomation() {
        return remarkInfomation;
    }

    public void setRemarkInfomation(String remarkInfomation) {
        this.remarkInfomation = remarkInfomation == null ? null : remarkInfomation.trim();
    }

    public String getQueueAddress() {
        return queueAddress;
    }

    public void setQueueAddress(String queueAddress) {
        this.queueAddress = queueAddress == null ? null : queueAddress.trim();
    }

    public String getRemarkQueueAddress() {
        return remarkQueueAddress;
    }

    public void setRemarkQueueAddress(String remarkQueueAddress) {
        this.remarkQueueAddress = remarkQueueAddress == null ? null : remarkQueueAddress.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getQueueTime() {
        return queueTime;
    }

    public void setQueueTime(String queueTime) {
        this.queueTime = queueTime == null ? null : queueTime.trim();
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration == null ? null : duration.trim();
    }

    public Float getDistance() {
        return distance;
    }

    public void setDistance(Float distance) {
        this.distance = distance;
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
}