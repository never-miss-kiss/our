package com.gem.hami.entity;

import java.util.Date;

public class HelpSend extends HelpInfo{

    private Integer helpSendId;

    private String sendAddress;

    private String receiptAddress;

    private String sendInformation;

    private Date sendTime;

    private Float distance;

    protected byte helpType = 4;

    public Integer getHelpSendId() {
        return helpSendId;
    }

    public void setHelpSendId(Integer helpSendId) {
        this.helpSendId = helpSendId;
    }

    public String getSendAddress() {
        return sendAddress;
    }

    public void setSendAddress(String sendAddress) {
        this.sendAddress = sendAddress;
    }

    public String getReceiptAddress() {
        return receiptAddress;
    }

    public void setReceiptAddress(String receiptAddress) {
        this.receiptAddress = receiptAddress;
    }

    public String getSendInformation() {
        return sendInformation;
    }

    public void setSendInformation(String sendInformation) {
        this.sendInformation = sendInformation;
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

    public byte getHelpType() {
        return helpType;
    }

    public void setHelpType(byte helpType) {
        this.helpType = helpType;
    }

    public HelpSend() {
    }


}