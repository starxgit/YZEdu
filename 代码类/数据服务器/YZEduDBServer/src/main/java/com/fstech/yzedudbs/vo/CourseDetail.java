package com.fstech.yzedudbs.vo;

import java.math.BigDecimal;

public class CourseDetail {
	private Integer course_code;
	private String course_name;
	private String course_introduce;
	private String course_teacher;
	private String course_cover;
	private Integer course_sum_student;
	private Integer course_learn_student;
	private BigDecimal	course_price;
	private Byte course_type;
	private Integer course_finish;
	public Integer getCourse_code() {
		return course_code;
	}
	public void setCourse_code(Integer course_code) {
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
	public String getCourse_teacher() {
		return course_teacher;
	}
	public void setCourse_teacher(String course_teacher) {
		this.course_teacher = course_teacher;
	}
	public String getCourse_cover() {
		return course_cover;
	}
	public void setCourse_cover(String course_cover) {
		this.course_cover = course_cover;
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
	public BigDecimal getCourse_price() {
		return course_price;
	}
	public void setCourse_price(BigDecimal course_price) {
		this.course_price = course_price;
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
	
}
