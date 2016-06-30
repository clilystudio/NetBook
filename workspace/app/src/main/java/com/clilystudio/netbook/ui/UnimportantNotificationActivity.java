package com.clilystudio.netbook.ui;

import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.util.J;

public class UnimportantNotificationActivity extends BaseActivity {
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_unimportant_notfif);
        this.b("通知");
    }

    @Override
    public void onPause() {
        super.onPause();
        J.a(this).d();
    }
}
