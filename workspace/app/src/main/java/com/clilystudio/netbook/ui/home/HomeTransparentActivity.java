package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;

public class HomeTransparentActivity extends Activity {
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903106);
        if (this.getIntent().getIntExtra("onThemeChange", 0) == 0) {
            this.findViewById(2131493134).setBackgroundResource(2130837644);
            return;
        }
        this.findViewById(2131493134).setBackgroundResource(2130837679);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override
    protected void onResume() {
        super.onResume();
        new Handler().postDelayed(new Q(this), 500);
        new Handler().postDelayed(new R(this), 1500);
    }
}
