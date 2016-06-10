package com.clilystudio.netbook.ui;

import android.os.Bundle;

import com.jeremyfeinstein.slidingmenu.lib.app.SlidingFragmentActivity;
import com.clilystudio.netbook.umeng.a_Pack.b;

public class BaseReadSlmActivity extends SlidingFragmentActivity {
    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setBehindContentView(getLayoutInflater().inflate(2130903327, null));
    }

    public void onPause() {
        super.onPause();
        b.a(this);
    }

    public void onResume() {
        super.onResume();
        b.b(this);
    }
}

