package com.fstech.yzedusc.activity;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TextView;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.adapter.LessonListAdapter;
import com.fstech.yzedusc.bean.LessonBean;
import com.fstech.yzedusc.util.CacheActivityUtil;
import com.fstech.yzedusc.view.MyListView;
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by shaoxin on 18-3-28.
 * 课程介绍页的主界面
 */

public class CourseIntroduceActivity extends AppCompatActivity {
    private QMUIRadiusImageView iv_course_image;
    private TextView tv_course_name;
    private TextView tv_learn_num;
    private TextView tv_sumhour;
    private QMUIRoundButton bn_option;
    private TabHost tabhost;
    private LinearLayout ll_introduce;
    private LinearLayout ll_catalog;
    private MyListView lv_catalog;
    private TextView tv_course_teacher;
    private TextView tv_course_introduce;
    private List<LessonBean> listItems;
    private LessonListAdapter adapter_lesson;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_course_introduce);
        initView();
        initData();
    }

    /*
    * 初始化视图
    * 无参数
    * 无返回
    * */
    private void initView() {
        CacheActivityUtil.addActivity(CourseIntroduceActivity.this);
        iv_course_image = (QMUIRadiusImageView) findViewById(R.id.iv_course_image);
        tv_course_name = (TextView) findViewById(R.id.tv_course_name);
        tv_learn_num = (TextView) findViewById(R.id.tv_learn_num);
        tv_sumhour = (TextView) findViewById(R.id.tv_sum_hour);
        bn_option = (QMUIRoundButton) findViewById(R.id.bn_option);
        tabhost = (TabHost) findViewById(R.id.tab_course_introduce);
        ll_introduce = (LinearLayout) findViewById(R.id.ll_course_introduce);
        ll_catalog = (LinearLayout) findViewById(R.id.ll_course_catalog);
        lv_catalog = (MyListView) findViewById(R.id.lv_course_catalog);
        tv_course_teacher = (TextView) findViewById(R.id.tv_course_teacher);
        tv_course_introduce = (TextView) findViewById(R.id.tv_course_introduce);
        //调用 TabHost.setup()
        tabhost.setup();
        //创建Tab标签
        tabhost.addTab(tabhost.newTabSpec("one").setIndicator("课程介绍").setContent(R.id.ll_course_introduce));
        tabhost.addTab(tabhost.newTabSpec("two").setIndicator("课程目录").setContent(R.id.ll_course_catalog));
        listItems = new ArrayList<LessonBean>();
        adapter_lesson = new LessonListAdapter(CourseIntroduceActivity.this, listItems);
        lv_catalog.setAdapter(adapter_lesson);
    }

    /*
    * 初始化数据
    * 无参数
    * 无返回
    * */
    private void initData() {
        for (int i = 1; i < 15; i++) {
            LessonBean lb = new LessonBean();
            lb.setLesson_title("第" + i + "节  课程标题" + i);
            listItems.add(lb);
        }
        lv_catalog.measure(0, 0);
    }

    /*
    * 返回上一级
    * xml布局文件里面调用
    * */
    public void back(View view) {
        finish();
    }
}
