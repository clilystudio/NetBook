package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.util.TempUtil;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.ui.home.HomeActivity;

import java.util.Calendar;

public class SplashActivity extends Activity {
    private Handler mHandler = new Handler();
    private boolean e = false;
    private boolean f = false;

    public final void d() {
        Intent intent;
        if (this.e) {
            return;
        }
        if (!CommonUtil.isLogined()) {
            intent = new Intent(this, IntroActivity.class);
        } else {
            intent = new Intent(this, HomeActivity.class);
        }
        this.startActivity(intent);
        this.finish();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.splash);
        this.mHandler.postDelayed(new Runnable() {
            @Override
            public void run() {
                SplashActivity.this.d();
            }
        }, 1200);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        this.e = true;
    }

    @Override
    protected void onRestart() {
        super.onRestart();
        if (!this.f) return;
        if (this.hasWindowFocus() || this.f) {
            this.d();
            return;
        }
        this.f = true;
    }

    @Override
    public void onResume() {
        int n;
        String string;
        Calendar calendar;
        super.onResume();
        if (!CommonUtil.isLogined() || (n = 10000 * (calendar = Calendar.getInstance()).get(Calendar.YEAR) + 100 * calendar.get(Calendar.MONTH) + calendar.get(Calendar.DATE)) <= TempUtil.getIntPref(this, "KEY_OPEN_TIME", 0) || (string = CommonUtil.getAccount().getUser().getGender()) == null) {
            return;
        }
        TempUtil.b(this, "KEY_OPEN_TIME", n);
    }
}
