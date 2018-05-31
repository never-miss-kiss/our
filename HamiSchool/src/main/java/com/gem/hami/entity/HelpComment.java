package com.gem.hami.entity;

public class HelpComment {
    private Integer helpCommentId;

    private String content;

    private Integer userId;

    private Byte releaseType;

    private Integer helpId;

    public Integer getHelpCommentId() {
        return helpCommentId;
    }

    public void setHelpCommentId(Integer helpCommentId) {
        this.helpCommentId = helpCommentId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Byte getReleaseType() {
        return releaseType;
    }

    public void setReleaseType(Byte releaseType) {
        this.releaseType = releaseType;
    }

    public Integer getHelpId() {
        return helpId;
    }

    public void setHelpId(Integer helpId) {
        this.helpId = helpId;
    }
}