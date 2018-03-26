package com.fstech.yzedusc.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.adapter.LiveRoomListAdapter;
import com.fstech.yzedusc.bean.LiveRoomBean;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by shaoxin on 18-3-25.
 * 课程界面的Fragment
 */

public class CourseFragment extends Fragment {
    // 定义UI对象
    private ListView lv_live;
    private ListView lv_new;
    private ListView lv_top;
    private List<LiveRoomBean> list_live;
    private LiveRoomListAdapter adapter;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_course, container, false);
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        initView();
    }

    /*
    * 初始化视图
    * 无参数
    * 无返回
    * */
    private void initView(){
        lv_live=(ListView)getActivity().findViewById(R.id.lv_live);
        lv_new=(ListView)getActivity().findViewById(R.id.lv_new);
        lv_top=(ListView)getActivity().findViewById(R.id.lv_top);
        list_live=new ArrayList<>();
    }

}
