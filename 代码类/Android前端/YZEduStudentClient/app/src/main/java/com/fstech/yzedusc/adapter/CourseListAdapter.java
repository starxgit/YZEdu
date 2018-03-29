package com.fstech.yzedusc.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.bean.CourseBean;
import com.fstech.yzedusc.bean.LiveRoomBean;
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;

import java.util.List;

/**
 * Created by shaoxin on 18-3-29.
 * 课程列表的适配器
 */

public class CourseListAdapter extends BaseAdapter {

    private Context context;
    private List<CourseBean> listItems;
    private LayoutInflater listContainer;

    public final class ViewHolder {
        public QMUIRadiusImageView iv_course_image;
        public TextView tv_course_name;
        public TextView tv_learn_student;
        public TextView tv_sum_student;
        public TextView tv_course_sum;
        public TextView tv_course_price;
    }

    public CourseListAdapter(Context context, List<CourseBean> listItems) {
        this.context = context;
        listContainer = LayoutInflater.from(context);
        this.listItems = listItems;
    }

    @Override
    public int getCount() {
        return listItems.size();
    }

    @Override
    public Object getItem(int position) {
        return null;
    }

    @Override
    public long getItemId(int position) {
        return 0;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder vh = null;
        if (convertView == null) {
            vh = new ViewHolder();
            convertView = listContainer.inflate(R.layout.item_course_list, null);
            //获得控件对象
            vh.iv_course_image = convertView.findViewById(R.id.item_course_list_iv_image);
            vh.tv_course_name = convertView.findViewById(R.id.item_course_list_tv_name);
            vh.tv_learn_student = convertView.findViewById(R.id.item_course_list_tv_learn_student);
            vh.tv_sum_student = convertView.findViewById(R.id.item_course_list_tv_sum_student);
            vh.tv_course_sum = convertView.findViewById(R.id.item_course_list_tv_sum);
            vh.tv_course_price = convertView.findViewById(R.id.item_course_list_tv_price);
            //设置空间集到convertView
            convertView.setTag(vh);
        } else {
            vh = (ViewHolder) convertView.getTag();
        }

        CourseBean cb = listItems.get(position);
        // TODO 设置内容

        return convertView;
    }

}