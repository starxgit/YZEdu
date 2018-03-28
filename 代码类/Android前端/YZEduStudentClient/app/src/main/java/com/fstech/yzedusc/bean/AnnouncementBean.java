package com.fstech.yzedusc.bean;

import java.io.Serializable;

/**
 * Created by shaoxin on 18-3-28.
 * 公告数据的模型类
 */

public class AnnouncementBean implements Serializable {
    private int announcement_id;
    private String announcement_title;
    private String announcement_content;
    private String announcement_stick;
    private String announcement_date;

    public AnnouncementBean() {
    }

    public AnnouncementBean(int announcement_id, String announcement_title, String announcement_content,
                            String announcement_stick, String announcement_date) {
        this.announcement_id = announcement_id;
        this.announcement_title = announcement_title;
        this.announcement_content = announcement_content;
        this.announcement_stick = announcement_stick;
        this.announcement_date = announcement_date;
    }

    public int getAnnouncement_id() {
        return announcement_id;
    }

    public void setAnnouncement_id(int announcement_id) {
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

    public String getAnnouncement_stick() {
        return announcement_stick;
    }

    public void setAnnouncement_stick(String announcement_stick) {
        this.announcement_stick = announcement_stick;
    }

    public String getAnnouncement_date() {
        return announcement_date;
    }

    public void setAnnouncement_date(String announcement_date) {
        this.announcement_date = announcement_date;
    }

    @Override
    public String toString() {
        return "AnnouncementBean{" +
                "announcement_id=" + announcement_id +
                ", announcement_title='" + announcement_title + '\'' +
                ", announcement_content='" + announcement_content + '\'' +
                ", announcement_stick='" + announcement_stick + '\'' +
                ", announcement_date='" + announcement_date + '\'' +
                '}';
    }
}
