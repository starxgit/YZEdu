package com.fstech.yzedusc.bean;

import java.io.Serializable;

/**
 * Created by shaoxin on 18-3-29.
 */

public class CourseBean implements Serializable{
    private int course_id;
    private String course_code;
    private String course_name;
    private String coruse_introduce;
    private String course_teacher;
    private int course_sum_student;
    private int course_learn_student;
    private String course_cover;
    private int course_sum;
    private double course_price;

    public CourseBean() {
    }

    public CourseBean(int course_id, String course_code, String course_name, String coruse_introduce,
                      String course_teacher, int course_sum_student, int course_learn_student,
                      String course_cover, int course_sum, double course_price) {
        this.course_id = course_id;
        this.course_code = course_code;
        this.course_name = course_name;
        this.coruse_introduce = coruse_introduce;
        this.course_teacher = course_teacher;
        this.course_sum_student = course_sum_student;
        this.course_learn_student = course_learn_student;
        this.course_cover = course_cover;
        this.course_sum = course_sum;
        this.course_price = course_price;
    }

    public int getCourse_id() {
        return course_id;
    }

    public void setCourse_id(int course_id) {
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

    public String getCoruse_introduce() {
        return coruse_introduce;
    }

    public void setCoruse_introduce(String coruse_introduce) {
        this.coruse_introduce = coruse_introduce;
    }

    public String getCourse_teacher() {
        return course_teacher;
    }

    public void setCourse_teacher(String course_teacher) {
        this.course_teacher = course_teacher;
    }

    public int getCourse_sum_student() {
        return course_sum_student;
    }

    public void setCourse_sum_student(int course_sum_student) {
        this.course_sum_student = course_sum_student;
    }

    public int getCourse_learn_student() {
        return course_learn_student;
    }

    public void setCourse_learn_student(int course_learn_student) {
        this.course_learn_student = course_learn_student;
    }

    public String getCourse_cover() {
        return course_cover;
    }

    public void setCourse_cover(String course_cover) {
        this.course_cover = course_cover;
    }

    public int getCourse_sum() {
        return course_sum;
    }

    public void setCourse_sum(int course_sum) {
        this.course_sum = course_sum;
    }

    public double getCourse_price() {
        return course_price;
    }

    public void setCourse_price(double course_price) {
        this.course_price = course_price;
    }

    @Override
    public String toString() {
        return "CourseBean{" +
                "course_id=" + course_id +
                ", course_code='" + course_code + '\'' +
                ", course_name='" + course_name + '\'' +
                ", coruse_introduce='" + coruse_introduce + '\'' +
                ", course_teacher='" + course_teacher + '\'' +
                ", course_sum_student=" + course_sum_student +
                ", course_learn_student=" + course_learn_student +
                ", course_cover='" + course_cover + '\'' +
                ", course_sum=" + course_sum +
                ", course_price=" + course_price +
                '}';
    }
}
