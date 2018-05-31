package com.gem.hami.entity;

import java.util.Date;

public class HelpFetch {
    private Integer helpFetchId;

    private String name;

    private String fetchAddress;

    private String remarkShipAddress;

    private String fetchPhone;

    private String receiptAddress;

    private String remarkReceiptAddress;

    private String receiptPhone;

    private String fetchInformation;

    private String fetchTime;

    private Float distance;

    private Float recommendedPrice;

    private Float personPrice;

    private Date createTime;

    public Integer getHelpFetchId() {
        return helpFetchId;
    }

    public void setHelpFetchId(Integer helpFetchId) {
        this.helpFetchId = helpFetchId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getFetchAddress() {
        return fetchAddress;
    }

    public void setFetchAddress(String fetchAddress) {
        this.fetchAddress = fetchAddress == null ? null : fetchAddress.trim();
    }

    public String getRemarkShipAddress() {
        return remarkShipAddress;
    }

    public void setRemarkShipAddress(String remarkShipAddress) {
        this.remarkShipAddress = remarkShipAddress == null ? null : remarkShipAddress.trim();
    }

    public String getFetchPhone() {
        return fetchPhone;
    }

    public void setFetchPhone(String fetchPhone) {
        this.fetchPhone = fetchPhone == null ? null : fetchPhone.trim();
    }

    public String getReceiptAddress() {
        return receiptAddress;
    }

    public void setReceiptAddress(String receiptAddress) {
        this.receiptAddress = receiptAddress == null ? null : receiptAddress.trim();
    }

    public String getRemarkReceiptAddress() {
        return remarkReceiptAddress;
    }

    public void setRemarkReceiptAddress(String remarkReceiptAddress) {
        this.remarkReceiptAddress = remarkReceiptAddress == null ? null : remarkReceiptAddress.trim();
    }

    public String getReceiptPhone() {
        return receiptPhone;
    }

    public void setReceiptPhone(String receiptPhone) {
        this.receiptPhone = receiptPhone == null ? null : receiptPhone.trim();
    }

    public String getFetchInformation() {
        return fetchInformation;
    }

    public void setFetchInformation(String fetchInformation) {
        this.fetchInformation = fetchInformation == null ? null : fetchInformation.trim();
    }

    public String getFetchTime() {
        return fetchTime;
    }

    public void setFetchTime(String fetchTime) {
        this.fetchTime = fetchTime == null ? null : fetchTime.trim();
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