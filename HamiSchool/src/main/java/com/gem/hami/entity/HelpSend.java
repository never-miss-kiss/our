package com.gem.hami.entity;

import java.util.Date;

public class HelpSend {
    private Integer helpSendId;

    private String name;

    private String sendAddress;

    private String receiptAddress;

    private String sendInformation;

    private Date sendTime;

    private Float distance;

    private Float recommendedPrice;

    private Float personPrice;

    private Date createTime;

    private Integer userId;

    public Integer getHelpSendId() {
        return helpSendId;
    }

    public void setHelpSendId(Integer helpSendId) {
        this.helpSendId = helpSendId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getSendAddress() {
        return sendAddress;
    }

    public void setSendAddress(String sendAddress) {
        this.sendAddress = sendAddress == null ? null : sendAddress.trim();
    }

    public String getReceiptAddress() {
        return receiptAddress;
    }

    public void setReceiptAddress(String receiptAddress) {
        this.receiptAddress = receiptAddress == null ? null : receiptAddress.trim();
    }

    public String getSendInformation() {
        return sendInformation;
    }

    public void setSendInformation(String sendInformation) {
        this.sendInformation = sendInformation == null ? null : sendInformation.trim();
    }

    public Date getSendTime() {
        return sendTime;
    }

    public void setSendTime(Date sendTime) {
        this.sendTime = sendTime;
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

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}