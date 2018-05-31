package com.gem.hami.entity;

public class ApplicationState {
    private Integer applicationStateId;

    private String name;

    public Integer getApplicationStateId() {
        return applicationStateId;
    }

    public void setApplicationStateId(Integer applicationStateId) {
        this.applicationStateId = applicationStateId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
}