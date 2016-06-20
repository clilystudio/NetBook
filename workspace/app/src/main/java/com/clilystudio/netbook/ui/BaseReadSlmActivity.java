package com.clilystudio.netbook.ui;

import android.os.Bundle;

import com.clilystudio.netbook.R;
import com.jeremyfeinstein.slidingmenu.lib.app.SlidingFragmentActivity;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

public class BaseReadSlmActivity extends SlidingFragmentActivity {
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setBehindContentView(R.layout.menu_frame);
    }

    @Override
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
    }

    @Override
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart(this, this.getClass().getSimpleName());
    }
}
