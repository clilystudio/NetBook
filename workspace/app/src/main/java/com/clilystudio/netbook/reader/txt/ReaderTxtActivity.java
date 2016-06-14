package com.clilystudio.netbook.reader.txt;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.PagerAdapter;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.TxtFileObject;
import com.clilystudio.netbook.reader.AutoReaderSetWidget;
import com.clilystudio.netbook.reader.AutoReaderTextView;
import com.clilystudio.netbook.reader.PagerWidget;
import com.clilystudio.netbook.reader.Reader;
import com.clilystudio.netbook.reader.ReaderActionBar;
import com.clilystudio.netbook.reader.ReaderTocDialog;
import com.clilystudio.netbook.reader.ReaderTtsSetWidget;
import com.clilystudio.netbook.reader.SettingWidget;
import com.clilystudio.netbook.reader.TtsSpeakingService;
import com.clilystudio.netbook.reader.ad;
import com.clilystudio.netbook.reader.ae;
import com.clilystudio.netbook.reader.bH;
import com.clilystudio.netbook.reader.bZ;
import com.clilystudio.netbook.reader.cw;
import com.clilystudio.netbook.reader.db;
import com.clilystudio.netbook.reader.dc;
import com.clilystudio.netbook.reader.n;
import com.clilystudio.netbook.reader.o;
import com.iflytek.cloud.InitListener;
import com.iflytek.cloud.SpeechSynthesizer;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.cloud.SynthesizerListener;

import java.io.File;
import java.util.LinkedList;

