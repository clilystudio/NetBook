package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

import com.activeandroid.ActiveAndroid;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.model.SplashAdvert;
import com.clilystudio.netbook.model.TxtFileObject;
import com.clilystudio.netbook.ui.home.HomeActivity;
import com.clilystudio.netbook.util.InsideLinkIntent;
import com.clilystudio.netbook.util.e;

import java.io.File;
import java.util.Calendar;

public class SplashActivity extends Activity {
    private static final String a = SplashActivity.class.getSimpleName();
    private int b = 1200;
    private Handler c = new Handler();
    private cl d;
    private boolean e = false;
    private boolean f = false;

    static /* synthetic */ void a(SplashActivity splashActivity, String string) {
        if (string != null) {
            Intent intent = AdWebViewActivity.a(splashActivity, "\u63a8\u5e7f", string);
            intent.putExtra("from_splash", true);
            splashActivity.startActivity(intent);
            splashActivity.finish();
        }
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
            ImageView imageView = (ImageView) this.findViewById(R.id.splash_ad_img);
            imageView.setImageBitmap(bitmap);
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    block3:
                    {
                        SplashActivity.a(SplashActivity.this, true);
                        SplashActivity.this.a();
                        String string2 = splashAdvert.getSplashRecord().insideLink;
                        if (!TextUtils.isEmpty(string2)) {
                            SplashActivity.this.startActivity(new InsideLinkIntent((Context) SplashActivity.this, string2));
                            SplashActivity.this.finish();
                            break block3;
                        }
                        SplashActivity.a(SplashActivity.this, string);
                    }
                    com.clilystudio.netbook.hpay100.a.a.o(SplashActivity.this, string);
                }
            });
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
        ((TextView) this.findViewById(R.id.splash_ad_skip)).setOnClickListener(new View.OnClickListener() {
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
        this.b = !am.o((Context) this) && imageView.getDrawable() != null ? 1200 : 0;
        this.f();
        a.m(this, null);
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
        if (!am.g() && !am.q((Context) this)) {
            intent = new Intent(this, IntroActivity.class);
        } else {
            intent = new Intent(this, HomeActivity.class);
            Intent intent2 = this.getIntent();
            Uri uri = intent2.getData();
            if (uri != null) {
                if ("text/plain".equals(intent2.getType())) {
                    String string = uri.getPath();
                    intent.putExtra("file_name", string);
                    TxtFileObject.add(new BookFile(new File(string)));
                } else {
                    intent.putExtra("file_name", "nonsupport");
                }
            }
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
        a.a(this.getWindow().getDecorView());
        ActiveAndroid.initialize(this);
        if (am.q((Context) this)) {
            double d2;
            float f2 = a.v(this, "rate_zssq_splash_ad");
            if ((double) f2 <= (d2 = Math.random()) || !this.h()) {
                this.g();
            }
        } else {
            this.b();
        }
        if (am.g()) {
            b.a(this, "user_register", "YES");
            return;
        }
        b.a(this, "user_register", "NO");
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        this.e = true;
    }

    @Override
    public void onPause() {
        super.onPause();
        b.a(this);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
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
        b.b(this);
        com.xiaomi.mistatistic.sdk.b.a();
        if (!am.g() || (n = 10000 * (calendar = Calendar.getInstance()).get(1) + 100 * calendar.get(2) + calendar.get(5)) <= a.a((Context) this, "KEY_OPEN_TIME", 0) || (string = am.e().getUser().getGender()) == null) {
            return;
        }
        if (string.equals("male")) {
            com.xiaomi.mistatistic.sdk.b.a("user_gender", "male");
            b.a(this, "user_gender", "male");
        } else if (string.equals("female")) {
            com.xiaomi.mistatistic.sdk.b.a("user_gender", "female");
            b.a(this, "user_gender", "female");
        }
        a.b((Context) this, "KEY_OPEN_TIME", n);
    }
}
