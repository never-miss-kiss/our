package com.gem.hami.entity;

public class QueryPojo_Report {
    private Integer reportId;
    private Integer reasonCategoryId;
    private Integer reportedUserId;
    private Integer sourceItemId;
    private String createTime;
    private SourceCategory sourceCategory;
    private User user;
    private ReasonCategory reasonCategory;

    public ReasonCategory getReasonCategory() {
        return reasonCategory;
    }

    public void setReasonCategory(ReasonCategory reasonCategory) {
        this.reasonCategory = reasonCategory;
    }

    public SourceCategory getSourceCategory() {
        return sourceCategory;
    }

    public void setSourceCategory(SourceCategory sourceCategory) {
        this.sourceCategory = sourceCategory;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getReportId() {
        return reportId;
    }

    public void setReportId(Integer reportId) {
        this.reportId = reportId;
    }

    public Integer getReasonCategoryId() {
        return reasonCategoryId;
    }

    public void setReasonCategoryId(Integer reasonCategoryId) {
        this.reasonCategoryId = reasonCategoryId;
    }

    public Integer getReportedUserId() {
        return reportedUserId;
    }

    public void setReportedUserId(Integer reportedUserId) {
        this.reportedUserId = reportedUserId;
    }

    public Integer getSourceItemId() {
        return sourceItemId;
    }

    public void setSourceItemId(Integer sourceItemId) {
        this.sourceItemId = sourceItemId;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
}
