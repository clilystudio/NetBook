package com.clilystudio.netbook.reader.random;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.am;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.PagerAdapter;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.reader.G;
import com.clilystudio.netbook.reader.K;
import com.clilystudio.netbook.reader.PagerWidget;
import com.clilystudio.netbook.reader.Reader;
import com.clilystudio.netbook.reader.ad;
import com.clilystudio.netbook.reader.ae;
import com.clilystudio.netbook.reader.bH;
import com.clilystudio.netbook.reader.bZ;
import com.clilystudio.netbook.reader.cw;

public class ReaderRandomActivity extends FragmentActivity {
    private BroadcastReceiver A;
    private BroadcastReceiver B;
    private com.clilystudio.netbook.reader.o[] a = new com.clilystudio.netbook.reader.o[3];
    private String b;
    private String c;
    private String d;
    private Reader e;
    private bZ f;
    private bH g;
    private K h;
    private Handler i = new Handler();
    private PagerWidget j;
    private int k;
    private boolean l = true;
    private boolean m = true;
    private View n;
    private ReaderRandomActionBar o;
    private int p = -1;
    private boolean q;
    private boolean r;
    private View s;
    private TextView t;
    private View u;
    private boolean v;
    private View w;
    private ProgressDialog x;
    private int y = 1;
    private Runnable z;

    public ReaderRandomActivity() {
        this.z = new D(this);
        this.A = new E(this);
        this.B = new F(this);
    }

    static /* synthetic */ int a(ReaderRandomActivity readerRandomActivity, int n2) {
        readerRandomActivity.y = n2;
        return n2;
    }

    public static Intent a(Context context, String string, String string2, String string3) {
        return new d().a(context, ReaderRandomActivity.class).a("BOOK_ID", string).a("BOOK_TITLE", string2).a("TOC_ID", string3).a();
    }

    static /* synthetic */ void a(ReaderRandomActivity readerRandomActivity, com.clilystudio.netbook.reader.n n2) {
        if (!n2.f()) {
            readerRandomActivity.a[0].a(n2);
            n2.a((com.clilystudio.netbook.reader.e) new u(readerRandomActivity));
            return;
        }
        if (!n2.e()) {
            readerRandomActivity.a[2].a(n2);
            n2.b((com.clilystudio.netbook.reader.e) new w(readerRandomActivity));
            return;
        }
        readerRandomActivity.a[1].a(n2);
        n2.a((com.clilystudio.netbook.reader.e) new y(readerRandomActivity, n2));
    }

    static /* synthetic */ boolean a(ReaderRandomActivity readerRandomActivity) {
        return readerRandomActivity.r;
    }

    static /* synthetic */ boolean a(ReaderRandomActivity readerRandomActivity, boolean bl) {
        readerRandomActivity.r = bl;
        return bl;
    }

    static /* synthetic */ void b(ReaderRandomActivity readerRandomActivity) {
        BookReadRecord.deleteAndSync(readerRandomActivity.b);
        String string = readerRandomActivity.getResources().getString(2131034467);
        Object[] arrobject = new Object[]{readerRandomActivity.c};
        com.clilystudio.netbook.util.e.a((Activity) readerRandomActivity, (String) String.format(string, arrobject));
    }

    static /* synthetic */ void b(ReaderRandomActivity readerRandomActivity, int n2) {
        readerRandomActivity.a(n2);
    }

    static /* synthetic */ boolean b(ReaderRandomActivity readerRandomActivity, boolean bl) {
        readerRandomActivity.m = bl;
        return bl;
    }

    static /* synthetic */ int c(ReaderRandomActivity readerRandomActivity, int n2) {
        readerRandomActivity.k = n2;
        return n2;
    }

    static /* synthetic */ TextView c(ReaderRandomActivity readerRandomActivity) {
        return readerRandomActivity.t;
    }

    static /* synthetic */ int d(ReaderRandomActivity readerRandomActivity, int n2) {
        readerRandomActivity.p = n2;
        return n2;
    }

    static /* synthetic */ View d(ReaderRandomActivity readerRandomActivity) {
        return readerRandomActivity.u;
    }

    static /* synthetic */ void e(ReaderRandomActivity readerRandomActivity) {
        if (am.f()) {
            com.clilystudio.netbook.util.e.a((Activity) readerRandomActivity, (String) readerRandomActivity.getString(2131034325));
            return;
        }
        readerRandomActivity.e.a();
        a.u(readerRandomActivity.b);
        String string = readerRandomActivity.getResources().getString(2131034283);
        Object[] arrobject = new Object[]{readerRandomActivity.c};
        com.clilystudio.netbook.util.e.a((Activity) readerRandomActivity, (String) String.format(string, arrobject));
    }

