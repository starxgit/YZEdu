package com.fstech.yzedusc.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.bean.InformationBean;

import java.util.List;
import java.util.Map;

/**
 * Created by shaoxin on 18-3-25.
 * 资讯列表的适配器
 */

public class InformationListAdapter extends BaseAdapter {

    private Context context;
    private List<InformationBean> listItems;
    private LayoutInflater listContainer;

    public final class ViewHolder {
        public ImageView iv_information_image;
        public TextView tv_infomation_title;
        public TextView getTv_infomation_date;
        public TextView getTv_infomation_content;
    }

    public InformationListAdapter(Context context, List<InformationBean> listItems) {
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
            convertView = listContainer.inflate(R.layout.item_information, null);
            //获得控件对象
            vh.iv_information_image = (ImageView) convertView.findViewById(R.id.iv_information_image);
            vh.tv_infomation_title = (TextView) convertView.findViewById(R.id.tv_information_title);
            vh.getTv_infomation_date = (TextView) convertView.findViewById(R.id.tv_information_date);
            vh.getTv_infomation_content = (TextView) convertView.findViewById(R.id.tv_information_content);
            //设置空间集到convertView
            convertView.setTag(vh);
        } else {
            vh = (ViewHolder) convertView.getTag();
        }

        InformationBean info = listItems.get(position);

        String information_image = info.getInformation_image();
        String information_title = info.getInformation_title();
        String information_date = info.getInformation_date();
        String information_content = info.getInformation_content();

        vh.tv_infomation_title.setText(information_title);
        vh.getTv_infomation_date.setText(information_date);
        vh.getTv_infomation_content.setText(information_content);
        if (information_image==null) {
            vh.iv_information_image.setVisibility(View.GONE);
        } else {
            vh.iv_information_image.setVisibility(View.VISIBLE);
        }

        return convertView;
    }

}