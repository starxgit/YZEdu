package com.fstech.yzedusc.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.adapter.InformationListAdapter;
import com.fstech.yzedusc.util.ListViewHeight;
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
    private int[] imgs;
    private List<View> viewList;
    private ListView lv_information;
    private InformationListAdapter adapter;
    private List<Map<String, Object>> listItems_information;

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
        lv_information = (ListView) getActivity().findViewById(R.id.lv_information);
        listItems_information = new ArrayList<Map<String, Object>>();
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
        for (int i = 1; i < 15; i++) {
            int a = (int) (Math.random() * 3);
            String img = "0";
            if (a > 1) img = "a";
            Map<String, Object> listItem = new HashMap<String, Object>();
            listItem.put("information_image", img);
            listItem.put("information_title", "资讯标题" + i);
            listItem.put("information_date", "2018-03-" + i);
            listItems_information.add(listItem);
        }
        adapter.notifyDataSetChanged();
        ListViewHeight.setListViewHeightBasedOnChildren(adapter, lv_information);
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
                }
            });
            viewList.add(image);
        }
        vp_banner.startLoop(true);
        vp_banner.setViewList(viewList);
    }
}
