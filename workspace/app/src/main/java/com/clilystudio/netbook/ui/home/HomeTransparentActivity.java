package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;

public class HomeTransparentActivity extends Activity {
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_home_transparent);
        if (this.getIntent().getIntExtra("onThemeChange", 0) == 0) {
            this.findViewById(R.id.bg_layout).setBackgroundResource(R.drawable.bg_day_theme);
            return;
        }
        this.findViewById(R.id.bg_layout).setBackgroundResource(R.drawable.bg_night_theme);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override
    protected void onResume() {
        super.onResume();
        new Handler().postDelayed(new Q(this), 500);
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                finish();
                overridePendingTransition(R.anim.shade_alpha_in, R.anim.shade_alpha_out);
            }
        }, 1500);
    }
}
