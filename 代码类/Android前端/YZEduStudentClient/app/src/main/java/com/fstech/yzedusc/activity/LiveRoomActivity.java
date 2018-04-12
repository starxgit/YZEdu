package com.fstech.yzedusc.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.TabHost;

import com.fstech.yzedusc.R;
import com.fstech.yzedusc.bean.LiveRoomBean;

import fm.jiecao.jcvideoplayer_lib.JCVideoPlayer;
import fm.jiecao.jcvideoplayer_lib.JCVideoPlayerStandard;

/**
 * Created by shaoxin on 18-4-12.
 * 直播间的主界面
 */

public class LiveRoomActivity extends AppCompatActivity {
    private JCVideoPlayerStandard player;
    private LiveRoomBean lb;
    private TabHost tabhost;

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_live_room);
        initView();
        initData();
    }

    private void initView() {
        player = (JCVideoPlayerStandard) findViewById(R.id.player_video);
        tabhost = (TabHost) findViewById(R.id.task_tab);
        tabhost.setup();
        //创建Tab标签
        tabhost.addTab(tabhost.newTabSpec("one").setIndicator("讨论").setContent(R.id.re_disscuss));
        tabhost.addTab(tabhost.newTabSpec("two").setIndicator("总览").setContent(R.id.ll_detail));
    }

    private void initData() {
        Intent intent = getIntent();
        lb = (LiveRoomBean) intent.getSerializableExtra("lb");
        String url = "rtmp://22280.liveplay.myqcloud.com/live/22280_" + lb.getLive_room_number() + "362d11e892905cb9018cf0d4?bizid=22280";
        Log.e("lburl", url);
//        String url = "rtmp://22280.liveplay.myqcloud.com/live/22280_9600f698362d11e892905cb9018cf0d4?bizid=22280";
        player.setUp(url, JCVideoPlayer.SCREEN_LAYOUT_LIST, "");
    }

    /*
    * 返回上一级
    * xml布局文件里面调用
    * */
    public void back(View view) {
        finish();
    }
}
