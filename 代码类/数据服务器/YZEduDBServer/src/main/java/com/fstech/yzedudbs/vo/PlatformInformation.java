package com.fstech.yzedudbs.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

public class PlatformInformation {
	private Integer platform_information_id;
	private String platform_information_title;
	private String platform_information_content;
	private String platform_information_cover;
	private Integer platform_information_image_count;
	private Date platform_information_date;
	public Integer getPlatform_information_id() {
		return platform_information_id;
	}
	public void setPlatform_information_id(Integer platform_information_id) {
		this.platform_information_id = platform_information_id;
	}
	public String getPlatform_information_title() {
		return platform_information_title;
	}
	public void setPlatform_information_title(String platform_information_title) {
		this.platform_information_title = platform_information_title;
	}
	public String getPlatform_information_content() {
		return platform_information_content;
	}
	public void setPlatform_information_content(String platform_information_content) {
		this.platform_information_content = platform_information_content;
	}
	public String getPlatform_information_cover() {
		return platform_information_cover;
	}
	public void setPlatform_information_cover(String platform_information_cover) {
		this.platform_information_cover = platform_information_cover;
	}
	public Integer getPlatform_information_image_count() {
		return platform_information_image_count;
	}
	public void setPlatform_information_image_count(
			Integer platform_information_image_count) {
		this.platform_information_image_count = platform_information_image_count;
	}
	public Date getPlatform_information_date() {
		return platform_information_date;
	}
	public void setPlatform_information_date(Date platform_information_date) {
		this.platform_information_date = platform_information_date;
	}
	
}
