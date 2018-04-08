package com.fstech.yzedusc.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.adapter.CourseListAdapter;
import com.fstech.yzedusc.adapter.TabAdapter;
import com.fstech.yzedusc.bean.ClassificationBean;
import com.fstech.yzedusc.bean.CourseBean;
import com.fstech.yzedusc.util.CacheActivityUtil;
import com.fstech.yzedusc.util.CallBackUtil;
import com.fstech.yzedusc.util.Constant;
import com.fstech.yzedusc.util.OkhttpUtil;
import com.fstech.yzedusc.view.HorizontalListView;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.scwang.smartrefresh.layout.footer.ClassicsFooter;
import com.scwang.smartrefresh.layout.header.ClassicsHeader;

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
 * Created by shaoxin on 18-3-29.
 * 课程分类结果的主界面
 */

public class CourseCfaResultActivity extends AppCompatActivity implements View.OnClickListener {
    private ListView lv_cfa_course;
    private CourseListAdapter adapter_course;
    private List<CourseBean> listItems_course;
    private SmartRefreshLayout smartRefreshLayout;
    private List<ClassificationBean> listItems_cb;
    private HorizontalListView lv_cfa;
    private int cfa_id;
    private TabAdapter adapter_cfa;
    private Handler handler;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_course_cfa_result);
        initView();
        listItems_cb = getClassfivations(cfa_id, 0);
        handler = new Handler() {
            @Override
            public void handleMessage(Message msg) {
                switch (msg.what) {
                    // 分类列表数据加载完成
                    case 0:
                        initData();
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
        CacheActivityUtil.addActivity(CourseCfaResultActivity.this);
        Intent intent = getIntent();
        cfa_id = Integer.parseInt(intent.getStringExtra("cfa_id"));
//        Log.e("cfa_id",cfa_id+"");
        lv_cfa_course = (ListView) findViewById(R.id.lv_cfa_course);
        lv_cfa = (HorizontalListView) findViewById(R.id.lv_cfa);
        smartRefreshLayout = (SmartRefreshLayout) findViewById(R.id.smart_refresh);
        smartRefreshLayout.setRefreshHeader(new ClassicsHeader(this));
        smartRefreshLayout.setRefreshFooter(new ClassicsFooter(this));

        listItems_course = new ArrayList<CourseBean>();
        adapter_course = new CourseListAdapter(CourseCfaResultActivity.this, listItems_course);
        lv_cfa_course.setAdapter(adapter_course);
        listItems_cb = new ArrayList<>();

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
                        Toast.makeText(CourseCfaResultActivity.this, message, Toast.LENGTH_SHORT).show();
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
    * 初始化数据
    * 无参数
    * 无返回
    * */
    private void initData() {
        adapter_cfa = new TabAdapter(CourseCfaResultActivity.this, listItems_cb);
        lv_cfa.setAdapter(adapter_cfa);
        lv_cfa.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                adapter_cfa.changeSelected(i);
            }
        });
        for (int i = 0; i < 10; i++) {
            CourseBean cb = new CourseBean();
            listItems_course.add(cb);
        }
        adapter_course.notifyDataSetChanged();
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
            default:
                break;
        }
    }

    /*
    * 重新搜索的方法
    * */
    private void reSearch() {
        // TODO 刷新列表搜索
    }

}
