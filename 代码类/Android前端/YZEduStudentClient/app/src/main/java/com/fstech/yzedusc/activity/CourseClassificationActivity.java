package com.fstech.yzedusc.activity;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.util.CacheActivityUtil;
import com.fstech.yzedusc.view.ClearEditText;
import com.qmuiteam.qmui.util.QMUIDisplayHelper;
import com.qmuiteam.qmui.widget.QMUIFloatLayout;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by shaoxin on 18-3-28.
 * 课程分类的主界面
 */

public class CourseClassificationActivity extends AppCompatActivity implements View.OnClickListener {
    private TextView tv_search;
    private ClearEditText et_search;
    private ListView lv_cfa;
    private List<Map<String, Object>> listItems_cfa;
    private SimpleAdapter adapter_cfa;
    private QMUIFloatLayout fl_content;

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
        tv_search.setOnClickListener(this);
        et_search = (ClearEditText) findViewById(R.id.et_search);
        lv_cfa = (ListView) findViewById(R.id.lv_classification_own);
        fl_content = (QMUIFloatLayout) findViewById(R.id.fl_content);
        listItems_cfa = new ArrayList<Map<String, Object>>();
        adapter_cfa = new SimpleAdapter(CourseClassificationActivity.this, listItems_cfa,
                R.layout.item_classification, new String[]{"cfa"}, new int[]{R.id.tv_text});
        lv_cfa.setAdapter(adapter_cfa);
        lv_cfa.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                fl_content.removeAllViews();
                String arrs[] = (String[]) listItems_cfa.get(i).get("clist");
//                Log.e("arrs",arrs[0]+","+arrs[1]);
                for (int j = 0; j < arrs.length; j++) {
                    TextView textView = new TextView(CourseClassificationActivity.this);
                    int textViewPadding = QMUIDisplayHelper.dp2px(CourseClassificationActivity.this, 4);
                    textView.setPadding(textViewPadding, textViewPadding, textViewPadding, textViewPadding);
                    textView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
                    textView.setTextColor(ContextCompat.getColor(CourseClassificationActivity.this, R.color.qmui_config_color_75_pure_black));
                    textView.setText(arrs[j]);
                    int textViewSize = QMUIDisplayHelper.dpToPx(60);//将dp转化为px
                    //设置textview在屏幕中所在位置
                    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(textViewSize, textViewSize);
                    fl_content.addView(textView, layoutParams);//将textview添加到floatLayout布局中
                    fl_content.setGravity(Gravity.LEFT);//floatLayout中子节点左对齐

                    textView.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View view) {
                            Intent itent_tem=new Intent(CourseClassificationActivity.this,CourseCfaResultActivity.class);
                            itent_tem.putExtra("cfa_id","1");
                            startActivity(itent_tem);
                        }
                    });
                }
            }
        });

    }

    /*
    * 初始化数据
    * 无参数
    * 无返回
    * */
    private void initData() {
        for (int i = 1; i < 9; i++) {
            Map<String, Object> map = new HashMap<>();
            map.put("cfa", "分类" + i);
            map.put("clist", new String[]{"分类" + i + "-1", "分类" + i + "-2", "分类" + i + "-3", "分类" + i + "-4", "分类" + i + "-5", "分类" + i + "-6", "分类" + i + "-7",});
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
            case R.id.tv_search:
                doSearch();
                hideKeyBoard();
                break;
            default:
                break;
        }
    }

    /*
    * 开始搜索课程的方法
    * */
    private void doSearch() {
        String keyword = et_search.getText().toString();
        if (!keyword.equals("")) {
            Intent intent = new Intent(CourseClassificationActivity.this, CourseSearchResultActivity.class);
            intent.putExtra("keyword", keyword);
            startActivity(intent);
        }
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
