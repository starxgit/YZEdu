package com.fstech.yzedusc.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.bean.ClassificationBean;
import com.fstech.yzedusc.bean.LessonBean;
import com.fstech.yzedusc.util.CacheActivityUtil;
import com.fstech.yzedusc.util.CallBackUtil;
import com.fstech.yzedusc.util.Constant;
import com.fstech.yzedusc.util.DownloadTools;
import com.fstech.yzedusc.util.ImageUitl;
import com.fstech.yzedusc.util.OkhttpUtil;
import com.fstech.yzedusc.util.ThreadUtil;
import com.fstech.yzedusc.view.ClearEditText;
import com.fstech.yzedusc.view.MyListView;
import com.qmuiteam.qmui.util.QMUIDisplayHelper;
import com.qmuiteam.qmui.widget.QMUIFloatLayout;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import okhttp3.Call;

/**
 * Created by shaoxin on 18-3-28.
 * 课程分类的主界面
 */

public class CourseClassificationActivity extends AppCompatActivity implements View.OnClickListener {
    private TextView tv_search;
    private ClearEditText et_search;
    private MyListView lv_cfa;
    private List<Map<String, Object>> listItems_cfa;
    private List<ClassificationBean> listItems_cb;
    private List<ClassificationBean> listItems_temp;
    private SimpleAdapter adapter_cfa;
    private QMUIFloatLayout fl_content;
    private Handler handler;
    private int[] draws;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_course_classification);
        initView();
        listItems_cb = getClassfivations(-1, 0);
        handler = new Handler() {
            @Override
            public void handleMessage(Message msg) {
                switch (msg.what) {
                    // 列表数据加载完成
                    case 0:
                        initData();
                        break;
                    // 每个子列表加载完成
                    case 1:
                        setFloatContent();
                        break;

                    default:
                        break;
                }
            }
        };
    }

    /*
    * 初始化视图
    * 无参数
    * 无返回
    * */
    private void initView() {
        CacheActivityUtil.addActivity(CourseClassificationActivity.this);
        tv_search = (TextView) findViewById(R.id.tv_search);
        tv_search.setOnClickListener(this);
        et_search = (ClearEditText) findViewById(R.id.et_search);
        lv_cfa = (MyListView) findViewById(R.id.lv_classification_own);
        fl_content = (QMUIFloatLayout) findViewById(R.id.fl_content);
        listItems_cfa = new ArrayList<Map<String, Object>>();
        listItems_cb = new ArrayList<ClassificationBean>();
        listItems_temp = new ArrayList<ClassificationBean>();
        adapter_cfa = new SimpleAdapter(CourseClassificationActivity.this, listItems_cfa,
                R.layout.item_classification, new String[]{"cfa"}, new int[]{R.id.tv_text});
        lv_cfa.setAdapter(adapter_cfa);
        lv_cfa.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @SuppressLint("ResourceAsColor")
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                fl_content.removeAllViews();
                listItems_temp = getClassfivations(listItems_cb.get(i).getClassification_id(), 1);
            }
        });
        draws = new int[]{R.drawable.btn_blue_bg, R.drawable.btn_pink_bg, R.drawable.btn_yellow_bg,
                R.drawable.btn_green_bg, R.drawable.btn_qing_bg, R.drawable.btn_red_bg};

    }

    /*
    * 初始化数据
    * 无参数
    * 无返回
    * */
    private void initData() {
        Log.e("size", listItems_cb.size() + "");
        for (int i = 0; i < listItems_cb.size(); i++) {
            Map<String, Object> map = new HashMap<>();
            map.put("cfa", listItems_cb.get(i).getClassification_name());
            listItems_cfa.add(map);
        }
        adapter_cfa.notifyDataSetChanged();
        if (listItems_cb.size() > 0)
            listItems_temp = getClassfivations(listItems_cb.get(0).getClassification_id(), 1);

    }

    /*
    * 获取FloatLayout的内容
    * 传入所属分类
    * 无返回
    * */
    private void setFloatContent() {
//        Log.e("list",listItems_temp.toString());
        for (int i = 0; i < listItems_temp.size(); i++) {
            TextView textView = new TextView(CourseClassificationActivity.this);
            int textViewPadding = QMUIDisplayHelper.dp2px(CourseClassificationActivity.this, 15);
            textView.setPadding(textViewPadding, textViewPadding, textViewPadding, textViewPadding);
            textView.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
            textView.setTextColor(ContextCompat.getColor(CourseClassificationActivity.this, R.color.Write));
            textView.setGravity(Gravity.CENTER);
            textView.setText(listItems_temp.get(i).getClassification_name());
            Drawable drawable = getResources().getDrawable(draws[i % draws.length]);
            textView.setBackground(drawable);
            int textViewSize = QMUIDisplayHelper.dpToPx(60);//将dp转化为px
            //设置textview在屏幕中所在位置
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(textViewSize, textViewSize);
            fl_content.addView(textView, layoutParams);//将textview添加到floatLayout布局中
            fl_content.setGravity(Gravity.LEFT);//floatLayout中子节点左对齐
            final int finalI = i;
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    String cfa_id = listItems_temp.get(finalI).getClassification_own() + "";
                    Intent intent = new Intent(CourseClassificationActivity.this, CourseCfaResultActivity.class);
                    intent.putExtra("cfa_id", cfa_id);
                    startActivity(intent);
                }
            });
        }
    }

    /*
    * 获取分类列表的方法
    *  @param cfa_own , 返回消息
     *  返回分类对象的列表
    * */
    private List<ClassificationBean> getClassfivations(int cfa_own, final int msg) {
        final List<ClassificationBean> list = new ArrayList<ClassificationBean>();
        String url = Constant.BASE_DB_URL + "Classifications";
        Map<String, String> map = new HashMap<String, String>();
        map.put("classification_own", cfa_own + "");
        OkhttpUtil.okHttpGet(url, map, new CallBackUtil.CallBackString() {
            @Override
            public void onFailure(Call call, Exception e) {
                Log.e("fail", "okhttp请求失败");
            }

            @Override
            public void onResponse(String response) {
                Log.e("response", response);
                try {
                    JSONObject jsonObject = new JSONObject(response);
                    int result_code = jsonObject.getInt("result_code");
                    if (result_code == 0) {
                        JSONArray jsonArray = jsonObject.getJSONArray("return_data");
                        ObjectMapper objectMapper = new ObjectMapper();
                        for (int i = 0; i < jsonArray.length(); i++) {
                            JSONObject jobj = jsonArray.getJSONObject(i);
                            ClassificationBean cb = objectMapper.readValue(jobj.toString(), ClassificationBean.class);
                            list.add(cb);
                        }
                        handler.sendMessage(handler.obtainMessage(msg));
                    } else {
                        String message = jsonObject.getString("message");
                        Toast.makeText(CourseClassificationActivity.this, message, Toast.LENGTH_SHORT).show();
                    }
                } catch (JSONException e) {
                    Log.e("json", e.getLocalizedMessage());
                    e.printStackTrace();
                } catch (JsonParseException e) {
                    Log.e("json", e.getLocalizedMessage());
                    e.printStackTrace();
                } catch (JsonMappingException e) {
                    Log.e("Mapping", e.getLocalizedMessage());
                    e.printStackTrace();
                } catch (IOException e) {
                    Log.e("IO", e.getLocalizedMessage());
                    e.printStackTrace();
                }
            }
        });
        return list;
    }

    /*
    * 返回上一级
    * xml布局文件里面调用
    * */
    public void back(View view) {
        finish();
    }

    @Override
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.tv_search:
                doSearch();
                hideKeyBoard();
                break;
            default:
                break;
        }
    }

    /*
    * 开始搜索课程的方法
    * */
    private void doSearch() {
        String keyword = et_search.getText().toString();
        if (!keyword.equals("")) {
            Intent intent = new Intent(CourseClassificationActivity.this, CourseSearchResultActivity.class);
            intent.putExtra("keyword", keyword);
            startActivity(intent);
        }
    }

    /*
    * 隐藏键盘的方法
    * */
    private void hideKeyBoard() {
        View view = getWindow().peekDecorView();
        if (view != null) {
            InputMethodManager inputmanger = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
            inputmanger.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

}
