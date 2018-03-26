package com.fstech.yzedusc.bean;

import java.io.Serializable;

/**
 * Created by shaoxin on 18-3-26.
 * 存放直播间对象的类
 */

public class LiveRoomBean implements Serializable{
    private int live_room_id;
    private int teacher_id;
    private String live_room_name;
    private String live_room_number;
    private String live_room_image;
    private String live_room_state;

    public LiveRoomBean(int live_room_id, int teacher_id, String live_room_name, String live_room_number, String live_room_image, String live_room_state) {
        this.live_room_id = live_room_id;
        this.teacher_id = teacher_id;
        this.live_room_name = live_room_name;
        this.live_room_number = live_room_number;
        this.live_room_image = live_room_image;
        this.live_room_state = live_room_state;
    }

    public LiveRoomBean() {
    }

    public int getLive_room_id() {
        return live_room_id;
    }

    public void setLive_room_id(int live_room_id) {
        this.live_room_id = live_room_id;
    }

    public int getTeacher_id() {
        return teacher_id;
    }

    public void setTeacher_id(int teacher_id) {
        this.teacher_id = teacher_id;
    }

    public String getLive_room_name() {
        return live_room_name;
    }

    public void setLive_room_name(String live_room_name) {
        this.live_room_name = live_room_name;
    }

    public String getLive_room_number() {
        return live_room_number;
    }

    public void setLive_room_number(String live_room_number) {
        this.live_room_number = live_room_number;
    }

    public String getLive_room_image() {
        return live_room_image;
    }

    public void setLive_room_image(String live_room_image) {
        this.live_room_image = live_room_image;
    }

    public String getLive_room_state() {
        return live_room_state;
    }

    public void setLive_room_state(String live_room_state) {
        this.live_room_state = live_room_state;
    }

    @Override
    public String toString() {
        return "LiveRoomBean{" +
                "live_room_id=" + live_room_id +
                ", teacher_id=" + teacher_id +
                ", live_room_name='" + live_room_name + '\'' +
                ", live_room_number='" + live_room_number + '\'' +
                ", live_room_image='" + live_room_image + '\'' +
                ", live_room_state='" + live_room_state + '\'' +
                '}';
    }
}
