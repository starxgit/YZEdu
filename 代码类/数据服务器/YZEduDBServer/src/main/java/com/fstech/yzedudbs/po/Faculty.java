package com.fstech.yzedudbs.po;

import java.util.Date;

public class Faculty {
    private Integer facultyId;

    private Integer schoolId;

    private String facultyCode;

    private String facultyName;

    private String facultyIntroduce;

    private Date gmtCreate;

    private Date gmtModified;

    public Integer getFacultyId() {
        return facultyId;
    }

    public void setFacultyId(Integer facultyId) {
        this.facultyId = facultyId;
    }

    public Integer getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(Integer schoolId) {
        this.schoolId = schoolId;
    }

    public String getFacultyCode() {
        return facultyCode;
    }

    public void setFacultyCode(String facultyCode) {
        this.facultyCode = facultyCode == null ? null : facultyCode.trim();
    }

    public String getFacultyName() {
        return facultyName;
    }

    public void setFacultyName(String facultyName) {
        this.facultyName = facultyName == null ? null : facultyName.trim();
    }

    public String getFacultyIntroduce() {
        return facultyIntroduce;
    }

    public void setFacultyIntroduce(String facultyIntroduce) {
        this.facultyIntroduce = facultyIntroduce == null ? null : facultyIntroduce.trim();
    }

    public Date getGmtCreate() {
        return gmtCreate;
    }

    public void setGmtCreate(Date gmtCreate) {
        this.gmtCreate = gmtCreate;
    }

    public Date getGmtModified() {
        return gmtModified;
    }

    public void setGmtModified(Date gmtModified) {
        this.gmtModified = gmtModified;
    }
}