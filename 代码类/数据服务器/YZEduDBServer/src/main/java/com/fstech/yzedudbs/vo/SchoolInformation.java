package com.fstech.yzedudbs.vo;

import java.util.Date;

public class SchoolInformation {
	
	private Integer school_information_id;
	private String school_information_title;
	private String school_information_content;
	private String school_information_cover;
	private Date school_information_date;
	public Integer getSchool_information_id() {
		return school_information_id;
	}
	public void setSchool_information_id(Integer school_information_id) {
		this.school_information_id = school_information_id;
	}
	public String getSchool_information_title() {
		return school_information_title;
	}
	public void setSchool_information_title(String school_information_title) {
		this.school_information_title = school_information_title;
	}
	public String getSchool_information_content() {
		return school_information_content;
	}
	public void setSchool_information_content(String school_information_content) {
		this.school_information_content = school_information_content;
	}
	public String getSchool_information_cover() {
		return school_information_cover;
	}
	public void setSchool_information_cover(String school_information_cover) {
		this.school_information_cover = school_information_cover;
	}
	public Date getSchool_information_date() {
		return school_information_date;
	}
	public void setSchool_information_date(Date school_information_date) {
		this.school_information_date = school_information_date;
	}
	
}
