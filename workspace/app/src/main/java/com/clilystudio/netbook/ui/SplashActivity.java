package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.am;
import android.util.Log;
import android.view.View;
import android.view.View$OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;

import com.activeandroid.ActiveAndroid;
import com.clilystudio.netbook.model.SplashAdvert;
import com.clilystudio.netbook.util.UmengGameTracer;
import com.clilystudio.netbook.util.UmengGameTracer$From;
import com.clilystudio.netbook.util.adutil.AdSplashImp;
import com.clilystudio.netbook.util.adutil.l;
import com.clilystudio.netbook.widget.AdContainerLayout;

import java.util.Calendar;

public class SplashActivity extends Activity {
// Error: Internal #201: 
// The following method may not be correct.

    private static final String a = null;

    static {
    }

    private cl d;
    private AdContainerLayout g;
    private int b = 1200;
    private Handler c = new Handler();
    private boolean e = false;
    private boolean f = false;

    static void a(SplashActivity SplashActivity1, String String2) {
        if (String2 != null) {
            Intent Intent3 = AdWebViewActivity.a((Context) SplashActivity1, "\u63A8\u5E7F", String2);

            Intent3.putExtra("from_splash", true);
            SplashActivity1.startActivity(Intent3);
            SplashActivity1.finish();
        }
    }

    static boolean a(SplashActivity SplashActivity1) {
        return SplashActivity1.e;
    }

    static boolean a(SplashActivity SplashActivity1, boolean boolean2) {
        SplashActivity1.e = true;
        return true;
    }

    static String e() {
        return a;
    }

    private void f() {
        a((long) b);
    }

    private void g() {
        if ("1".equals(com.clilystudio.netbook.umeng.a.b.b((Context) this, "splash_ad_third_enable"))) {
            AdSplashImp AdSplashImp1;

            findViewById(2131493995).setVisibility(8);
            a(3000L);
            AdSplashImp1 = new AdSplashImp(this);
            if (am.i("com.qq.e.ads.nativ.NativeAD"))
                ((com.clilystudio.netbook.util.adutil.a) new l(AdSplashImp1)).a((View) g);
            else if (am.i("com.baidu.mobads.SplashAd"))
                ((com.clilystudio.netbook.util.adutil.a) new com.clilystudio.netbook.util.adutil.g(AdSplashImp1)).a((View) g);
            else
                b();
        } else
            b();
    }

    private boolean h() {
        com.clilystudio.netbook.util.e e1 = com.clilystudio.netbook.util.e.a(getApplicationContext());
        SplashAdvert SplashAdvert2 = e1.a();
        boolean boolean3;

        if (SplashAdvert2 != null) {
            Bitmap Bitmap5;
            String String6;
            ImageView ImageView7;

            try {
                new UmengGameTracer((Context) this, UmengGameTracer$From.Splash).a(SplashAdvert2.getSplashRecord().splashId);
            } catch (Exception Exception4) {
                Exception4.printStackTrace();
                boolean3 = false;
            }
            b = 3000;
            Bitmap5 = SplashAdvert2.getBitmap();
            String6 = SplashAdvert2.getSplashRecord().link;
            findViewById(2131493263).setVisibility(0);
            findViewById(2131493995).setVisibility(8);
            ImageView7 = (ImageView) findViewById(2131493264);
            ImageView7.setImageBitmap(Bitmap5);
            ImageView7.setOnClickListener((View$OnClickListener) new cj(this, SplashAdvert2, String6));
            i();
            com.clilystudio.netbook.hpay100.a.a.m((Context) this, SplashAdvert2.getSplashRecord().splashId);
            f();
        } else
            boolean3 = false;
        e1.b();
        return boolean3;
    }

    private void i() {
        ((TextView) findViewById(2131493265)).setOnClickListener((View$OnClickListener) new ck(this));
    }

    public final void a() {
        if (d != null) {
            Log.i(a, "cancelAutoClose  ");
            d.a();
            d = null;
        }
    }

    public final void a(long long1) {
        cl cl3 = new cl(this);
        Handler Handler4 = c;
        Object Object5 = new ci(this, cl3, long1);

        if (long1 <= 0L)
            long1 = 0L;
        Handler4.postDelayed((Runnable) Object5, long1);
        d = cl3;
    }

    public final void b() {
        ImageView ImageView1 = (ImageView) findViewById(2131493995);

        if (!android.support.design.widget.am.o((Context) this) && ImageView1.getDrawable() != null)
            b = 1200;
        else
            b = 0;
        f();
        com.clilystudio.netbook.hpay100.a.a.m((Context) this, null);
    }

    public final void c() {
        i();
        findViewById(2131493263).setVisibility(0);
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final void d() {
    }

    public void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        setContentView(2130903397);
        com.clilystudio.netbook.hpay100.a.a.a(getWindow().getDecorView());
        ActiveAndroid.initialize((Context) this);
        g = (AdContainerLayout) findViewById(2131493263);
        if (am.q((Context) this)) {
            float float2 = com.clilystudio.netbook.hpay100.a.a.v((Context) this, "rate_zssq_splash_ad");
            double double3 = Math.random();

            if ((double) float2 <= double3 || !h())
                g();
        } else
            b();
        if (am.g())
            com.clilystudio.netbook.umeng.a.b.a((Context) this, "user_register", "YES");
        else
            com.clilystudio.netbook.umeng.a.b.a((Context) this, "user_register", "NO");
    }

    protected void onDestroy() {
        super.onDestroy();
        e = true;
    }

    public void onPause() {
        super.onPause();
        com.clilystudio.netbook.umeng.a.b.a((Context) this);
    }

    protected void onRestart() {
        super.onRestart();
        if (f) {
            if (hasWindowFocus() || f)
                d();
            else {
                f = true;
                return;
            }
        }
    }

    public void onResume() {
        super.onResume();
        com.clilystudio.netbook.umeng.a.b.b((Context) this);
        com.xiaomi.mistatistic.sdk.b.a();
        if (am.g()) {
            Calendar Calendar1 = Calendar.getInstance();
            int int2 = 10000 * Calendar1.get(1) + 100 * Calendar1.get(2) + Calendar1.get(5);

            if (int2 > com.clilystudio.netbook.hpay100.a.a.a((Context) this, "KEY_OPEN_TIME", 0)) {
                String String3 = am.e().getUser().getGender();

                if (String3 != null) {
                    if (String3.equals("male")) {
                        com.xiaomi.mistatistic.sdk.b.a("user_gender", "male");
                        com.clilystudio.netbook.umeng.a.b.a((Context) this, "user_gender", "male");
                    } else if (String3.equals("female")) {
                        com.xiaomi.mistatistic.sdk.b.a("user_gender", "female");
                        com.clilystudio.netbook.umeng.a.b.a((Context) this, "user_gender", "female");
                    }
                    com.clilystudio.netbook.hpay100.a.a.b((Context) this, "KEY_OPEN_TIME", int2);
                    return;
                }
            }
        }
    }
}