public class ReaderTxtActivity extends FragmentActivity
        implements com.clilystudio.netbook.reader.a,
        com.clilystudio.netbook.reader.d {
    public static String a = "";
    private boolean A = false;
    private int B;
    private int C;
    private String[] D;
    private int E = 0;
    private LinkedList<Integer> F;
    private SpeechSynthesizer G;
    private PowerManager.WakeLock H = null;
    private SynthesizerListener I;
    private Runnable J;
    private BroadcastReceiver K;
    private BroadcastReceiver L;
    private o[] b = new o[3];
    private String c;
    private Reader d;
    private bZ e;
    private bH f;
    private com.clilystudio.netbook.reader.K g;
    private ReaderTocDialog h;
    private Handler i = new Handler();
    private PagerWidget j;
    private int k;
    private boolean l = true;
    private boolean m = true;
    private View n;
    private ReaderActionBar o;
    private SettingWidget p;
    private int q = -1;
    private boolean r;
    private boolean s;
    private boolean t;
    private View u;
    private AutoReaderSetWidget v;
    private int w = 0;
    private AutoReaderTextView x;
    private View y;
    private ReaderTtsSetWidget z;

    public ReaderTxtActivity() {
        this.I = new d(this);
        this.J = new E(this);
        this.K = new F(this);
        this.L = new G(this);
    }

    static /* synthetic */ int A(ReaderTxtActivity readerTxtActivity) {
        int n2 = readerTxtActivity.E;
        readerTxtActivity.E = n2 + 1;
        return n2;
    }

    static /* synthetic */ View B(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.u;
    }

    static /* synthetic */ void C(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.r();
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    static /* synthetic */ void D(ReaderTxtActivity readerTxtActivity) {
        if (readerTxtActivity.isFinishing()) return;
        uk.me.lewisdeane.ldialogs.h h2 = new uk.me.lewisdeane.ldialogs.h(readerTxtActivity);
        h2.b(2131034528);
        h2.a(2131034471, (DialogInterface.OnClickListener) ((Object) new p(readerTxtActivity))).b(2131034321, (DialogInterface.OnClickListener) ((Object) new com.clilystudio.netbook.reader.txt.o(readerTxtActivity)));
        AlertDialog alertDialog = h2.a();
        alertDialog.setCanceledOnTouchOutside(false);
        alertDialog.setOnCancelListener((DialogInterface.OnCancelListener) ((Object) new q(readerTxtActivity)));
        try {
            alertDialog.show();
            return;
        } catch (Exception var5_3) {
            var5_3.printStackTrace();
            return;
        }
    }

    static /* synthetic */ void E(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.n();
    }

    static /* synthetic */ bH F(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.f;
    }

    static /* synthetic */ void G(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.p();
    }

    static /* synthetic */ void H(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.q();
    }

    static /* synthetic */ void I(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.s();
    }

    static /* synthetic */ void J(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.l();
    }

    static /* synthetic */ ReaderTocDialog K(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.h;
    }

    static /* synthetic */ void L(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.o();
    }

    static /* synthetic */ void M(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.getWindow().clearFlags(128);
    }

    static /* synthetic */ int N(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.q;
    }

    static /* synthetic */ int a(ReaderTxtActivity readerTxtActivity, int n2) {
        readerTxtActivity.w = n2;
        return n2;
    }

    static /* synthetic */ LinkedList a(ReaderTxtActivity readerTxtActivity, LinkedList linkedList) {
        readerTxtActivity.F = linkedList;
        return linkedList;
    }

    static /* synthetic */ void a(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.t();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(ReaderTxtActivity readerTxtActivity, n n2) {
        if (!n2.f()) {
            readerTxtActivity.b[0].a(n2);
            n2.a((com.clilystudio.netbook.reader.e) new y(readerTxtActivity));
        } else if (!n2.e()) {
            readerTxtActivity.b[2].a(n2);
            n2.b((com.clilystudio.netbook.reader.e) new A(readerTxtActivity));
        } else {
            readerTxtActivity.b[1].a(n2);
            n2.a((com.clilystudio.netbook.reader.e) new C(readerTxtActivity, n2));
        }
        if (readerTxtActivity.w == 1) {
            if (!readerTxtActivity.x.isShown()) {
                readerTxtActivity.z();
            }
            readerTxtActivity.x.a();
        }
    }

    static /* synthetic */ boolean a(ReaderTxtActivity readerTxtActivity, boolean bl) {
        readerTxtActivity.A = true;
        return true;
    }

    static /* synthetic */ String[] a(ReaderTxtActivity readerTxtActivity, String[] arrstring) {
        readerTxtActivity.D = arrstring;
        return arrstring;
    }

    static /* synthetic */ int b(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.w;
    }

    static /* synthetic */ int b(ReaderTxtActivity readerTxtActivity, int n2) {
        readerTxtActivity.B = 0;
        return 0;
    }

    static /* synthetic */ boolean b(ReaderTxtActivity readerTxtActivity, boolean bl) {
        readerTxtActivity.t = true;
        return true;
    }

    static /* synthetic */ int c(ReaderTxtActivity readerTxtActivity, int n2) {
        readerTxtActivity.C = 0;
        return 0;
    }

    static /* synthetic */ PagerWidget c(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.j;
    }

    static /* synthetic */ void c(ReaderTxtActivity readerTxtActivity, boolean bl) {
        readerTxtActivity.a(false);
    }

    static /* synthetic */ int d(ReaderTxtActivity readerTxtActivity, int n2) {
        readerTxtActivity.E = 0;
        return 0;
    }

    static /* synthetic */ boolean d(ReaderTxtActivity readerTxtActivity, boolean bl) {
        readerTxtActivity.m = bl;
        return bl;
    }

    static /* synthetic */ o[] d(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.b;
    }

    static /* synthetic */ int e(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.k;
    }

    static /* synthetic */ void e(ReaderTxtActivity readerTxtActivity, int n2) {
        readerTxtActivity.a(n2);
    }

    static /* synthetic */ int f(ReaderTxtActivity readerTxtActivity, int n2) {
        readerTxtActivity.k = n2;
        return n2;
    }

    static /* synthetic */ AutoReaderTextView f(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.x;
    }

    static /* synthetic */ int g(ReaderTxtActivity readerTxtActivity, int n2) {
        readerTxtActivity.q = n2;
        return n2;
    }

    static /* synthetic */ bZ g(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.e;
    }

    static /* synthetic */ n h(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.w();
    }

    static /* synthetic */ void i(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.x();
    }

    static /* synthetic */ void j(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.g();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void k(ReaderTxtActivity readerTxtActivity) {
        if (readerTxtActivity.b[readerTxtActivity.k].f()) {
            readerTxtActivity.j();
            return;
        } else {
            if (readerTxtActivity.D == null) {
                com.clilystudio.netbook.util.e.a((Activity) readerTxtActivity, (String) "\u83b7\u53d6\u7ae0\u8282\u5185\u5bb9\u5931\u8d25,\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5");
                return;
            }
            if (readerTxtActivity.E > -1 + readerTxtActivity.D.length) return;
            {
                readerTxtActivity.b[readerTxtActivity.k].a(readerTxtActivity.B, readerTxtActivity.C);
                readerTxtActivity.G.startSpeaking(readerTxtActivity.D[readerTxtActivity.E], readerTxtActivity.I);
                return;
            }
        }
    }

    static /* synthetic */ SpeechSynthesizer l(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.G;
    }

    static /* synthetic */ void m(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.h();
    }

    static /* synthetic */ void n(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.i();
    }

    static /* synthetic */ void o(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.x.setHeight(readerTxtActivity.e.e);
        readerTxtActivity.x.setTextSize(0, readerTxtActivity.e.a);
        readerTxtActivity.x.setLineSpacing(readerTxtActivity.e.b, 1.0f);
    }

    static /* synthetic */ void p(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.v();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void q(ReaderTxtActivity readerTxtActivity) {
        if (readerTxtActivity.e.h == 2130838077) {
            readerTxtActivity.x.setBackgroundResource(2130838076);
        } else {
            readerTxtActivity.x.setBackgroundResource(readerTxtActivity.e.h);
        }
        readerTxtActivity.x.setTextColor(readerTxtActivity.e.g);
    }

    static /* synthetic */ void r(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.m();
    }

    static /* synthetic */ SettingWidget s(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.p;
    }

    static /* synthetic */ void t(ReaderTxtActivity readerTxtActivity) {
        if (!readerTxtActivity.isFinishing()) {
            if (readerTxtActivity.h == null) {
                readerTxtActivity.h = ReaderTocDialog.a();
                readerTxtActivity.h.a(readerTxtActivity.d);
                readerTxtActivity.h.a((DialogInterface.OnClickListener) ((Object) new s(readerTxtActivity)));
            }
            com.clilystudio.netbook.hpay100.a.a.a(readerTxtActivity, readerTxtActivity.h);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void u(ReaderTxtActivity readerTxtActivity) {
        boolean bl = !readerTxtActivity.s;
        readerTxtActivity.s = bl;
        readerTxtActivity.f();
        com.clilystudio.netbook.hpay100.a.a.b((Context) readerTxtActivity, "reader_orientation", readerTxtActivity.s);
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void v(ReaderTxtActivity readerTxtActivity) {
        if (SpeechUtility.getUtility().checkServiceInstalled()) {
            readerTxtActivity.t();
            readerTxtActivity.w = 2;
            readerTxtActivity.j.setReadMode(readerTxtActivity.w);
            Object[] arrobject = readerTxtActivity.w().d();
            if (arrobject == null) {
                com.clilystudio.netbook.util.e.a((Activity) readerTxtActivity, (String) "\u83b7\u53d6\u7ae0\u8282\u5185\u5bb9\u5931\u8d25,\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5");
                return;
            }
            readerTxtActivity.D = (String[]) arrobject[0];
            readerTxtActivity.F = (LinkedList) arrobject[1];
            readerTxtActivity.a(false);
            readerTxtActivity.g();
            if (readerTxtActivity.H == null) {
                readerTxtActivity.H = ((PowerManager) readerTxtActivity.getSystemService("power")).newWakeLock(1, "txt_lock_tag");
                if (readerTxtActivity.H != null) {
                    readerTxtActivity.H.acquire();
                }
            }
            return;
        }
        if (a != null && !"".equals(a)) {
            com.clilystudio.netbook.hpay100.a.a.a(a, readerTxtActivity, "\u8ffd\u4e66\u795e\u5668\u6717\u8bfb\u63d2\u4ef6");
            return;
        }
        String string = com.clilystudio.netbook.hpay100.a.a.s(readerTxtActivity) ? readerTxtActivity.getString(2131034533) : readerTxtActivity.getString(2131034531);
        uk.me.lewisdeane.ldialogs.h h2 = new uk.me.lewisdeane.ldialogs.h(readerTxtActivity);
        h2.d = readerTxtActivity.getString(2131034532);
        h2.e = string;
        h2.a("\u4e0b\u8f7d", (DialogInterface.OnClickListener) ((Object) new c(readerTxtActivity))).b("\u53d6\u6d88", (DialogInterface.OnClickListener) ((Object) new b(readerTxtActivity))).b();
    }

    static /* synthetic */ int w(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.E;
    }

    static /* synthetic */ String[] x(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.D;
    }

    static /* synthetic */ LinkedList y(ReaderTxtActivity readerTxtActivity) {
        return readerTxtActivity.F;
    }

    static /* synthetic */ void z(ReaderTxtActivity readerTxtActivity) {
        readerTxtActivity.F.remove(0);
        if (readerTxtActivity.F.size() == 0) {
            readerTxtActivity.E = 0;
            readerTxtActivity.B = 0;
            readerTxtActivity.C = 0;
        }
        readerTxtActivity.e();
        readerTxtActivity.x();
    }

    private void A() {
        this.i.removeCallbacks(this.J);
        if (this.f.d() != 0) {
            this.i.postDelayed(this.J, this.f.d());
        }
    }

    @Override
    private void a(int n2) {
        this.g.b(n2, (com.clilystudio.netbook.reader.e<n>) ((Object) new t(this)), true);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    private void a(boolean bl) {
        if (this.b[this.k].f()) {
            this.j();
            return;
        } else {
            if (this.D == null) {
                com.clilystudio.netbook.util.e.a((Activity) this, (String) "\u83b7\u53d6\u7ae0\u8282\u5185\u5bb9\u5931\u8d25,\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5");
                return;
            }
            if (bl && !this.D[0].startsWith("\u3000\u3000")) {
                this.B = 0;
                this.C = 1 + this.D[0].length();
                this.b[this.k].a(this.B, this.C);
                return;
            }
            this.B = this.C;
            if (this.E > -1 + this.D.length) return;
            {
                this.C = 1 + (this.B + this.D[this.E].length());
                this.b[this.k].a(this.B, this.C);
                this.G.startSpeaking(this.D[this.E], this.I);
                return;
            }
        }
    }

    private void f() {
        if (this.s) {
            this.setRequestedOrientation(1);
            return;
        }
        this.setRequestedOrientation(0);
    }

    private void g() {
        try {
            this.startService(new Intent(this, TtsSpeakingService.class));
            return;
        } catch (Exception var1_1) {
            return;
        }
    }

    private void h() {
        try {
            this.stopService(new Intent(this, TtsSpeakingService.class));
            return;
        } catch (Exception var1_1) {
            return;
        }
    }

    private void i() {
        if (this.H != null && this.H.isHeld()) {
            this.H.release();
            this.H = null;
        }
    }

    private void j() {
        this.G.stopSpeaking();
        this.w = 0;
        this.j.setReadMode(this.w);
        this.h();
        this.t();
        this.B = 0;
        this.C = 0;
        this.E = 0;
    }

    private void k() {
        this.d.c((ae) ((Object) new f(this)));
        this.l();
    }

    private void l() {
        this.d.a((ad) ((Object) new g(this)), false);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void m() {
        WindowManager.LayoutParams layoutParams = this.getWindow().getAttributes();
        float f2 = this.e.g() ? -1.0f : (float) this.e.f() / 255.0f;
        layoutParams.screenBrightness = f2;
        this.getWindow().setAttributes(layoutParams);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void n() {
        n n2 = this.b[this.k].j();
        if (n2 != null && !n2.p()) {
            if (n2.n() == 1) {
                this.a(n2.l());
                return;
            }
            int n3 = n2.l();
            this.g.a(n3, new x(this), true);
            return;
        }
        o o2 = this.b[0];
        o o3 = this.b[1];
        o o4 = this.b[2];
        n n4 = o2.j();
        n n5 = o3.j();
        n n6 = o4.j();
        if (this.k == 2 && n6 != null) {
            if (n6.e()) {
                o2.a(n5);
                o3.a(n6);
                this.j.setCurrentItem(1, false);
                n6.a((com.clilystudio.netbook.reader.e) ((Object) new m(this, o4)));
            }
            if (this.w == 1) {
                if (!this.x.isShown()) {
                    this.z();
                }
                this.x.a();
            }
            if (this.w == 2) {
                if (this.F.size() == 0) {
                    Object[] arrobject = n6.d();
                    if (arrobject != null) {
                        this.D = (String[]) arrobject[0];
                        this.F = (LinkedList) arrobject[1];
                        this.a(true);
                    }
                } else {
                    this.b[this.k].a(0, 1 + n6.c().length());
                }
            }
        } else if (this.k == 0 && n4 != null && n4.f()) {
            o4.a(n5);
            o3.a(n4);
            this.j.setCurrentItem(1, false);
            n4.b((com.clilystudio.netbook.reader.e) ((Object) new com.clilystudio.netbook.reader.txt.n(this, o2)));
        } else if (this.k == 1) {
            if (this.w == 1) {
                if (!this.x.isShown()) {
                    this.z();
                }
                this.x.a();
            } else if (this.w == 2) {
                if (this.F.size() == 0) {
                    Object[] arrobject = n5.d();
                    if (arrobject != null) {
                        this.D = (String[]) arrobject[0];
                        this.F = (LinkedList) arrobject[1];
                        this.a(true);
                    }
                } else {
                    this.b[this.k].a(0, 1 + n5.c().length());
                }
            }
        }
        this.o();
    }

    private void o() {
        n n2 = this.b[this.k].j();
        if (n2 != null) {
            this.d.a(n2.l(), n2.m());
            if (!n2.e()) {
                com.clilystudio.netbook.util.e.a((Activity) this, (String) "\u5df2\u7ecf\u662f\u6700\u540e\u4e00\u9875\u5566");
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void p() {
        n n2;
        o o2 = this.b[this.k];
        if (o2 == null || (n2 = o2.j()) == null) {
            return;
        }
        if (!n2.e()) {
            com.clilystudio.netbook.util.e.a((Activity) this, (String) "\u5df2\u7ecf\u662f\u6700\u540e\u4e00\u9875\u5566");
            return;
        }
        this.t();
        if (this.f.c()) {
            this.j.a(1 + this.k);
            return;
        }
        this.j.setCurrentItem(1 + this.k, false);
        this.n();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void q() {
        n n2;
        o o2 = this.b[this.k];
        if (o2 == null || (n2 = o2.j()) == null) {
            return;
        }
        if (!n2.f()) {
            com.clilystudio.netbook.util.e.a((Activity) this, (int) 2131034407);
            return;
        }
        this.t();
        if (this.f.c()) {
            this.j.a(-1 + this.k);
            return;
        }
        this.j.setCurrentItem(-1 + this.k, false);
        this.n();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void r() {
        int n2;
        int n3;
        this.g = new com.clilystudio.netbook.reader.K(this.d, this.e);
        h h2 = new h(this);
        int n4 = this.b.length;
        for (int i2 = 0; i2 < n4; ++i2) {
            o o2;
            this.b[i2] = o2 = new o((Activity) this, this.e);
            o2.a((com.clilystudio.netbook.reader.G) ((Object) h2));
        }
        this.registerReceiver(this.K, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        this.registerReceiver(this.L, new IntentFilter("android.intent.action.TIME_TICK"));
        this.j.setAdapter((PagerAdapter) ((Object) new i(this)));
        this.j.setOnPageChangeListener((cw) ((Object) new j(this)));
        this.j.setOnClickListener$4b8a6d15((com.umeng.update.a) ((Object) new k(this)));
        MyApplication.a().a(this.d);
        BookFile bookFile = TxtFileObject.getProgress(this.c);
        if (bookFile != null) {
            n2 = bookFile.getProgressChapterIndex();
            n3 = bookFile.getProgressCharOffset();
        } else {
            n3 = 0;
            n2 = 0;
        }
        this.g.a(n2, n3, (com.clilystudio.netbook.reader.e<n>) ((Object) new r(this)), true);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void s() {
        if (this.l) {
            this.t();
            return;
        } else {
            if (this.l) return;
            {
                this.l = true;
                if (this.w == 0) {
                    this.o.setVisibility(0);
                    this.getWindow().addFlags(2048);
                    this.getWindow().clearFlags(1024);
                    if (!com.clilystudio.netbook.hpay100.a.a.h() || this.m) return;
                    {
                        this.n.setSystemUiVisibility(0);
                        return;
                    }
                } else {
                    if (this.w == 1) {
                        this.x.clearAnimation();
                        this.v.a();
                        return;
                    }
                    if (this.w != 2) return;
                    {
                        this.G.pauseSpeaking();
                        this.z.setPause(true);
                        this.z.a();
                        return;
                    }
                }
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @SuppressLint(value = {"NewApi"})
    private void t() {
        if (this.l) {
            this.l = false;
            this.o.setVisibility(8);
            this.p.setVisibility(8);
            this.v.b();
            if (this.w == 1) {
                this.x.e();
            }
            if (this.w == 2) {
                this.z.setVisibility(8);
                if (this.z.b()) {
                    this.G.resumeSpeaking();
                    this.z.setPause(false);
                }
            }
            this.getWindow().addFlags(1024);
            this.getWindow().clearFlags(2048);
            if (this.r) {
                this.getWindow().addFlags(512);
            } else {
                this.getWindow().addFlags(2048);
                this.getWindow().clearFlags(1024);
                this.getWindow().clearFlags(512);
                if (com.clilystudio.netbook.hpay100.a.a.h() && this.m) {
                    this.n.setSystemUiVisibility(0);
                }
            }
            com.clilystudio.netbook.hpay100.a.a.a(this.n);
        }
        if (this.f.f()) {
            if (!com.clilystudio.netbook.hpay100.a.a.h() || !this.m) return;
            {
                this.n.setSystemUiVisibility(2055);
                return;
            }
        } else {
            if (!com.clilystudio.netbook.hpay100.a.a.h() || !this.m) return;
            {
                this.n.setSystemUiVisibility(1);
                return;
            }
        }
    }

    private void u() {
        this.r = com.clilystudio.netbook.hpay100.a.a.l(this, "reader_opt_full_screen");
        this.o.a(this.r);
        this.t();
    }

    private void v() {
        this.g.a(new v(this));
    }

    private n w() {
        o o2 = this.b[this.k];
        if (o2 != null) {
            return o2.j();
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void x() {
        n n2 = this.w();
        if (n2 == null) {
            return;
        }
        if (!n2.e()) {
            this.x.clearAnimation();
            this.y();
            this.w = 0;
            this.j.setReadMode(0);
            return;
        }
        if (this.w == 1) {
            if (this.e.i()) {
                this.x.setText(n2.a((Context) this));
            } else {
                this.x.setText(n2.c());
            }
            this.x.b();
        }
        this.j.setCurrentItem(1 + this.k, false);
        this.n();
    }

    private void y() {
        this.x.setVisibility(8);
        this.y.setVisibility(8);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void z() {
        this.x.setVisibility(0);
        if (this.e.h()) {
            this.y.setBackgroundResource(2130837612);
        } else {
            this.y.setBackgroundResource(2130837611);
        }
        this.y.setVisibility(0);
    }

    public final void a() {
        this.v.c();
        this.x.c();
    }

    public final void b() {
        this.v.d();
        this.x.d();
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void c() {
        Log.d("tag", "stopAutoReader");
        this.x.clearAnimation();
        this.w = 0;
        this.j.setReadMode(0);
        this.t();
        this.y();
        if (this.l) {
            this.t();
            return;
        } else {
            n n2 = this.w();
            if (n2 == null || !n2.f()) return;
            {
                this.j.setCurrentItem(-1 + this.k, false);
                this.n();
                return;
            }
        }
    }

    public final void d() {
        this.x();
    }

    public final void e() {
        this.B = 0;
        this.C = 0;
        o[] arro = this.b;
        int n2 = arro.length;
        for (int i2 = 0; i2 < n2; ++i2) {
            arro[i2].a(-1, -1);
        }
    }

    @Override
    protected void onActivityResult(int n2, int n3, Intent intent) {
        this.f.a();
        if (this.g != null) {
            this.u();
            this.e.a(this.r);
            this.v();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onBackPressed() {
        super.onBackPressed();
        BookFile bookFile = new BookFile(new File(this.c));
        o o2 = this.b[1];
        if (o2 != null) {
            n n2 = o2.j();
            if (n2 == null) return;
            {
                int n3;
                int n4;
                bookFile.progressChapterIndex = n4 = n2.a().getIndex();
                bookFile.progressCharOffset = n3 = o2.j().b();
                ChapterLink[] arrchapterLink = this.d.d();
                int n5 = 0;
                int n6 = 0;
                for (int i2 = 0; i2 < arrchapterLink.length; ++i2) {
                    ChapterLink chapterLink = arrchapterLink[i2];
                    n6 += chapterLink.getTxtCharLength();
                    if (i2 < n4) {
                        n5 += chapterLink.getTxtCharLength();
                    } else if (i2 == n4) {
                        n5 += n3;
                    }
                    bookFile.progress = (float) n5 / (float) n6;
                }
            }
        } else {
            TxtFileObject.updateProgress(bookFile);
            com.clilystudio.netbook.event.i.a().c(new com.clilystudio.netbook.event.A());
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.getWindow().addFlags(256);
        this.getWindow().addFlags(512);
        this.s = com.clilystudio.netbook.hpay100.a.a.l(this, "reader_orientation");
        this.f();
        this.setContentView(2130903123);
        this.c = this.getIntent().getStringExtra("file_name");
        if (bundle != null) {
            this.k = bundle.getInt("SaveSelectedPageIndex", 0);
            this.t = bundle.getBoolean("SaveChangeOrientation");
        }
        if (this.G == null) {
            this.G = SpeechSynthesizer.createSynthesizer(this, (InitListener) ((Object) new e(this)));
            this.G.setParameter("engine_type", "local");
            this.G.setParameter("speed", "" + com.clilystudio.netbook.hpay100.a.a.a((Context) this, "speech_speed", 50));
            this.G.setParameter("voice_name", com.clilystudio.netbook.hpay100.a.a.d((Context) this, "speech_voice", ""));
        }
        this.j = (PagerWidget) this.findViewById(2131493158);
        this.u = this.findViewById(2131493167);
        this.o = (ReaderActionBar) this.findViewById(2131493172);
        this.p = (SettingWidget) this.findViewById(2131493165);
        this.e = new bZ(this);
        this.f = new bH(this);
        this.d = new Reader(this.c);
        this.z = (ReaderTtsSetWidget) this.findViewById(2131493164);
        this.v = (AutoReaderSetWidget) this.findViewById(2131493163);
        this.x = (AutoReaderTextView) this.findViewById(2131493161);
        this.y = this.findViewById(2131493162);
        this.e.a(new H(this));
        this.e.a(new I(this));
        this.e.a(new J(this));
        this.e.a(new K(this));
        this.e.a(new L(this));
        this.m();
        this.x.setTextColor(this.e.g);
        this.x.setHeight(this.e.e);
        this.x.setTextSize(0, this.e.a);
        this.x.setLineSpacing(this.e.b, 1.0f);
        if (this.e.h == 2130838077) {
            this.x.setBackgroundResource(2130838076);
        } else {
            this.x.setBackgroundResource(this.e.h);
        }
        this.o.setReaderStyle(this.e);
        this.o.b(this.s);
        this.o.c(false);
        this.o.d(false);
        this.o.e(false);
        this.o.g(false);
        this.o.setOnBtnClickListener$7ead76dc(new M(this));
        this.p.setReaderStyle(this.e, this.o);
        this.p.a((db) ((Object) new a(this)));
        this.p.a((dc) ((Object) new l(this)));
        this.v.setOptionClickListener(this);
        this.x.setOnPageTurning(this);
        this.j.setAutoReaderTextView(this.x);
        this.z.a(this.G);
        this.z.setOnPlayChangeListener(new w(this));
        this.n = this.getWindow().getDecorView();
        if (com.clilystudio.netbook.hpay100.a.a.h()) {
            this.n.setOnSystemUiVisibilityChangeListener((View.OnSystemUiVisibilityChangeListener) ((Object) new u(this)));
        }
        this.u();
        if (!this.t) {
            this.k();
            return;
        }
        Reader reader = MyApplication.a().b();
        if (reader != null) {
            this.d = reader;
            this.r();
            return;
        }
        this.k();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onDestroy() {
        try {
            this.unregisterReceiver(this.K);
            this.unregisterReceiver(this.L);
        } catch (IllegalArgumentException var1_1) {
            var1_1.printStackTrace();
        }
        if (this.G != null) {
            this.G.stopSpeaking();
            this.G.destroy();
            com.clilystudio.netbook.hpay100.a.a.K(this);
            this.h();
        }
        this.i();
        super.onDestroy();
    }

    @Override
    public boolean onKeyDown(int n2, KeyEvent keyEvent) {
        switch (n2) {
            default: {
                return super.onKeyDown(n2, keyEvent);
            }
            case 25: {
                if (this.f.b() && this.w == 0) {
                    this.p();
                    return true;
                }
                return false;
            }
            case 24:
        }
        if (this.f.b() && this.w == 0) {
            this.q();
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
            this.s();
            return true;
        } else {
            if (n2 == 25 || n2 == 24) return true;
            return super.onKeyUp(n2, keyEvent);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        this.getWindow().addFlags(128);
        this.A();
        this.t();
        if (this.w == 2 || !"".equals(a)) {
            this.z.setResetVoice(this.A);
            this.z.setVoiceSourceView();
            this.A = false;
        }
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("SaveSelectedPageIndex", this.k);
        bundle.putBoolean("SaveChangeOrientation", this.t);
    }

    @Override
    public void onUserInteraction() {
        super.onUserInteraction();
        this.A();
    }
}
