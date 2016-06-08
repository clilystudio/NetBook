package com.clilystudio.netbook.ui;

import android.os.Bundle;

import com.clilystudio.netbook.util.J;

public class UnimportantNotificationActivity extends BaseActivity {
    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903139);
        b("通知");
    }

    public void onPause() {
        super.onPause();
        J.a(this).d();
    }
}

