package com.clilystudio.netbook.ui;

import android.content.Context;
import android.os.Bundle;

import com.jeremyfeinstein.slidingmenu.lib.app.SlidingFragmentActivity;

public class BaseReadSlmActivity extends SlidingFragmentActivity {

    public void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        setBehindContentView(getLayoutInflater().inflate(2130903327, null));
    }

    public void onPause() {
        super.onPause();
        com.umeng.a.b.a((Context) this);
    }

    public void onResume() {
        super.onResume();
        com.umeng.a.b.b((Context) this);
    }
}
