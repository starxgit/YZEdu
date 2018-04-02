package com.fstech.yzedusc.activity;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.view.View;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.util.CacheActivityUtil;

/**
 * Created by shaoxin on 18-4-2.
 * 我的任务主界面
 */

public class MyTaskActivity extends AppCompatActivity{
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_my_task);
        initView();
        initData();
    }

    /*
   * 返回上一级
   * xml布局文件里面调用
   * */
    public void back(View view) {
        finish();
    }

    /*
    * 初始化视图
    * 无参数
    * 无返回
    * */
    private void initView() {
        CacheActivityUtil.addActivity(MyTaskActivity.this);
    }

    /*
    * 初始化数据
    * 无参数
    * 无返回
    * */
    private void initData() {
    }

}
