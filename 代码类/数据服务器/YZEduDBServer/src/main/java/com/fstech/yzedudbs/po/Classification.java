package com.fstech.yzedudbs.po;

import java.util.Date;

public class Classification {
	private Integer classification_id;
	private String classification_name;
	private Integer classification_own;
	private Date gmt_create;
	private Date gmt_modified;
	public Integer getClassification_id() {
		return classification_id;
	}
	public void setClassification_id(Integer classification_id) {
		this.classification_id = classification_id;
	}
	public String getClassification_name() {
		return classification_name;
	}
	public void setClassification_name(String classification_name) {
		this.classification_name = classification_name;
	}
	public Integer getClassification_own() {
		return classification_own;
	}
	public void setClassification_own(Integer classification_own) {
		this.classification_own = classification_own;
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
	
}
