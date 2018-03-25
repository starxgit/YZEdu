package com.fstech.yzedusc.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.fstech.yzedusc.R;
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;

/**
 * Created by shaoxin on 18-3-25.
 * 个人界面的Fragment
 */

public class PersonFragment extends Fragment implements View.OnClickListener {

    // 定义UI对象
    private RelativeLayout re_wallet, re_ability, re_help, re_advice, re_setting;
    private TextView tv_name;
    private QMUIRadiusImageView iv_avatar;
    private ImageView iv_message;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_person, container, false);
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        initView();
        initData();
    }

    /*
    * 初始化视图
    * 无参数
    * 无返回
    * */
    private void initView() {
        re_wallet = (RelativeLayout) getActivity().findViewById(R.id.re_wallet);
        re_ability = (RelativeLayout) getActivity().findViewById(R.id.re_ability);
        re_help = (RelativeLayout) getActivity().findViewById(R.id.re_help);
        re_advice = (RelativeLayout) getActivity().findViewById(R.id.re_advice);
        re_setting = (RelativeLayout) getActivity().findViewById(R.id.re_setting);
        iv_avatar = (QMUIRadiusImageView) getActivity().findViewById(R.id.iv_avatar);
        iv_message = (ImageView) getActivity().findViewById(R.id.iv_message);
        tv_name = (TextView) getActivity().findViewById(R.id.tv_name);

        re_wallet.setOnClickListener(this);
        re_ability.setOnClickListener(this);
        re_help.setOnClickListener(this);
        re_advice.setOnClickListener(this);
        re_setting.setOnClickListener(this);
        iv_avatar.setOnClickListener(this);
        iv_message.setOnClickListener(this);
        tv_name.setOnClickListener(this);
    }

    /*
    * 初始化数据
    * 无参数
    * 无返回
    * */
    private void initData() {

    }

    // 监听按钮事件
    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.re_wallet:
                Log.e("click", "wallet");
                break;
            case R.id.re_ability:
                Log.e("click", "ability");
                break;
            case R.id.re_help:
                Log.e("click", "help");
                break;
            case R.id.re_advice:
                Log.e("click", "advice");
                break;
            case R.id.re_setting:
                Log.e("click", "setting");
                break;
            case R.id.iv_avatar:
                Log.e("click", "avatar");
                break;
            case R.id.tv_name:
                Log.e("click", "name");
                break;
            case R.id.iv_message:
                Log.e("click", "message");
                break;
            default:
                break;
        }
    }

}
