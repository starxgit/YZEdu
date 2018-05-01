package com.fstech.yzedudbs.po;

import java.util.Date;

public class Announcements {
	private Integer announcement_id;
	private Integer school_id;
	private String announcement_title;
	private String announcement_content;
	private Integer announcement_stick;
	private Integer gmt_del;
	private Date gmt_create;
	private Date gmt_modified;
	public Integer getSchool_id() {
		return school_id;
	}
	public void setSchool_id(Integer school_id) {
		this.school_id = school_id;
	}
	public Integer getAnnouncement_stick() {
		return announcement_stick;
	}
	public void setAnnouncement_stick(Integer announcement_stick) {
		this.announcement_stick = announcement_stick;
	}
	public Integer getGmt_del() {
		return gmt_del;
	}
	public void setGmt_del(Integer gmt_del) {
		this.gmt_del = gmt_del;
	}
	public Date getGmt_create() {
		return gmt_create;
	}
	public void setGmt_create(Date gmt_create) {
		this.gmt_create = gmt_create;
	}
	public Date getGmt_modified() {
		return gmt_modified;
	}
	public void setGmt_modified(Date gmt_modified) {
		this.gmt_modified = gmt_modified;
	}
	public Integer getAnnouncement_id() {
		return announcement_id;
	}
	public void setAnnouncement_id(Integer announcement_id) {
		this.announcement_id = announcement_id;
	}
	public String getAnnouncement_title() {
		return announcement_title;
	}
	public void setAnnouncement_title(String announcement_title) {
		this.announcement_title = announcement_title;
	}
	public String getAnnouncement_content() {
		return announcement_content;
	}
	public void setAnnouncement_content(String announcement_content) {
		this.announcement_content = announcement_content;
	}
	
	
}
