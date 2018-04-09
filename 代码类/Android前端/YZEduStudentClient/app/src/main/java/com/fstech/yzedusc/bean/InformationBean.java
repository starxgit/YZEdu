package com.fstech.yzedusc.bean;

import java.io.Serializable;

/**
 * Created by shaoxin on 18-3-28.
 * 显示咨询列表的模型类
 */

public class InformationBean implements Serializable {
    private int information_id;         // 资讯id
    private String information_title;   // 资讯标题
    private String information_content; // 资讯内容
    private String information_date;    // 资讯日期(直接取字符串)
    private String information_image;   // 资讯图片路径(如果没有设为null)
    private String information_author;  // 资讯作者

    public InformationBean() {
    }

    public InformationBean(int information_id, String information_title, String information_content,
                           String information_date, String information_image, String information_author) {
        this.information_id = information_id;
        this.information_title = information_title;
        this.information_content = information_content;
        this.information_date = information_date;
        this.information_image = information_image;
        this.information_author = information_author;
    }

    public int getInformation_id() {
        return information_id;
    }

    public void setInformation_id(int information_id) {
        this.information_id = information_id;
    }

    public String getInformation_title() {
        return information_title;
    }

    public void setInformation_title(String information_title) {
        this.information_title = information_title;
    }

    public String getInformation_content() {
        return information_content;
    }

    public void setInformation_content(String information_content) {
        this.information_content = information_content;
    }

    public String getInformation_date() {
        return information_date;
    }

    public void setInformation_date(String information_date) {
        this.information_date = information_date;
    }

    public String getInformation_image() {
        return information_image;
    }

    public void setInformation_image(String information_image) {
        this.information_image = information_image;
    }

    public String getInformation_author() {
        return information_author;
    }

    public void setInformation_author(String information_author) {
        this.information_author = information_author;
    }

    @Override
    public String toString() {
        return "InformationBean{" +
                "information_id=" + information_id +
                ", information_title='" + information_title + '\'' +
                ", information_content='" + information_content + '\'' +
                ", information_date='" + information_date + '\'' +
                ", information_image='" + information_image + '\'' +
                ", information_author='" + information_author + '\'' +
                '}';
    }
}
