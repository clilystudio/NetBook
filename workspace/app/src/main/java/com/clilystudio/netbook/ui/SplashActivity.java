package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.ui.home.HomeActivity;

public class SplashActivity extends Activity {
    private static final int DELAY_MILLIS = 1200;
    private boolean mIsStop = false;

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.splash);
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                if (!mIsStop) {
                    Intent intent = new Intent(SplashActivity.this, HomeActivity.class);
                    startActivity(intent);
                    finish();
                }
            }
        }, DELAY_MILLIS);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        this.mIsStop = true;
    }
}
