package com.clilystudio.netbook.reader.random;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.am;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.PagerAdapter;
import android.view.KeyEvent;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnSystemUiVisibilityChangeListener;
import android.view.ViewGroup$LayoutParams;
import android.view.WindowManager$LayoutParams;
import android.widget.RelativeLayout$LayoutParams;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.reader.PagerWidget;
import com.clilystudio.netbook.reader.Reader;
import com.clilystudio.netbook.reader.ad;
import com.clilystudio.netbook.reader.ae;
import com.clilystudio.netbook.reader.bH;
import com.clilystudio.netbook.reader.bZ;
import com.clilystudio.netbook.reader.ca;
import com.clilystudio.netbook.reader.cb;
import com.clilystudio.netbook.reader.cc;
import com.clilystudio.netbook.reader.cd;
import com.clilystudio.netbook.reader.ce;
import com.clilystudio.netbook.reader.cw;

public class ReaderRandomActivity extends FragmentActivity {

    private String b;
    private String c;
    private String d;
    private Reader e;
    private bZ f;
    private bH g;
    private com.clilystudio.netbook.reader.K h;
    private PagerWidget j;
    private int k;
    private View n;
    private ReaderRandomActionBar o;
    private boolean q;
    private boolean r;
    private View s;
    private TextView t;
    private View u;
    private boolean v;
    private View w;
    private ProgressDialog x;
    private com.clilystudio.netbook.reader.o[] a = new com.clilystudio.netbook.reader.o[3];
    private Handler i = new Handler();
    private boolean l = true;
    private boolean m = true;
    private int p = -1;
    private int y = 1;
    private Runnable z = new D(this);
    private BroadcastReceiver A = new E(this);
    private BroadcastReceiver B = new F(this);

    static int a(ReaderRandomActivity ReaderRandomActivity1, int int2) {
        ReaderRandomActivity1.y = int2;
        return int2;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2, String String3, String String4) {
    }

    static void a(ReaderRandomActivity ReaderRandomActivity1, com.clilystudio.netbook.reader.n n2) {
        if (!n2.f()) {
            ReaderRandomActivity1.a[0].a(n2);
            n2.a((com.clilystudio.netbook.reader.e) new u(ReaderRandomActivity1));
        } else if (!n2.e()) {
            ReaderRandomActivity1.a[2].a(n2);
            n2.b((com.clilystudio.netbook.reader.e) new w(ReaderRandomActivity1));
        } else {
            ReaderRandomActivity1.a[1].a(n2);
            n2.a((com.clilystudio.netbook.reader.e) new y(ReaderRandomActivity1, n2));
        }
    }

    static boolean a(ReaderRandomActivity ReaderRandomActivity1) {
        return ReaderRandomActivity1.r;
    }

    static boolean a(ReaderRandomActivity ReaderRandomActivity1, boolean boolean2) {
        ReaderRandomActivity1.r = boolean2;
        return boolean2;
    }

    static void b(ReaderRandomActivity ReaderRandomActivity1) {
        String String2;
        Object[] Object_1darray3;

        BookReadRecord.deleteAndSync(ReaderRandomActivity1.b);
        String2 = ReaderRandomActivity1.getResources().getString(2131034467);
        Object_1darray3 = new Object[1];
        Object_1darray3[0] = ReaderRandomActivity1.c;
        com.clilystudio.netbook.util.e.a((Activity) ReaderRandomActivity1, String.format(String2, Object_1darray3));
    }

    static void b(ReaderRandomActivity ReaderRandomActivity1, int int2) {
        ReaderRandomActivity1.a(int2);
    }

    static boolean b(ReaderRandomActivity ReaderRandomActivity1, boolean boolean2) {
        ReaderRandomActivity1.m = boolean2;
        return boolean2;
    }

    static int c(ReaderRandomActivity ReaderRandomActivity1, int int2) {
        ReaderRandomActivity1.k = int2;
        return int2;
    }

