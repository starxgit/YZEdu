package com.fstech.yzedusc.fragment;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ScrollView;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.activity.CourseIntroduce;
import com.fstech.yzedusc.adapter.InformationListAdapter;
import com.fstech.yzedusc.bean.InformationBean;
import com.fstech.yzedusc.view.MyListView;
import com.oragee.banners.BannerView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by shaoxin on 18-3-25.
 * 主页Fragment
 */

public class MainFragment extends Fragment {
    // 定义UI对象
    private BannerView vp_banner;
    private int[] imgs;     //存放banner图片
    private List<View> viewList;
    private MyListView lv_information;
    private InformationListAdapter adapter;
    private List<InformationBean> listItems_information;
    private ScrollView sv_main;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        return inflater.inflate(R.layout.fragment_main, container, false);
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        initView();
        initData();
        setBanner();
    }

    /*
    * 初始化视图
    * 无参数
    * 无返回
    * */
    private void initView() {
        vp_banner = (BannerView) getActivity().findViewById(R.id.vp_banner);
        viewList = new ArrayList<View>();
        lv_information = (MyListView) getActivity().findViewById(R.id.lv_information);
        sv_main = (ScrollView) getActivity().findViewById(R.id.sv_main);
        listItems_information = new ArrayList<InformationBean>();
        adapter = new InformationListAdapter(getActivity(), listItems_information);
        lv_information.setAdapter(adapter);
    }

    /*
    * 初始化数据
    * 无参数
    * 无返回
    * */
    private void initData() {
        // TODO 初始化banner 及咨询相关的数据
        imgs = new int[]{R.drawable.makalong, R.drawable.springmvc, R.drawable.androidkaifa, R.drawable.html5};
        for (int i = 1; i < 10; i++) {
            int a = (int) (Math.random() * 3);
            String img = null;
            if (a > 1) img = "a";
            InformationBean ib = new InformationBean(0, "资讯标题" + i, "这是咨询内容这是咨询内容这是咨询内容这是咨询内容这是咨询内容" +
                    "是咨询内容这是咨询内容这是咨询内容这是咨询内容这是咨询内容", "2018-03-" + i, img);
            listItems_information.add(ib);
        }
//        adapter.notifyDataSetChanged();   // 好像不加这句也能完成数据加载
        lv_information.measure(0, 0);
    }

    /*
    * 配置轮播图
    * 无参数
    * 无返回
    * */
    private void setBanner() {
        for (int i = 0; i < imgs.length; i++) {
            ImageView image = new ImageView(getActivity());
            final String z = i + "";
            image.setLayoutParams(new ViewGroup.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
            //设置显示格式
            image.setScaleType(ImageView.ScaleType.CENTER_CROP);
            image.setImageResource(imgs[i]);
            image.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    // TODO 点击banner后的事件
                    Intent intent0 = new Intent(getActivity(), CourseIntroduce.class);
                    startActivity(intent0);
                }
            });
            viewList.add(image);
        }
        vp_banner.startLoop(true);
        vp_banner.setViewList(viewList);
    }
}
