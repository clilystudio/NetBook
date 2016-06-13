package com.clilystudio.netbook.ui;

import android.os.Bundle;

import com.jeremyfeinstein.slidingmenu.lib.app.SlidingFragmentActivity;
import com.umeng.a.b;

public class BaseReadSlmActivity
        extends SlidingFragmentActivity {
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setBehindContentView(this.getLayoutInflater().inflate(2130903327, null));
    }

    @Override
    public void onPause() {
        super.onPause();
        b.a(this);
    }

    @Override
    public void onResume() {
        super.onResume();
        b.b(this);
    }
}
