package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.R;

public class HomeTransparentActivity extends Activity {
    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_home_transparent);
        if (getIntent().getIntExtra("onThemeChange", 0) == 0) {
            findViewById(R.id.bg_layout).setBackgroundResource(R.drawable.bg_day_theme);
        } else {
            findViewById(R.id.bg_layout).setBackgroundResource(R.drawable.bg_night_theme);
        }
    }

    @Override
    protected void onResume() {
        super.onResume();
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                Intent intent = new Intent();
                intent.setAction(MyApplication.ACTION_THEME_CHANGED);
                sendBroadcast(intent);
            }
        }, 500);
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                finish();
                overridePendingTransition(R.anim.shade_alpha_in, R.anim.shade_alpha_out);
            }
        }, 1500);
    }
}
