package com.fstech.yzedusc.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.adapter.CourseListAdapter;
import com.fstech.yzedusc.adapter.TabAdapter;
import com.fstech.yzedusc.bean.CourseBean;
import com.fstech.yzedusc.util.CacheActivityUtil;
import com.fstech.yzedusc.view.HorizontalListView;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.scwang.smartrefresh.layout.footer.ClassicsFooter;
import com.scwang.smartrefresh.layout.header.ClassicsHeader;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by shaoxin on 18-3-29.
 * 课程分类结果的主界面
 */

public class CourseCfaResultActivity extends AppCompatActivity implements View.OnClickListener {
    private ListView lv_cfa_course;
    private CourseListAdapter adapter_course;
    private List<CourseBean> listItems_course;
    private SmartRefreshLayout smartRefreshLayout;
    private List<Map<String, Object>> listItems_cfa;
    private HorizontalListView lv_cfa;
    private int cfa_id;
    private TabAdapter adapter_cfa;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_course_cfa_result);
        initView();
        initData();
    }

    /*
    * 初始化视图
    * 无参数
    * 无返回
    * */
    private void initView() {
        CacheActivityUtil.addActivity(CourseCfaResultActivity.this);
        Intent intent = getIntent();
        cfa_id=Integer.parseInt(intent.getStringExtra("cfa_id"));
        lv_cfa_course = (ListView) findViewById(R.id.lv_cfa_course);
        lv_cfa=(HorizontalListView)findViewById(R.id.lv_cfa);
        smartRefreshLayout = (SmartRefreshLayout) findViewById(R.id.smart_refresh);
        smartRefreshLayout.setRefreshHeader(new ClassicsHeader(this));
        smartRefreshLayout.setRefreshFooter(new ClassicsFooter(this));

        listItems_course = new ArrayList<CourseBean>();
        adapter_course = new CourseListAdapter(CourseCfaResultActivity.this, listItems_course);
        lv_cfa_course.setAdapter(adapter_course);
        listItems_cfa=new ArrayList<>();
        adapter_cfa=new TabAdapter(CourseCfaResultActivity.this,listItems_cfa);
        lv_cfa.setAdapter(adapter_cfa);
        lv_cfa.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                adapter_cfa.changeSelected(i);
            }
        });
    }

    /*
    * 初始化数据
    * 无参数
    * 无返回
    * */
    private void initData() {
        for (int i = 0; i < 10; i++) {
            CourseBean cb = new CourseBean();
            listItems_course.add(cb);
            Map<String,Object> map=new HashMap<>();
            map.put("cfa_name","分类"+i);
            listItems_cfa.add(map);
        }
    }

    /*
    * 返回上一级
    * xml布局文件里面调用
    * */
    public void back(View view) {
        finish();
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            default:
                break;
        }
    }

    /*
    * 重新搜索的方法
    * */
    private void reSearch() {
        // TODO 刷新列表搜索
    }

}
