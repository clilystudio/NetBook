package com.clilystudio.netbook.ui.user;

import android.os.Bundle;

import com.clilystudio.netbook.ui.BaseActivity;

public class MyMessageActivity extends BaseActivity {
    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903115);
        b("我的消息");
    }

    public void onPause() {
        super.onPause();
        am.j(this);
    }
}

