package com.gem.hami.entity;

import java.util.Date;

public class Report {
    private Integer reportId;

    private Integer userId;

    private Integer reasonCategoryId;

    private String reasonRemark;

    private Integer reportedUserId;

    private Integer sourceCategoryId;

    private Integer sourceItemId;

    private Date createTime;

    private ReasonCategory reasonCategory;

    private SourceCategory sourceCategory;//------改了

    public Integer getReportId() {
        return reportId;
    }

    public void setReportId(Integer reportId) {
        this.reportId = reportId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getReasonCategoryId() {
        return reasonCategoryId;
    }

    public void setReasonCategoryId(Integer reasonCategoryId) {
        this.reasonCategoryId = reasonCategoryId;
    }

    public ReasonCategory getReasonCategory() {
        return reasonCategory;
    }

    public void setReasonCategory(ReasonCategory reasonCategory) {
        this.reasonCategory = reasonCategory;
    }

    public String getReasonRemark() {
        return reasonRemark;
    }

    public void setReasonRemark(String reasonRemark) {
        this.reasonRemark = reasonRemark == null ? null : reasonRemark.trim();
    }

    public Integer getReportedUserId() {
        return reportedUserId;
    }

    public void setReportedUserId(Integer reportedUserId) {
        this.reportedUserId = reportedUserId;
    }

    public Integer getSourceCategoryId() {
        return sourceCategoryId;
    }

    public void setSourceCategoryId(Integer sourceCategoryId) {
        this.sourceCategoryId = sourceCategoryId;
    }

    public SourceCategory getSourceCategory() {
        return sourceCategory;
    }

    public void setSourceCategory(SourceCategory sourceCategory) {
        this.sourceCategory = sourceCategory;
    }

    public Integer getSourceItemId() {
        return sourceItemId;
    }

    public void setSourceItemId(Integer sourceItemId) {
        this.sourceItemId = sourceItemId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}