    static /* synthetic */ void f(ReaderRandomActivity readerRandomActivity) {
        readerRandomActivity.x = ProgressDialog.show(readerRandomActivity, null, readerRandomActivity.getString(2131034218), true, true);
        com.a.a.a.a((Context) MyApplication.a(), "rec_F184E6D9_7F75_01C9_CCA0_2336AEB54B2B", a.o(readerRandomActivity), new C(readerRandomActivity));
    }

    static /* synthetic */ int g(ReaderRandomActivity readerRandomActivity) {
        return readerRandomActivity.y;
    }

    static /* synthetic */ ProgressDialog h(ReaderRandomActivity readerRandomActivity) {
        return readerRandomActivity.x;
    }

    static /* synthetic */ com.clilystudio.netbook.reader.o[] i(ReaderRandomActivity readerRandomActivity) {
        return readerRandomActivity.a;
    }

    static /* synthetic */ void j(ReaderRandomActivity readerRandomActivity) {
        readerRandomActivity.h.a(new s(readerRandomActivity));
    }

    static /* synthetic */ void k(ReaderRandomActivity readerRandomActivity) {
        readerRandomActivity.b();
    }

    static /* synthetic */ View l(ReaderRandomActivity readerRandomActivity) {
        return readerRandomActivity.w;
    }

