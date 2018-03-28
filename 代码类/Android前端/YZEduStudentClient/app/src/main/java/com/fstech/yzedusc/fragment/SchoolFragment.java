package com.fstech.yzedusc.fragment;

import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TabHost;
import android.widget.TextView;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.adapter.AnnouncementListAdapter;
import com.fstech.yzedusc.adapter.InformationListAdapter;
import com.fstech.yzedusc.bean.AnnouncementBean;
import com.fstech.yzedusc.bean.InformationBean;
import com.fstech.yzedusc.view.MyListView;
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by shaoxin on 18-3-25.
 * 院校界面的Fragment
 */

public class SchoolFragment extends Fragment {
    // 定义UI对象
    private TabHost tabhost;
    private QMUIRadiusImageView iv_school_image;
    private TextView tv_school_name;
    private RelativeLayout re_school_background;
    private MyListView lv_information;
    private MyListView lv_announcement;
    private MyListView lv_circle;
    private InformationListAdapter information_adapter;
    private List<InformationBean> listItems_information;
    private AnnouncementListAdapter announcement_adapter;
    private List<AnnouncementBean> listItems_announcement;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_school, container, false);
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
        iv_school_image=(QMUIRadiusImageView)getActivity().findViewById(R.id.iv_school_image);
        tv_school_name=(TextView)getActivity().findViewById(R.id.tv_school_name);
        tabhost = (TabHost) getActivity().findViewById(R.id.main_school_tab);
        lv_information=(MyListView)getActivity().findViewById(R.id.lv_school_information);
        lv_announcement=(MyListView)getActivity().findViewById(R.id.lv_school_announcement);
        lv_circle=(MyListView)getActivity().findViewById(R.id.lv_school_circle);
        re_school_background=(RelativeLayout)getActivity().findViewById(R.id.re_school_background);
        //调用 TabHost.setup()
        tabhost.setup();
        //创建Tab标签
        tabhost.addTab(tabhost.newTabSpec("one").setIndicator("资讯").setContent(R.id.ll_school_information));
        tabhost.addTab(tabhost.newTabSpec("two").setIndicator("公告").setContent(R.id.ll_school_announcement));
        tabhost.addTab(tabhost.newTabSpec("three").setIndicator("学友圈").setContent(R.id.ll_school_circle));

        listItems_information = new ArrayList<InformationBean>();
        information_adapter = new InformationListAdapter(getActivity(), listItems_information);
        lv_information.setAdapter(information_adapter);

        listItems_announcement = new ArrayList<AnnouncementBean>();
        announcement_adapter=new AnnouncementListAdapter(getActivity(),listItems_announcement);
        lv_announcement.setAdapter(announcement_adapter);
    }

    /*
    * 初始化数据
    * 无参数
    * 无返回
    * */
    private void initData() {
        tv_school_name.setText("这是个测试院校");

        for (int i = 1; i < 8; i++) {
            int a = (int) (Math.random() * 3);
            String img = null;
            if (a > 1) img = "a";
            InformationBean ib=new InformationBean(i,"资讯标题" + i,"这是院校咨询内容这是咨询内容这是院校咨询内容这是咨询内容这是咨询内容" +
                    "是咨询内容这是咨询内容这是咨询内容这是咨询内容这是咨询内容","2018-03-"+i,img);
            listItems_information.add(ib);

            AnnouncementBean ab = new AnnouncementBean(i,"公告标题"+i,"公告内容公告内容公告内容公告内容公告内容公告内容"+i,"0",
                    "2018-03-"+i);
            listItems_announcement.add(ab);
        }
//        information_adapter.notifyDataSetChanged();
//        announcement_adapter.notifyDataSetChanged();
    }

}
