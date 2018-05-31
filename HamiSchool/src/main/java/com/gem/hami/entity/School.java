package com.gem.hami.entity;

public class School {
    private Integer schoolId;

    private String name;

    private Byte schoolSateId;

    private String remark;

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

    public Byte getSchoolSateId() {
        return schoolSateId;
    }

    public void setSchoolSateId(Byte schoolSateId) {
        this.schoolSateId = schoolSateId;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }
}