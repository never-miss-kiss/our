package com.gem.hami.entity;

public class ReasonCategory {
    private Integer reasonCategoryId;

    private String name;

    public Integer getReasonCategoryId() {
        return reasonCategoryId;
    }

    public void setReasonCategoryId(Integer reasonCategoryId) {
        this.reasonCategoryId = reasonCategoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
}