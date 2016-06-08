package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.widget.ImageView;
import android.widget.TextView;

import com.activeandroid.ActiveAndroid;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.model.SplashAdvert;
import com.clilystudio.netbook.model.TxtFileObject;
import com.clilystudio.netbook.ui.home.HomeActivity;
import com.clilystudio.netbook.util.UmengGameTracer;
import com.clilystudio.netbook.util.UmengGameTracer.From;
import com.clilystudio.netbook.util.adutil.AdSplashImp;
import com.clilystudio.netbook.util.adutil.g;
import com.clilystudio.netbook.util.adutil.l;
import com.clilystudio.netbook.util.e;
import com.clilystudio.netbook.widget.AdContainerLayout;

import java.io.File;
import java.util.Calendar;

public class SplashActivity extends Activity {
    private static final String a = SplashActivity.class.getSimpleName();
    private int b = 1200;
    private Handler c = new Handler();
    private cl d;
    private boolean e = false;
    private boolean f = false;
    private AdContainerLayout g;

    private void f() {
        a(this.b);
    }

    private void g() {
        if ("1".equals(com.umeng.a.b.b(this, "splash_ad_third_enable"))) {
            findViewById(2131493995).setVisibility(8);
            a(3000L);
            AdSplashImp localAdSplashImp = new AdSplashImp(this);
            if (am.i("com.qq.e.ads.nativ.NativeAD")) {
                new l(localAdSplashImp).a(this.g);
                return;
            }
            if (am.i("com.baidu.mobads.SplashAd")) {
                new g(localAdSplashImp).a(this.g);
                return;
            }
            b();
            return;
        }
        b();
    }

    private boolean h() {
        e locale = e.a(getApplicationContext());
        SplashAdvert localSplashAdvert = locale.a();
        if (localSplashAdvert != null) ;
        while (true) {
            try {
                new UmengGameTracer(this, UmengGameTracer.From.Splash).a(localSplashAdvert.getSplashRecord().splashId);
                i = 1;
                this.b = 3000;
                Bitmap localBitmap = localSplashAdvert.getBitmap();
                String str = localSplashAdvert.getSplashRecord().link;
                findViewById(2131493263).setVisibility(0);
                findViewById(2131493995).setVisibility(8);
                ImageView localImageView = (ImageView) findViewById(2131493264);
                localImageView.setImageBitmap(localBitmap);
                localImageView.setOnClickListener(new cj(this, localSplashAdvert, str));
                i();
                com.arcsoft.hpay100.a.a.m(this, localSplashAdvert.getSplashRecord().splashId);
                f();
                locale.b();
                return i;
            } catch (Exception localException) {
                localException.printStackTrace();
                i = 0;
                continue;
            }
            int i = 0;
        }
    }

    private void i() {
        ((TextView) findViewById(2131493265)).setOnClickListener(new ck(this));
    }

    public final void a() {
        if (this.d != null) {
            Log.i(a, "cancelAutoClose  ");
            this.d.a();
            this.d = null;
        }
    }

    public final void a(long paramLong) {
        cl localcl = new cl(this);
        Handler localHandler = this.c;
        ci localci = new ci(this, localcl, paramLong);
        if (paramLong <= 0L)
            paramLong = 0L;
        localHandler.postDelayed(localci, paramLong);
        this.d = localcl;
    }

    public final void b() {
        ImageView localImageView = (ImageView) findViewById(2131493995);
        if ((!am.o(this)) && (localImageView.getDrawable() != null)) ;
        for (this.b = 1200; ; this.b = 0) {
            f();
            com.arcsoft.hpay100.a.a.m(this, null);
            return;
        }
    }

    public final void c() {
        i();
        findViewById(2131493263).setVisibility(0);
    }

    public final void d() {
        if (this.e)
            return;
        Intent localIntent1;
        if ((!am.g()) && (!am.q(this)))
            localIntent1 = new Intent(this, IntroActivity.class);
        while (true) {
            startActivity(localIntent1);
            finish();
            return;
            localIntent1 = new Intent(this, HomeActivity.class);
            Intent localIntent2 = getIntent();
            Uri localUri = localIntent2.getData();
            if (localUri == null)
                continue;
            if ("text/plain".equals(localIntent2.getType())) {
                String str = localUri.getPath();
                localIntent1.putExtra("file_name", str);
                TxtFileObject.add(new BookFile(new File(str)));
                continue;
            }
            localIntent1.putExtra("file_name", "nonsupport");
        }
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903397);
        com.arcsoft.hpay100.a.a.a(getWindow().getDecorView());
        ActiveAndroid.initialize(this);
        this.g = ((AdContainerLayout) findViewById(2131493263));
        if (am.q(this)) {
            float f1 = com.arcsoft.hpay100.a.a.v(this, "rate_zssq_splash_ad");
            double d1 = Math.random();
            if ((f1 <= d1) || (!h()))
                g();
        }
        while (am.g()) {
            com.umeng.a.b.a(this, "user_register", "YES");
            return;
            b();
        }
        com.umeng.a.b.a(this, "user_register", "NO");
    }

    protected void onDestroy() {
        super.onDestroy();
        this.e = true;
    }

    public void onPause() {
        super.onPause();
        com.umeng.a.b.a(this);
    }

    protected void onRestart() {
        super.onRestart();
        if (this.f) {
            if ((hasWindowFocus()) || (this.f))
                d();
        } else
            return;
        this.f = true;
    }

    public void onResume() {
        super.onResume();
        com.umeng.a.b.b(this);
        com.xiaomi.mistatistic.sdk.b.a();
        int i;
        String str;
        if (am.g()) {
            Calendar localCalendar = Calendar.getInstance();
            i = 10000 * localCalendar.get(1) + 100 * localCalendar.get(2) + localCalendar.get(5);
            if (i > com.arcsoft.hpay100.a.a.a(this, "KEY_OPEN_TIME", 0)) {
                str = am.e().getUser().getGender();
                if (str != null)
                    break label73;
            }
        }
        return;
        label73:
        if (str.equals("male")) {
            com.xiaomi.mistatistic.sdk.b.a("user_gender", "male");
            com.umeng.a.b.a(this, "user_gender", "male");
        }
        while (true) {
            com.arcsoft.hpay100.a.a.b(this, "KEY_OPEN_TIME", i);
            return;
            if (!str.equals("female"))
                continue;
            com.xiaomi.mistatistic.sdk.b.a("user_gender", "female");
            com.umeng.a.b.a(this, "user_gender", "female");
        }
    }
}