    static /* synthetic */ void m(ReaderRandomActivity readerRandomActivity) {
        readerRandomActivity.h = new K(readerRandomActivity.e, readerRandomActivity.f);
        g g2 = new g(readerRandomActivity);
        int n2 = readerRandomActivity.a.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            com.clilystudio.netbook.reader.o o2;
            readerRandomActivity.a[i2] = o2 = new com.clilystudio.netbook.reader.o((Activity) readerRandomActivity, readerRandomActivity.f);
            o2.a((G) ((Object) g2));
        }
        readerRandomActivity.registerReceiver(readerRandomActivity.A, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        readerRandomActivity.registerReceiver(readerRandomActivity.B, new IntentFilter("android.intent.action.TIME_TICK"));
        readerRandomActivity.j = (PagerWidget) readerRandomActivity.findViewById(2131493158);
        readerRandomActivity.j.setAdapter((PagerAdapter) ((Object) new h(readerRandomActivity)));
        readerRandomActivity.j.setOnPageChangeListener((cw) ((Object) new i(readerRandomActivity)));
        readerRandomActivity.j.setOnClickListener$4b8a6d15((com.umeng.update.a) ((Object) new j(readerRandomActivity)));
        MyApplication.a().a(readerRandomActivity.e);
        readerRandomActivity.a(0);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static /* synthetic */ void n(ReaderRandomActivity readerRandomActivity) {
        if (readerRandomActivity.isFinishing()) return;
        uk.me.lewisdeane.ldialogs.h h2 = new uk.me.lewisdeane.ldialogs.h(readerRandomActivity);
        h2.b(2131034528);
        h2.a(2131034471, (DialogInterface.OnClickListener) new n(readerRandomActivity)).b(2131034321, (DialogInterface.OnClickListener) new m(readerRandomActivity));
        AlertDialog alertDialog = h2.a();
        alertDialog.setCanceledOnTouchOutside(false);
        alertDialog.setOnCancelListener(new p(readerRandomActivity));
        try {
            alertDialog.show();
            return;
        } catch (Exception var5_3) {
            var5_3.printStackTrace();
            return;
        }
    }

    static /* synthetic */ void o(ReaderRandomActivity readerRandomActivity) {
        readerRandomActivity.i();
    }

    static /* synthetic */ void p(ReaderRandomActivity readerRandomActivity) {
        readerRandomActivity.c();
    }

    static /* synthetic */ void q(ReaderRandomActivity readerRandomActivity) {
        readerRandomActivity.f();
    }

    static /* synthetic */ void r(ReaderRandomActivity readerRandomActivity) {
        readerRandomActivity.e();
    }

    static /* synthetic */ void s(ReaderRandomActivity readerRandomActivity) {
        readerRandomActivity.g();
    }

    static /* synthetic */ void t(ReaderRandomActivity readerRandomActivity) {
        readerRandomActivity.a();
    }

    static /* synthetic */ PagerWidget u(ReaderRandomActivity readerRandomActivity) {
        return readerRandomActivity.j;
    }

    static /* synthetic */ void v(ReaderRandomActivity readerRandomActivity) {
        readerRandomActivity.d();
    }

    static /* synthetic */ void w(ReaderRandomActivity readerRandomActivity) {
        readerRandomActivity.getWindow().clearFlags(128);
    }

    static /* synthetic */ int x(ReaderRandomActivity readerRandomActivity) {
        return readerRandomActivity.p;
    }

    private String a(String string) {
        return this.getIntent().getStringExtra(string);
    }

    private void a() {
        this.e.a((ad) ((Object) new f(this)), false);
    }

    private void a(int n2) {
        this.h.b(n2, new q(this), true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void b() {
        WindowManager.LayoutParams layoutParams = this.getWindow().getAttributes();
        float f2 = this.f.g() ? -1.0f : (float) this.f.f() / 255.0f;
        layoutParams.screenBrightness = f2;
        this.getWindow().setAttributes(layoutParams);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void c() {
        com.clilystudio.netbook.reader.n n2 = this.a[this.k].j();
        if (n2 != null && !n2.p()) {
            if (n2.n() == 1) {
                this.a(n2.l());
                return;
            }
            int n3 = n2.l();
            this.h.a(n3, new t(this), true);
            return;
        }
        com.clilystudio.netbook.reader.o o2 = this.a[0];
        com.clilystudio.netbook.reader.o o3 = this.a[1];
        com.clilystudio.netbook.reader.o o4 = this.a[2];
        com.clilystudio.netbook.reader.n n4 = o2.j();
        com.clilystudio.netbook.reader.n n5 = o3.j();
        com.clilystudio.netbook.reader.n n6 = o4.j();
        if (this.k == 2 && n6 != null && n6.e()) {
            o2.a(n5);
            o3.a(n6);
            this.j.setCurrentItem(1, false);
            n6.a((com.clilystudio.netbook.reader.e) ((Object) new k(this, o4)));
        } else if (this.k == 0 && n4 != null && n4.f()) {
            o4.a(n5);
            o3.a(n4);
            this.j.setCurrentItem(1, false);
            n4.b((com.clilystudio.netbook.reader.e) ((Object) new l(this, o2)));
        }
        this.d();
    }

    private void d() {
        com.clilystudio.netbook.reader.n n2 = this.a[this.k].j();
        if (n2 != null) {
            this.e.a(n2.l(), n2.m());
            if (!n2.e()) {
                com.clilystudio.netbook.util.e.a((Activity) this, (String) "\u5df2\u7ecf\u662f\u6700\u540e\u4e00\u9875\u5566");
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void e() {
        com.clilystudio.netbook.reader.n n2;
        com.clilystudio.netbook.reader.o o2 = this.a[this.k];
        if (o2 == null || (n2 = o2.j()) == null) {
            return;
        }
        if (!n2.e()) {
            com.clilystudio.netbook.util.e.a((Activity) this, (String) "\u5df2\u7ecf\u662f\u6700\u540e\u4e00\u9875\u5566");
            return;
        }
        this.i();
        if (this.g.c()) {
            this.j.a(1 + this.k);
            return;
        }
        this.j.setCurrentItem(1 + this.k, false);
        this.c();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void f() {
        com.clilystudio.netbook.reader.n n2;
        com.clilystudio.netbook.reader.o o2 = this.a[this.k];
        if (o2 == null || (n2 = o2.j()) == null) {
            return;
        }
        if (!n2.f()) {
            com.clilystudio.netbook.util.e.a((Activity) this, (int) 2131034407);
            return;
        }
        this.i();
        if (this.g.c()) {
            this.j.a(-1 + this.k);
            return;
        }
        this.j.setCurrentItem(-1 + this.k, false);
        this.c();
    }

    private void g() {
        if (this.l) {
            this.i();
            return;
        }
        this.h();
    }

    @SuppressLint(value = {"NewApi"})
    private void h() {
        if (!this.l) {
            this.o.setVisibility(View.VISIBLE);
            this.s.setVisibility(View.VISIBLE);
            this.getWindow().addFlags(2048);
            this.getWindow().clearFlags(1024);
            this.l = true;
        }
        if (a.h() && !this.m) {
            this.n.setSystemUiVisibility(0);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @SuppressLint(value = {"NewApi"})
    private void i() {
        if (this.l) {
            this.o.setVisibility(4);
            this.getWindow().addFlags(1024);
            this.getWindow().clearFlags(2048);
            this.l = false;
        }
        if (a.h() && this.m) {
            this.n.setSystemUiVisibility(1);
        }
        if (this.q) {
            this.getWindow().addFlags(512);
        } else {
            this.getWindow().addFlags(2048);
            this.getWindow().clearFlags(1024);
            this.getWindow().clearFlags(512);
            if (a.h() && this.m) {
                this.n.setSystemUiVisibility(0);
            }
        }
        this.s.setVisibility(View.GONE);
        a.a(this.getWindow().getDecorView());
    }

    private void j() {
        this.i.removeCallbacks(this.z);
        if (this.g.d() != 0) {
            this.i.postDelayed(this.z, this.g.d());
        }
    }

    @Override
    public void onBackPressed() {
        if (this.e.m()) {
            super.onBackPressed();
            return;
        }
        new uk.me.lewisdeane.ldialogs.h(this).a(2131034455).b(2131034287).a(2131034280, (DialogInterface.OnClickListener) new B(this)).b(2131034281, (DialogInterface.OnClickListener) new A(this)).a().show();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.getWindow().addFlags(256);
        this.getWindow().addFlags(512);
        this.setContentView(2130903122);
        this.b = this.a("BOOK_ID");
        this.c = this.a("BOOK_TITLE");
        this.d = this.a("TOC_ID");
        com.clilystudio.netbook.util.I.g = 0;
        if (bundle != null) {
            this.k = bundle.getInt("SaveSelectedPageIndex", 0);
        }
        this.w = this.findViewById(2131493167);
        this.o = (ReaderRandomActionBar) this.findViewById(2131493170);
        this.f = new bZ(this);
        this.g = new bH(this);
        this.e = new Reader(this.b, this.d, this.c, 5);
        this.f.a(new com.clilystudio.netbook.reader.random.G(this));
        this.f.a(new H(this));
        this.f.a(new I(this));
        this.f.a(new J(this));
        this.f.a(new com.clilystudio.netbook.reader.random.K(this));
        this.b();
        this.o.setTitle("\u4e66\u540d\u88ab\u5c01\u5370");
        this.o.setOnBtnClickListener$3ce42dcd(new L(this));
        this.s = this.findViewById(2131493171);
        this.s.setVisibility(View.VISIBLE);
        View view = this.findViewById(2131493936);
        View view2 = this.findViewById(2131493939);
        this.t = (TextView) this.findViewById(2131493938);
        this.u = this.findViewById(2131493937);
        this.v = a.l(this, "firstRandomBooks");
        if (this.e.m()) {
            this.u.setBackgroundResource(2130837650);
            this.t.setCompoundDrawablesWithIntrinsicBounds(2130838130, 0, 0, 0);
            this.t.setText("\u5df2\u6dfb\u52a0");
            this.r = true;
        } else {
            this.r = false;
        }
        view.setOnClickListener((View.OnClickListener) ((Object) new com.clilystudio.netbook.reader.random.d(this)));
        view2.setOnClickListener(new o(this));
        this.n = this.getWindow().getDecorView();
        if (a.h()) {
            this.n.setOnSystemUiVisibilityChangeListener(new r(this));
        }
        this.q = a.l(this, "reader_opt_full_screen");
        ReaderRandomActionBar readerRandomActionBar = this.o;
        boolean bl = this.q;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        if (bl) {
            layoutParams.setMargins(0, am.k((Context) readerRandomActionBar.getContext()), 0, 0);
        } else {
            layoutParams.setMargins(0, 0, 0, 0);
        }
        readerRandomActionBar.setLayoutParams(layoutParams);
        this.i();
        if (this.v) {
            this.h();
            this.v = false;
        }
        this.e.c((ae) ((Object) new e(this)));
        this.a();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onDestroy() {
        try {
            this.unregisterReceiver(this.A);
            this.unregisterReceiver(this.B);
        } catch (IllegalArgumentException var1_1) {
            var1_1.printStackTrace();
        }
        super.onDestroy();
    }

    @Override
    public boolean onKeyDown(int n2, KeyEvent keyEvent) {
        switch (n2) {
            default: {
                return super.onKeyDown(n2, keyEvent);
            }
            case 25: {
                if (this.g.b()) {
                    this.e();
                    return true;
                }
                return false;
            }
            case 24:
        }
        if (this.g.b()) {
            this.f();
            return true;
        }
        return false;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean onKeyUp(int n2, KeyEvent keyEvent) {
        if (n2 == 82) {
            this.g();
            return true;
        } else {
            if (n2 == 25 || n2 == 24) return true;
            return super.onKeyUp(n2, keyEvent);
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        a.b((Context) this, "firstRandomBooks", false);
    }

    @Override
    public void onResume() {
        super.onResume();
        this.getWindow().addFlags(128);
        this.j();
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("SaveSelectedPageIndex", this.k);
    }

    @Override
    public void onUserInteraction() {
        super.onUserInteraction();
        this.j();
    }
}
