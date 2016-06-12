package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;

public class HomeTransparentActivity extends Activity {

    protected void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        setContentView(2130903106);
        if (getIntent().getIntExtra("onThemeChange", 0) == 0)
            findViewById(2131493134).setBackgroundResource(2130837644);
        else
            findViewById(2131493134).setBackgroundResource(2130837679);
    }

    protected void onDestroy() {
        super.onDestroy();
    }

    protected void onResume() {
        super.onResume();
        new Handler().postDelayed((Runnable) new Q(this), 500L);
        new Handler().postDelayed((Runnable) new R(this), 1500L);
    }
}