    static TextView c(ReaderRandomActivity ReaderRandomActivity1) {
        return ReaderRandomActivity1.t;
    }

    static int d(ReaderRandomActivity ReaderRandomActivity1, int int2) {
        ReaderRandomActivity1.p = int2;
        return int2;
    }

    static View d(ReaderRandomActivity ReaderRandomActivity1) {
        return ReaderRandomActivity1.u;
    }

    static void e(ReaderRandomActivity ReaderRandomActivity1) {
        if (am.f())
            com.clilystudio.netbook.util.e.a((Activity) ReaderRandomActivity1, ReaderRandomActivity1.getString(2131034325));
        else {
            String String2;
            Object[] Object_1darray3;

            ReaderRandomActivity1.e.a();
            com.clilystudio.netbook.hpay100.a.a.u(ReaderRandomActivity1.b);
            String2 = ReaderRandomActivity1.getResources().getString(2131034283);
            Object_1darray3 = new Object[1];
            Object_1darray3[0] = ReaderRandomActivity1.c;
            com.clilystudio.netbook.util.e.a((Activity) ReaderRandomActivity1, String.format(String2, Object_1darray3));
        }
    }

    static void f(ReaderRandomActivity ReaderRandomActivity1) {
        ReaderRandomActivity1.x = ProgressDialog.show((Context) ReaderRandomActivity1, null, (CharSequence) ReaderRandomActivity1.getString(2131034218), true, true);
        com.a.a.a.a((Context) MyApplication.a(), "rec_F184E6D9_7F75_01C9_CCA0_2336AEB54B2B", com.clilystudio.netbook.hpay100.a.a.o((Context) ReaderRandomActivity1), (com.a.a.c) new C(ReaderRandomActivity1));
    }

    static int g(ReaderRandomActivity ReaderRandomActivity1) {
        return ReaderRandomActivity1.y;
    }

    static ProgressDialog h(ReaderRandomActivity ReaderRandomActivity1) {
        return ReaderRandomActivity1.x;
    }

    static com.clilystudio.netbook.reader.o[] i(ReaderRandomActivity ReaderRandomActivity1) {
        return ReaderRandomActivity1.a;
    }

    static void j(ReaderRandomActivity ReaderRandomActivity1) {
        ReaderRandomActivity1.h.a((com.clilystudio.netbook.reader.e) new s(ReaderRandomActivity1));
    }

    static void k(ReaderRandomActivity ReaderRandomActivity1) {
        ReaderRandomActivity1.b();
    }

    static View l(ReaderRandomActivity ReaderRandomActivity1) {
        return ReaderRandomActivity1.w;
    }

