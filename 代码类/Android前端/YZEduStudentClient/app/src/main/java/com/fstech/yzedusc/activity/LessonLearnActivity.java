package com.fstech.yzedusc.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.TextView;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.bean.LessonBean;

/**
 * Created by shaoxin on 18-4-11.
 * 一节课的学习页
 */

public class LessonLearnActivity extends AppCompatActivity {
    private LessonBean lb;
    private TextView tv_title;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_lesson_learn);
        initView();
        initData();

    }

    /*
    * 初始化视图
    * */
    private void initView() {
        tv_title = (TextView) findViewById(R.id.tv_title);
    }

    /*
    * 初始化数据
    * */
    private void initData() {
        lb = null;
        Intent intent = getIntent();
        lb = (LessonBean) intent.getSerializableExtra("lb");
        tv_title.setText(lb.getLesson_title());

    }

    /*
    * 返回上一级
    * xml布局文件里面调用
    * */
    public void back(View view) {
        finish();
    }
}
