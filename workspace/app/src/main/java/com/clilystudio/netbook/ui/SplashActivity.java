package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.activeandroid.ActiveAndroid;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.model.SplashAdvert;
import com.clilystudio.netbook.ui.home.HomeActivity;
import com.clilystudio.netbook.util.e;
import com.xiaomi.mistatistic.sdk.MiStatInterfaceImpl;

import java.util.Calendar;

public class SplashActivity extends Activity {
    private static final String a = SplashActivity.class.getSimpleName();
    private int b = 1200;
    private Handler c = new Handler();
    private cl d;
    private boolean e = false;
    private boolean f = false;

    static /* synthetic */ void a(SplashActivity splashActivity, String string) {
        // 首页推广
    }

    static /* synthetic */ boolean a(SplashActivity splashActivity) {
        return splashActivity.e;
    }

    static /* synthetic */ boolean a(SplashActivity splashActivity, boolean bl) {
        splashActivity.e = true;
        return true;
    }

    static /* synthetic */ String e() {
        return a;
    }

    private void f() {
        this.a(this.b);
    }

    private void g() {
        this.b();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private boolean h() {
        boolean bl;
        e e2 = e.a((Context) this.getApplicationContext());
        final SplashAdvert splashAdvert = e2.a();
        if (splashAdvert != null) {
            try {
                bl = true;
            } catch (Exception var4_7) {
                var4_7.printStackTrace();
                bl = false;
            }
            this.b = 3000;
            Bitmap bitmap = splashAdvert.getBitmap();
            final String string = splashAdvert.getSplashRecord().link;
            this.findViewById(R.id.splash_ad_container).setVisibility(View.VISIBLE);
            this.findViewById(R.id.splash_bottom).setVisibility(View.GONE);
            this.i();
            com.clilystudio.netbook.hpay100.a.a.m(this, splashAdvert.getSplashRecord().splashId);
            this.f();
        } else {
            bl = false;
        }
        e2.b();
        return bl;
    }

    private void i() {
        this.findViewById(R.id.splash_ad_skip).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                SplashActivity.this.d();
                com.clilystudio.netbook.hpay100.a.a.o(SplashActivity.this, "SKIP");
            }
        });
    }

    public final void a() {
        if (this.d != null) {
            Log.i(a, "cancelAutoClose  ");
            this.d.a();
            this.d = null;
        }
    }

    public final void a(long l2) {
        final cl cl2 = new cl(this);
        final long finalL = l2;
        if (l2 <= 0) {
            l2 = 0;
        }
        this.c.postDelayed(new Runnable() {
            @Override
            public void run() {
                cl2.a(finalL);
            }
        }, l2);
        this.d = cl2;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void b() {
        ImageView imageView = (ImageView) this.findViewById(R.id.splash_bottom);
        this.b = !am.o(this) && imageView.getDrawable() != null ? 1200 : 0;
        this.f();
        com.clilystudio.netbook.hpay100.a.a.m(this, null);
    }

    public final void c() {
        this.i();
        this.findViewById(R.id.splash_ad_container).setVisibility(View.VISIBLE);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void d() {
        Intent intent;
        if (this.e) {
            return;
        }
        if (!am.g() && !am.q(this)) {
            intent = new Intent(this, IntroActivity.class);
        } else {
            intent = new Intent(this, HomeActivity.class);
        }
        this.startActivity(intent);
        this.finish();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.splash);
        com.clilystudio.netbook.hpay100.a.a.a(this.getWindow().getDecorView());
        ActiveAndroid.initialize(this);
        if (am.q(this)) {
            double d2;
            float f2 = com.clilystudio.netbook.hpay100.a.a.v(this, "rate_zssq_splash_ad");
            if ((double) f2 <= (d2 = Math.random()) || !this.h()) {
                this.g();
            }
        } else {
            this.b();
        }
        if (am.g()) {
            MiStatInterfaceImpl.recordCountEvent("user_register", "YES");
            return;
        }
        MiStatInterfaceImpl.recordCountEvent("user_register", "NO");
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

    /*
     * Enabled aggressive block sorting
     */
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
