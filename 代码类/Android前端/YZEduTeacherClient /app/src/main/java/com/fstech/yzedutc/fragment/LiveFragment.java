package com.fstech.yzedutc.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.fstech.yzedutc.R;
import com.fstech.yzedutc.activity.CourseClassificationActivity;

/**
 * Created by shaoxin on 18-4-17.
 * 直播界面的Fragment
 */

public class LiveFragment extends Fragment implements View.OnClickListener {
    // 定义UI对象

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_course, container, false);
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
    }

    /*
    * 初始化视图
    * 无参数
    * 无返回
    * */
    private void initView() {

    }

    /*
    * 初始化数据
    * 无参数
    * 无返回
    * */
    private void initData() {
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.et_search:
                Intent intent0 = new Intent(getActivity(), CourseClassificationActivity.class);
                startActivity(intent0);
                break;
            default:
                break;
        }
    }
}
