package com.clilystudio.netbook.ui.user;

import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.util.CommonUtil;

public class MyMessageActivity extends BaseActivity {
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_my_message);
        this.b("我的消息");
    }

    @Override
    public void onPause() {
        super.onPause();
        CommonUtil.putStringPref(this, "pref_new_imp_notif_time", String.valueOf(System.currentTimeMillis()));
    }
}
