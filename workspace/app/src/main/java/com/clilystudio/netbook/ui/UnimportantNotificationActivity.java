package com.clilystudio.netbook.ui;

import android.os.Bundle;

import com.clilystudio.netbook.util.J;

public class UnimportantNotificationActivity extends BaseActivity {
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_unimportant_notfif);
        this.b("\u901a\u77e5");
    }

    @Override
    public void onPause() {
        super.onPause();
        J.a(this).d();
    }
}
