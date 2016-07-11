package com.clilystudio.netbook.ui;

import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.jeremyfeinstein.slidingmenu.lib.app.SlidingFragmentActivity;

public class BaseReadSlmActivity extends SlidingFragmentActivity {
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setBehindContentView(R.layout.menu_frame);
    }
}
