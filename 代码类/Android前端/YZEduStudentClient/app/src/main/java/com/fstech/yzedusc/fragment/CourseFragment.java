package com.fstech.yzedusc.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ListView;
import android.widget.SearchView;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.activity.CourseClassificationActivity;
import com.fstech.yzedusc.adapter.LiveRoomListAdapter;
import com.fstech.yzedusc.bean.LiveRoomBean;
import com.fstech.yzedusc.view.MyListView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by shaoxin on 18-3-25.
 * 课程界面的Fragment
 */

public class CourseFragment extends Fragment implements View.OnClickListener {
    // 定义UI对象
    private MyListView lv_live;
    private GridView gv_new;
    private GridView gv_top;
    private List<LiveRoomBean> list_live;
    private LiveRoomListAdapter adapter_live;
    private EditText et_search;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_course, container, false);
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
        lv_live = (MyListView) getActivity().findViewById(R.id.lv_live);
        gv_new = (GridView) getActivity().findViewById(R.id.gv_new);
        gv_top = (GridView) getActivity().findViewById(R.id.gv_top);
        et_search = (EditText) getActivity().findViewById(R.id.et_search);
        et_search.setOnClickListener(this);
        list_live = new ArrayList<LiveRoomBean>();
        adapter_live = new LiveRoomListAdapter(getActivity(), list_live);
        lv_live.setAdapter(adapter_live);
        lv_live.measure(0, 0);
    }

    /*
    * 初始化数据
    * 无参数
    * 无返回
    * */
    private void initData() {
        for (int i = 0; i < 3; i++) {
            LiveRoomBean l = new LiveRoomBean();
            list_live.add(l);
        }
        adapter_live.notifyDataSetChanged();
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
