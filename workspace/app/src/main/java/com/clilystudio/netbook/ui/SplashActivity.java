package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;

import com.activeandroid.ActiveAndroid;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.ui.home.HomeActivity;
import com.xiaomi.mistatistic.sdk.MiStatInterfaceImpl;

import java.util.Calendar;

public class SplashActivity extends Activity {
    private Handler c = new Handler();
    private boolean e = false;
    private boolean f = false;

    public final void a(long l2) {
        this.c.postDelayed(new Runnable() {
            @Override
            public void run() {
                SplashActivity.this.d();
            }
        }, l2);
    }

    public final void c() {
        this.findViewById(R.id.splash_ad_skip).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                SplashActivity.this.d();
                com.clilystudio.netbook.hpay100.a.a.o(SplashActivity.this, "SKIP");
            }
        });
        this.findViewById(R.id.splash_ad_container).setVisibility(View.VISIBLE);
    }

    public final void d() {
        Intent intent;
        if (this.e) {
            return;
        }
        if (!am.g()) {
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
        com.clilystudio.netbook.hpay100.a.a.a(this.getWindow().getDecorView());
        ActiveAndroid.initialize(this);
        this.a(1200);
        if (am.g()) {
            MiStatInterfaceImpl.recordCountEvent("user_register", "YES");
        } else {
            MiStatInterfaceImpl.recordCountEvent("user_register", "NO");
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        this.e = true;
    }

    @Override
    public void onPause() {
        super.onPause();
        MiStatInterfaceImpl.recordPageEnd();
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
        MiStatInterfaceImpl.recordPageStart(this, null);
        MiStatInterfaceImpl.enableLog();
        if (!am.g() || (n = 10000 * (calendar = Calendar.getInstance()).get(Calendar.YEAR) + 100 * calendar.get(Calendar.MONTH) + calendar.get(Calendar.DATE)) <= com.clilystudio.netbook.hpay100.a.a.a(this, "KEY_OPEN_TIME", 0) || (string = am.e().getUser().getGender()) == null) {
            return;
        }
        if (string.equals("male")) {
            MiStatInterfaceImpl.recordCountEvent("user_gender", "male");
        } else if (string.equals("female")) {
            MiStatInterfaceImpl.recordCountEvent("user_gender", "female");
        }
        com.clilystudio.netbook.hpay100.a.a.b(this, "KEY_OPEN_TIME", n);
    }
}
