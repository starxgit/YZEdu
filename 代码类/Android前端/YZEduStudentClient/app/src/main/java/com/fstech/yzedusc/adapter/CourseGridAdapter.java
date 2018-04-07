package com.fstech.yzedusc.adapter;

import java.util.List;
import java.util.Map;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.fstech.xianke.activity.R;
import com.fstech.xianke.tools.DownloadTools;
import com.fstech.xianke.tools.ShowImgTools;
import com.fstech.xianke.util.ImageUitl;

public class CourseAdapter extends BaseAdapter{
	
	private Context context;
	private List<Map<String,Object>> listItems;
    private LayoutInflater listContainer;
    
    public final class ListItemView{
		public ImageView course_image;
		public TextView course_name;
		public TextView course_time;
		public TextView course_pnum;
	}
    
    public CourseAdapter(Context context,List<Map<String,Object>> listItems) {
    	this.context = context;
        listContainer = LayoutInflater.from(context);
        this.listItems = listItems;
    }
	
	@Override
	public int getCount() {
		return listItems.size();
	}

	@Override
	public Object getItem(int arg0) {
		return null;
	}

	@Override
	public long getItemId(int arg0) {
		return 0;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		ListItemView lv = null;
		if(convertView ==null){
            lv = new ListItemView();
            convertView = listContainer.inflate(R.layout.item_course, null);
            //��ÿؼ�����
            lv.course_image=(ImageView)convertView.findViewById(R.id.course_image);
            lv.course_name=(TextView)convertView.findViewById(R.id.course_name);
            lv.course_time=(TextView)convertView.findViewById(R.id.course_time);
            lv.course_pnum=(TextView)convertView.findViewById(R.id.course_pnum);
           //���ÿռ伯��convertView
            convertView.setTag(lv);
        }else{
            lv = (ListItemView) convertView.getTag();
        }
		
		final String cimg=listItems.get(position).get("course_img").toString();
		ShowImgTools.dAndShow(cimg, lv.course_image);
		String cname=listItems.get(position).get("course_name").toString();
		String ctime=listItems.get(position).get("course_time").toString();
		String cpnum=listItems.get(position).get("course_pnum").toString();
		
		lv.course_name.setText(cname);
		lv.course_time.setText(ctime);
		lv.course_pnum.setText(cpnum);
		
		return convertView;
	}

}
