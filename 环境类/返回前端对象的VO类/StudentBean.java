package com.fstech.yzedusc.bean;

import java.io.Serializable;

/**
 * Created by shaoxin on 18-4-9.
 * 学生用户信息的模型类
 */

public class StudentBean implements Serializable {
    private int user_id;                // 用户id
    private String user_phone;          // 学生绑定用户手机号
    private String user_sex;            // 用户性别
    private int user_age;               // 年龄
    private String user_avatar;         // 用户头像
    private String student_id;          // 学生id
    private String student_name;        // 学生姓名

    public StudentBean() {
    }

    public StudentBean(int user_id, String user_phone, String user_sex, int user_age, String user_avatar, String student_id, String student_name) {
        this.user_id = user_id;
        this.user_phone = user_phone;
        this.user_sex = user_sex;
        this.user_age = user_age;
        this.user_avatar = user_avatar;
        this.student_id = student_id;
        this.student_name = student_name;
    }

    @Override
    public String toString() {
        return "StudentBean{" +
                "user_id=" + user_id +
                ", user_phone='" + user_phone + '\'' +
                ", user_sex='" + user_sex + '\'' +
                ", user_age=" + user_age +
                ", user_avatar='" + user_avatar + '\'' +
                ", student_id='" + student_id + '\'' +
                ", student_name='" + student_name + '\'' +
                '}';
    }
}
