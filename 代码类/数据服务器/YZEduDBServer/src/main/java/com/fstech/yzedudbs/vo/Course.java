package com.fstech.yzedudbs.vo;

import java.math.BigDecimal;
public class Course {
	private Integer course_id;
	private String course_name;
	private	String course_cover;
	private Integer course_sum_student;
	private Integer course_learn_student;
	private BigDecimal course_price;
	
	
	public Integer getCourse_learn_student() {
		return course_learn_student;
	}
	public void setCourse_learn_student(Integer course_learn_student) {
		this.course_learn_student = course_learn_student;
	}
	public Integer getCourse_id() {
		return course_id;
	}
	public void setCourse_id(Integer course_id) {
		this.course_id = course_id;
	}
	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}
	public String getCourse_name() {
		return course_name;
	}
	public Integer getCourse_sum_student() {
		return course_sum_student;
	}
	public void setCourse_sum_student(Integer course_sum_student) {
		this.course_sum_student = course_sum_student;
	}
	
	public String getCourse_cover() {
		return course_cover;
	}
	public void setCourse_cover(String course_cover) {
		this.course_cover = course_cover;
	}
	
	public BigDecimal getCourse_price() {
		return course_price;
	}
	public void setCourse_price(BigDecimal course_price) {
		this.course_price = course_price;
	}
}
