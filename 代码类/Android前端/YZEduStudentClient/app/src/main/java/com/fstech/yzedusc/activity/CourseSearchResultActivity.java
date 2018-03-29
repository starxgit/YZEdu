package com.fstech.yzedusc.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.adapter.CourseListAdapter;
import com.fstech.yzedusc.bean.CourseBean;
import com.fstech.yzedusc.util.CacheActivityUtil;
import com.fstech.yzedusc.view.MyListView;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.scwang.smartrefresh.layout.footer.ClassicsFooter;
import com.scwang.smartrefresh.layout.header.ClassicsHeader;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by shaoxin on 18-3-29.
 * 搜索结果的主界面
 */

public class CourseSearchResultActivity extends AppCompatActivity implements View.OnClickListener {
    private TextView tv_search;
    private EditText et_search;
    private String keyword;
    private ListView lv_search_course;
    private CourseListAdapter adapter_course;
    private List<CourseBean> listItems_course;
    private SmartRefreshLayout smartRefreshLayout;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_course_search_result);
        initView();
        initData();
    }

    /*
    * 初始化视图
    * 无参数
    * 无返回
    * */
    private void initView() {
        CacheActivityUtil.addActivity(CourseSearchResultActivity.this);
        Intent intent = getIntent();
        keyword = intent.getStringExtra("keyword");
        tv_search = (TextView) findViewById(R.id.tv_search);
        et_search = (EditText) findViewById(R.id.et_search);
        et_search.setText(keyword);
        tv_search.setOnClickListener(this);
        lv_search_course = (ListView) findViewById(R.id.lv_search_course);
        smartRefreshLayout = (SmartRefreshLayout) findViewById(R.id.smart_refresh);
        smartRefreshLayout.setRefreshHeader(new ClassicsHeader(this));
        smartRefreshLayout.setRefreshFooter(new ClassicsFooter(this));

        listItems_course = new ArrayList<CourseBean>();
        adapter_course = new CourseListAdapter(CourseSearchResultActivity.this, listItems_course);
        lv_search_course.setAdapter(adapter_course);
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
            case R.id.tv_search:
                reSearch();
                hideKeyBoard();
                break;
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

    /*
    * 隐藏键盘的方法
    * */
    private void hideKeyBoard() {
        View view = getWindow().peekDecorView();
        if (view != null) {
            InputMethodManager inputmanger = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
            inputmanger.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }
}
