package com.gem.hami.entity;

import java.util.Date;

public class HelpBuy {
    private Integer helpBuyId;

    private String name;

    private String receiptAddress;

    private String receiptAddressAlternative;

    private String buyAddress;

    private String buyAddressAlternative;

    private String buyDemand;

    private Float distance;

    private Float recommendedPrice;

    private Float personPrice;

    private Date createTime;

    public Integer getHelpBuyId() {
        return helpBuyId;
    }

    public void setHelpBuyId(Integer helpBuyId) {
        this.helpBuyId = helpBuyId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getReceiptAddress() {
        return receiptAddress;
    }

    public void setReceiptAddress(String receiptAddress) {
        this.receiptAddress = receiptAddress == null ? null : receiptAddress.trim();
    }

    public String getReceiptAddressAlternative() {
        return receiptAddressAlternative;
    }

    public void setReceiptAddressAlternative(String receiptAddressAlternative) {
        this.receiptAddressAlternative = receiptAddressAlternative == null ? null : receiptAddressAlternative.trim();
    }

    public String getBuyAddress() {
        return buyAddress;
    }

    public void setBuyAddress(String buyAddress) {
        this.buyAddress = buyAddress == null ? null : buyAddress.trim();
    }

    public String getBuyAddressAlternative() {
        return buyAddressAlternative;
    }

    public void setBuyAddressAlternative(String buyAddressAlternative) {
        this.buyAddressAlternative = buyAddressAlternative == null ? null : buyAddressAlternative.trim();
    }

    public String getBuyDemand() {
        return buyDemand;
    }

    public void setBuyDemand(String buyDemand) {
        this.buyDemand = buyDemand == null ? null : buyDemand.trim();
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