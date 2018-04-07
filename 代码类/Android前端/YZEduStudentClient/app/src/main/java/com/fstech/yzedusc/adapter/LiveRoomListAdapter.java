package com.fstech.yzedusc.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.bean.LiveRoomBean;

import java.util.List;

/**
 * Created by shaoxin on 18-3-25.
 * 资讯列表的适配器
 */

public class LiveRoomListAdapter extends BaseAdapter {

    private Context context;
    private List<LiveRoomBean> listItems;
    private LayoutInflater listContainer;

    public final class ViewHolder {
        public ImageView iv_image;
        public TextView tv_title;
        public TextView tv_state;
        public TextView tv_room_num;
    }

    public LiveRoomListAdapter(Context context, List<LiveRoomBean> listItems) {
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
            convertView = listContainer.inflate(R.layout.item_live_room, null);
            //获得控件对象
            vh.iv_image = (ImageView) convertView.findViewById(R.id.item_live_iv_image);
            vh.tv_title = (TextView) convertView.findViewById(R.id.item_live_tv_title);
            vh.tv_state = (TextView) convertView.findViewById(R.id.item_live_tv_state);
            vh.tv_room_num = (TextView) convertView.findViewById(R.id.item_live_tv_room_id);
            //设置空间集到convertView
            convertView.setTag(vh);
        } else {
            vh = (ViewHolder) convertView.getTag();
        }

        LiveRoomBean lb = listItems.get(position);
        vh.tv_title.setText(lb.getLive_room_name());
        vh.tv_room_num.setText(lb.getLive_room_number());
        if (lb.getLive_room_state().equals(2)) {
            vh.tv_state.setText("直播中");
        } else if (lb.getLive_room_state().equals("1")) {
            vh.tv_state.setText("已关闭");
        } else if (lb.getLive_room_state().equals("3")) {
            vh.tv_state.setText("已锁定");
        }

        // 设置图片

        return convertView;
    }

}