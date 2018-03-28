package com.fstech.yzedusc.activity;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.util.CacheActivityUtil;
import com.fstech.yzedusc.view.ClearEditText;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by shaoxin on 18-3-28.
 * 课程分类的主界面
 */

public class CourseClassificationActivity extends AppCompatActivity {
    private TextView tv_search;
    private ClearEditText et_search;
    private ListView lv_cfa;
    private List<Map<String, Object>> listItems_cfa;
    private SimpleAdapter adapter_cfa;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_course_classification);
        initView();
        initData();
    }

    /*
    * 初始化视图
    * 无参数
    * 无返回
    * */
    private void initView() {
        CacheActivityUtil.addActivity(CourseClassificationActivity.this);
        tv_search = (TextView) findViewById(R.id.tv_search);
        et_search = (ClearEditText) findViewById(R.id.et_search);
        lv_cfa = (ListView) findViewById(R.id.lv_classification_own);
        listItems_cfa = new ArrayList<Map<String, Object>>();
        adapter_cfa = new SimpleAdapter(CourseClassificationActivity.this, listItems_cfa,
                R.layout.item_classification, new String[]{"cfa"}, new int[]{R.id.tv_text});
        lv_cfa.setAdapter(adapter_cfa);

    }

    /*
    * 初始化数据
    * 无参数
    * 无返回
    * */
    private void initData() {
        for (int i = 0; i < 8; i++) {
            Map<String, Object> map = new HashMap<>();
            map.put("cfa", "分类" + i);
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
}
