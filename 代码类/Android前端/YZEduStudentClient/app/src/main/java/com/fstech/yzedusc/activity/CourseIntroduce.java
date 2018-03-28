package com.fstech.yzedusc.activity;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TabHost;
import android.widget.TextView;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.util.CacheActivityUtil;
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;

/**
 * Created by shaoxin on 18-3-28.
 * 课程介绍页的主界面
 */

public class CourseIntroduce extends AppCompatActivity{
    private QMUIRadiusImageView iv_course_image;
    private TextView tv_course_name;
    private TextView tv_learn_num;
    private TextView tv_sumhour;
    private Button bn_option;
    private TabHost tabhost;
    private LinearLayout ll_introduce;
    private LinearLayout ll_catalog;
    private ListView lv_catalog;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_course_introduce);
    }

    /*
    * 初始化视图
    * 无参数
    * 无返回
    * */
    private void initView(){
        CacheActivityUtil.addActivity(CourseIntroduce.this);
        iv_course_image=(QMUIRadiusImageView)findViewById(R.id.iv_course_image);
        tv_course_name=(TextView)findViewById(R.id.tv_course_name);
        tv_learn_num=(TextView)findViewById(R.id.tv_learn_num);
        tv_sumhour=(TextView)findViewById(R.id.tv_sum_hour);
        bn_option=(Button)findViewById(R.id.bn_option);
//        tabhost=(TabHost)findViewById(R.id.tab_course_introduce);
//        ll_introduce=(LinearLayout)findViewById(R.id.ll_introduce);
//        ll_catalog=(LinearLayout)findViewById(R.id.ll_catalog);
//        lv_catalog=(ListView)findViewById(R.id.lv_catalog);
        //调用 TabHost.setup()
//        tabhost.setup();
//        //创建Tab标签
//        tabhost.addTab(tabhost.newTabSpec("one").setIndicator("课程介绍").setContent(R.id.widget_layout_red));
//        tabhost.addTab(tabhost.newTabSpec("two").setIndicator("课程目录").setContent(R.id.widget_layout_yellow));
//        tabhost.addTab(tabhost.newTabSpec("three").setIndicator("课程评价").setContent(R.id.widget_layout_blue));
    }

    /*
    * 初始化数据
    * 无参数
    * 无返回
    * */
    private void initData(){

    }

    /*
    * 返回上一级
    * xml布局文件里面调用
    * */
    public void back(View view) {
        finish();
    }
}
