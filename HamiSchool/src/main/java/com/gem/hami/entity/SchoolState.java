package com.gem.hami.entity;

public class SchoolState {
    private Integer schoolStateId;

    private String name;

    public Integer getSchoolStateId() {
        return schoolStateId;
    }

    public void setSchoolStateId(Integer schoolStateId) {
        this.schoolStateId = schoolStateId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }
}