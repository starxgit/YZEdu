package com.fstech.yzedudbs.po;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.Date;

public class Course {
	private Integer course_id;
	private String course_code;
	private String course_name;
	private String course_introduce;
	private Integer school_id;
	private Integer faculty_id;
	private Integer	class_id;
	private Integer course_classification;
	private Integer course_sum_student;
	private Integer	course_learn_student;
	private	String course_cover;
	private Byte course_type;
	private Integer course_finish;
	private Integer course_sum;
	private BigDecimal course_price;
	private Byte gmt_del;
	private Date gmt_create;
	private Date gmt_modified;
	public Integer getCourse_id() {
		return course_id;
	}
	public void setCourse_id(Integer course_id) {
		this.course_id = course_id;
	}
	public String getCourse_code() {
		return course_code;
	}
	public void setCourse_code(String course_code) {
		this.course_code = course_code;
	}
	public String getCourse_name() {
		return course_name;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getCourse_introduce() {
		return course_introduce;
	}
	public void setCourse_introduce(String course_introduce) {
		this.course_introduce = course_introduce;
	}
	public Integer getSchool_id() {
		return school_id;
	}
	public void setSchool_id(Integer school_id) {
		this.school_id = school_id;
	}
	public Integer getFaculty_id() {
		return faculty_id;
	}
	public void setFaculty_id(Integer faculty_id) {
		this.faculty_id = faculty_id;
	}
	public Integer getClass_id() {
		return class_id;
	}
	public void setClass_id(Integer class_id) {
		this.class_id = class_id;
	}
	public Integer getCourse_classification() {
		return course_classification;
	}
	public void setCourse_classification(Integer course_classification) {
		this.course_classification = course_classification;
	}
	public Integer getCourse_sum_student() {
		return course_sum_student;
	}
	public void setCourse_sum_student(Integer course_sum_student) {
		this.course_sum_student = course_sum_student;
	}
	public Integer getCourse_learn_student() {
		return course_learn_student;
	}
	public void setCourse_learn_student(Integer course_learn_student) {
		this.course_learn_student = course_learn_student;
	}
	public String getCourse_cover() {
		return course_cover;
	}
	public void setCourse_cover(String course_cover) {
		this.course_cover = course_cover;
	}
	public Byte getCourse_type() {
		return course_type;
	}
	public void setCourse_type(Byte course_type) {
		this.course_type = course_type;
	}
	public Integer getCourse_finish() {
		return course_finish;
	}
	public void setCourse_finish(Integer course_finish) {
		this.course_finish = course_finish;
	}
	public Integer getCourse_sum() {
		return course_sum;
	}
	public void setCourse_sum(Integer course_sum) {
		this.course_sum = course_sum;
	}
	public BigDecimal getCourse_price() {
		return course_price;
	}
	public void setCourse_price(BigDecimal course_price) {
		this.course_price = course_price;
	}
	public Byte getGmt_del() {
		return gmt_del;
	}
	public void setGmt_del(Byte gmt_del) {
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
	

}
