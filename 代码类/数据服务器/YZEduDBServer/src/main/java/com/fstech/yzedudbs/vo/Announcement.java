package com.fstech.yzedudbs.vo;

import java.util.Date;

public class Announcement {
	private Integer announcement_id;
	private String announcement_title;
	private String announcement_content;
	private Date announcement_date;
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
	public Date getAnnouncement_date() {
		return announcement_date;
	}
	public void setAnnouncement_date(Date announcement_date) {
		this.announcement_date = announcement_date;
	}
	
}
