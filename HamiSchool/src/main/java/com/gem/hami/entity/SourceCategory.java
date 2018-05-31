package com.gem.hami.entity;

public class SourceCategory {
    private Integer sourceCategoryId;

    private String name;

    public Integer getSourceCategoryId() {
        return sourceCategoryId;
    }

    public void setSourceCategoryId(Integer sourceCategoryId) {
        this.sourceCategoryId = sourceCategoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
}