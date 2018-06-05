package com.gem.hami.entity;

public class School {
    private Integer schoolId;

    private String name;

    private Byte schoolStateId;

    private String remark;

    private SchoolState schoolState;

    public Integer getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(Integer schoolId) {
        this.schoolId = schoolId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Byte getSchoolStateId() {
        return schoolStateId;
    }

    public void setSchoolStateId(Byte schoolStateId) {
        this.schoolStateId = schoolStateId;
    }

    public SchoolState getSchoolState() {
        return schoolState;
    }

    public void setSchoolState(SchoolState schoolState) {
        this.schoolState = schoolState;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}