    static void m(ReaderRandomActivity ReaderRandomActivity1) {
        Object Object2;
        int int3;
        int int4;

        ReaderRandomActivity1.h = new com.clilystudio.netbook.reader.K(ReaderRandomActivity1.e, ReaderRandomActivity1.f);
        Object2 = new g(ReaderRandomActivity1);
        int3 = ReaderRandomActivity1.a.length;
        for (int4 = 0; int4 < int3; ++int4) {
            com.clilystudio.netbook.reader.o o5 = new com.clilystudio.netbook.reader.o((Activity) ReaderRandomActivity1, ReaderRandomActivity1.f);

            ReaderRandomActivity1.a[int4] = o5;
            o5.a((com.clilystudio.netbook.reader.G) Object2);
        }
        ReaderRandomActivity1.registerReceiver(ReaderRandomActivity1.A, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        ReaderRandomActivity1.registerReceiver(ReaderRandomActivity1.B, new IntentFilter("android.intent.action.TIME_TICK"));
        ReaderRandomActivity1.j = (PagerWidget) ReaderRandomActivity1.findViewById(2131493158);
        ReaderRandomActivity1.j.setAdapter((PagerAdapter) new h(ReaderRandomActivity1));
        ReaderRandomActivity1.j.setOnPageChangeListener((cw) new i(ReaderRandomActivity1));
        ReaderRandomActivity1.j.setOnClickListener$4b8a6d15((com.umeng.update.a) new j(ReaderRandomActivity1));
        MyApplication.a().a(ReaderRandomActivity1.e);
        ReaderRandomActivity1.a(0);
    }

    static void n(ReaderRandomActivity ReaderRandomActivity1) {
        if (!ReaderRandomActivity1.isFinishing()) {
            uk.me.lewisdeane.ldialogs.h h2 = new uk.me.lewisdeane.ldialogs.h((Context) ReaderRandomActivity1);
            AlertDialog AlertDialog5;

            h2.b(2131034528);
            h2.a(2131034471, (DialogInterface$OnClickListener) new n(ReaderRandomActivity1)).b(2131034321, (DialogInterface$OnClickListener) new m(ReaderRandomActivity1));
            AlertDialog5 = h2.a();
            AlertDialog5.setCanceledOnTouchOutside(false);
            AlertDialog5.setOnCancelListener((DialogInterface$OnCancelListener) new p(ReaderRandomActivity1));
            try {
                AlertDialog5.show();
            } catch (Exception Exception6) {
                Exception6.printStackTrace();
                return;
            }
        }
    }

    static void o(ReaderRandomActivity ReaderRandomActivity1) {
        ReaderRandomActivity1.i();
    }

    static void p(ReaderRandomActivity ReaderRandomActivity1) {
        ReaderRandomActivity1.c();
    }

    static void q(ReaderRandomActivity ReaderRandomActivity1) {
        ReaderRandomActivity1.f();
    }

    static void r(ReaderRandomActivity ReaderRandomActivity1) {
        ReaderRandomActivity1.e();
    }

    static void s(ReaderRandomActivity ReaderRandomActivity1) {
        ReaderRandomActivity1.g();
    }

    static void t(ReaderRandomActivity ReaderRandomActivity1) {
        ReaderRandomActivity1.a();
    }

    static PagerWidget u(ReaderRandomActivity ReaderRandomActivity1) {
        return ReaderRandomActivity1.j;
    }

    static void v(ReaderRandomActivity ReaderRandomActivity1) {
        ReaderRandomActivity1.d();
    }

    static void w(ReaderRandomActivity ReaderRandomActivity1) {
        ReaderRandomActivity1.getWindow().clearFlags(128);
    }

    static int x(ReaderRandomActivity ReaderRandomActivity1) {
        return ReaderRandomActivity1.p;
    }

    private String a(String String1) {
        return getIntent().getStringExtra(String1);
    }

    private void a() {
        e.a((ad) new f(this), false);
    }

    private void a(int int1) {
        h.b(int1, (com.clilystudio.netbook.reader.e) new q(this), true);
    }

    private void b() {
        WindowManager$LayoutParams LayoutParams1 = getWindow().getAttributes();
        float float2;

        if (f.g())
            float2 = -1.0F;
        else
            float2 = (float) f.f() / 255.0F;
        LayoutParams1.screenBrightness = float2;
        getWindow().setAttributes(LayoutParams1);
    }

    private void c() {
        com.clilystudio.netbook.reader.n n1 = a[k].j();

        if (n1 != null && !n1.p()) {
            if (n1.n() == 1)
                a(n1.l());
            else {
                int int8 = n1.l();

                h.a(int8, (com.clilystudio.netbook.reader.e) new t(this), true);
            }
        } else {
            com.clilystudio.netbook.reader.o o2 = a[0];
            com.clilystudio.netbook.reader.o o3 = a[1];
            com.clilystudio.netbook.reader.o o4 = a[2];
            com.clilystudio.netbook.reader.n n5 = o2.j();
            com.clilystudio.netbook.reader.n n6 = o3.j();
            com.clilystudio.netbook.reader.n n7 = o4.j();

            if (k == 2 && n7 != null && n7.e()) {
                o2.a(n6);
                o3.a(n7);
                j.setCurrentItem(1, false);
                n7.a((com.clilystudio.netbook.reader.e) new k(this, o4));
            } else if (k == 0 && n5 != null && n5.f()) {
                o4.a(n6);
                o3.a(n5);
                j.setCurrentItem(1, false);
                n5.b((com.clilystudio.netbook.reader.e) new l(this, o2));
            }
            d();
        }
    }

    private void d() {
        com.clilystudio.netbook.reader.n n1 = a[k].j();

        if (n1 != null) {
            e.a(n1.l(), n1.m());
            if (!n1.e())
                com.clilystudio.netbook.util.e.a((Activity) this, "\u5DF2\u7ECF\u662F\u6700\u540E\u4E00\u9875\u5566");
        }
    }

    private void e() {
        com.clilystudio.netbook.reader.o o1 = a[k];

        if (o1 != null) {
            com.clilystudio.netbook.reader.n n2 = o1.j();

            if (n2 != null) {
                if (n2.e()) {
                    i();
                    if (g.c())
                        j.a(1 + k);
                    else {
                        j.setCurrentItem(1 + k, false);
                        c();
                    }
                } else
                    com.clilystudio.netbook.util.e.a((Activity) this, "\u5DF2\u7ECF\u662F\u6700\u540E\u4E00\u9875\u5566");
                return;
            }
        }
    }

    private void f() {
        com.clilystudio.netbook.reader.o o1 = a[k];

        if (o1 != null) {
            com.clilystudio.netbook.reader.n n2 = o1.j();

            if (n2 != null) {
                if (n2.f()) {
                    i();
                    if (g.c())
                        j.a(-1 + k);
                    else {
                        j.setCurrentItem(-1 + k, false);
                        c();
                    }
                } else
                    com.clilystudio.netbook.util.e.a((Activity) this, 2131034407);
                return;
            }
        }
    }

    private void g() {
        if (l)
            i();
        else
            h();
    }

    private void h() {
        if (!l) {
            o.setVisibility(0);
            s.setVisibility(0);
            getWindow().addFlags(2048);
            getWindow().clearFlags(1024);
            l = true;
        }
        if (com.clilystudio.netbook.hpay100.a.a.h() && !m)
            n.setSystemUiVisibility(0);
    }

    private void i() {
        if (l) {
            o.setVisibility(4);
            getWindow().addFlags(1024);
            getWindow().clearFlags(2048);
            l = false;
        }
        if (com.clilystudio.netbook.hpay100.a.a.h() && m)
            n.setSystemUiVisibility(1);
        if (q)
            getWindow().addFlags(512);
        else {
            getWindow().addFlags(2048);
            getWindow().clearFlags(1024);
            getWindow().clearFlags(512);
            if (com.clilystudio.netbook.hpay100.a.a.h() && m)
                n.setSystemUiVisibility(0);
        }
        s.setVisibility(8);
        com.clilystudio.netbook.hpay100.a.a.a(getWindow().getDecorView());
    }

    private void j() {
        i.removeCallbacks(z);
        if (g.d() != 0)
            i.postDelayed(z, (long) g.d());
    }

    public void onBackPressed() {
        if (e.m())
            super.onBackPressed();
        else
            new uk.me.lewisdeane.ldialogs.h((Context) this).a(2131034455).b(2131034287).a(2131034280, (DialogInterface$OnClickListener) new B(this)).b(2131034281, (DialogInterface$OnClickListener) new A(this)).a().show();
    }

    public void onCreate(Bundle Bundle1) {
        View View2;
        View View3;
        ReaderRandomActionBar ReaderRandomActionBar4;
        boolean boolean5;
        Object Object6;

        super.onCreate(Bundle1);
        getWindow().addFlags(256);
        getWindow().addFlags(512);
        setContentView(2130903122);
        b = a("BOOK_ID");
        c = a("BOOK_TITLE");
        d = a("TOC_ID");
        com.clilystudio.netbook.util.I.g = 0;
        if (Bundle1 != null)
            k = Bundle1.getInt("SaveSelectedPageIndex", 0);
        w = findViewById(2131493167);
        o = (ReaderRandomActionBar) findViewById(2131493170);
        f = new bZ((Activity) this);
        g = new bH((Context) this);
        e = new Reader(b, d, c, 5);
        f.a((cc) new G(this));
        f.a((cb) new H(this));
        f.a((ce) new I(this));
        f.a((ca) new J(this));
        f.a((cd) new K(this));
        b();
        o.setTitle("\u4E66\u540D\u88AB\u5C01\u5370");
        o.setOnBtnClickListener$3ce42dcd((com.umeng.update.a) new L(this));
        s = findViewById(2131493171);
        s.setVisibility(0);
        View2 = findViewById(2131493936);
        View3 = findViewById(2131493939);
        t = (TextView) findViewById(2131493938);
        u = findViewById(2131493937);
        v = com.clilystudio.netbook.hpay100.a.a.l((Context) this, "firstRandomBooks");
        if (e.m()) {
            u.setBackgroundResource(2130837650);
            t.setCompoundDrawablesWithIntrinsicBounds(2130838130, 0, 0, 0);
            t.setText((CharSequence) "\u5DF2\u6DFB\u52A0");
            r = true;
        } else
            r = false;
        View2.setOnClickListener((View$OnClickListener) new d(this));
        View3.setOnClickListener((View$OnClickListener) new o(this));
        n = getWindow().getDecorView();
        if (com.clilystudio.netbook.hpay100.a.a.h())
            n.setOnSystemUiVisibilityChangeListener((View$OnSystemUiVisibilityChangeListener) new r(this));
        q = com.clilystudio.netbook.hpay100.a.a.l((Context) this, "reader_opt_full_screen");
        ReaderRandomActionBar4 = o;
        boolean5 = q;
        Object6 = new RelativeLayout$LayoutParams(-1, -1);
        if (boolean5)
            ((RelativeLayout$LayoutParams) Object6).setMargins(0, am.k(ReaderRandomActionBar4.getContext()), 0, 0);
        else
            ((RelativeLayout$LayoutParams) Object6).setMargins(0, 0, 0, 0);
        ReaderRandomActionBar4.setLayoutParams((ViewGroup$LayoutParams) Object6);
        i();
        if (v) {
            h();
            v = false;
        }
        e.c((ae) new e(this));
        a();
    }

    public void onDestroy() {
        try {
            unregisterReceiver(A);
            unregisterReceiver(B);
        } catch (IllegalArgumentException IllegalArgumentException1) {
            IllegalArgumentException1.printStackTrace();
        }
        super.onDestroy();
    }

    public boolean onKeyDown(int int1, KeyEvent KeyEvent2) {
        switch (int1) {
            default:
                return super.onKeyDown(int1, KeyEvent2);
            case 25:
                if (!g.b())
                    return false;
                e();
                return true;
            case 24:
                if (!g.b())
                    return false;
                f();
                return true;
        }
    }

    public boolean onKeyUp(int int1, KeyEvent KeyEvent2) {
        if (int1 == 82)
            g();
        else if (int1 != 25 && int1 != 24)
            return super.onKeyUp(int1, KeyEvent2);
        return true;
    }

    public void onPause() {
        super.onPause();
        com.clilystudio.netbook.hpay100.a.a.b((Context) this, "firstRandomBooks", false);
    }

    public void onResume() {
        super.onResume();
        getWindow().addFlags(128);
        j();
    }

    protected void onSaveInstanceState(Bundle Bundle1) {
        super.onSaveInstanceState(Bundle1);
        Bundle1.putInt("SaveSelectedPageIndex", k);
    }

    public void onUserInteraction() {
        super.onUserInteraction();
        j();
    }
}
