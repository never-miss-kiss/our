package com.gem.hami.entity;

import java.util.Date;

public class ForumPost {
    private Integer forumPostId;

    private Integer userId;

    private String title;

    private Date releaseTime;

    private Date updateTime;

    private String remark;

    private Integer clickCount;

    private Integer commentCount;

    private String isTop;

    private String isAdvertisement;

    private String photo;

    private byte[] content;

    public Integer getForumPostId() {
        return forumPostId;
    }

    public void setForumPostId(Integer forumPostId) {
        this.forumPostId = forumPostId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Date getReleaseTime() {
        return releaseTime;
    }

    public void setReleaseTime(Date releaseTime) {
        this.releaseTime = releaseTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Integer getClickCount() {
        return clickCount;
    }

    public void setClickCount(Integer clickCount) {
        this.clickCount = clickCount;
    }

    public Integer getCommentCount() {
        return commentCount;
    }

    public void setCommentCount(Integer commentCount) {
        this.commentCount = commentCount;
    }

    public String getIsTop() {
        return isTop;
    }

    public void setIsTop(String isTop) {
        this.isTop = isTop == null ? null : isTop.trim();
    }

    public String getIsAdvertisement() {
        return isAdvertisement;
    }

    public void setIsAdvertisement(String isAdvertisement) {
        this.isAdvertisement = isAdvertisement == null ? null : isAdvertisement.trim();
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo == null ? null : photo.trim();
    }

    public byte[] getContent() {
        return content;
    }

    public void setContent(byte[] content) {
        this.content = content;
    }
}