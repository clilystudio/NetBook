package com.clilystudio.netbook.reader.txt;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.os.PowerManager$WakeLock;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.PagerAdapter;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View$OnSystemUiVisibilityChangeListener;
import android.view.WindowManager$LayoutParams;

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
import com.clilystudio.netbook.reader.ad;
import com.clilystudio.netbook.reader.ae;
import com.clilystudio.netbook.reader.bH;
import com.clilystudio.netbook.reader.bZ;
import com.clilystudio.netbook.reader.ca;
import com.clilystudio.netbook.reader.cb;
import com.clilystudio.netbook.reader.cc;
import com.clilystudio.netbook.reader.cd;
import com.clilystudio.netbook.reader.ce;
import com.clilystudio.netbook.reader.cn;
import com.clilystudio.netbook.reader.cw;
import com.clilystudio.netbook.reader.db;
import com.clilystudio.netbook.reader.dc;
import com.iflytek.cloud.InitListener;
import com.iflytek.cloud.SpeechSynthesizer;
import com.iflytek.cloud.SpeechUtility;
import com.iflytek.cloud.SynthesizerListener;

import java.io.File;
import java.util.LinkedList;

public class ReaderTxtActivity extends FragmentActivity implements com.clilystudio.netbook.reader.a, com.clilystudio.netbook.reader.d {

    public static String a = "";
    private int B;
    private int C;
    private String[] D;
    private LinkedList F;
    private SpeechSynthesizer G;
    private String c;
    private Reader d;
    private bZ e;
    private bH f;
    private com.clilystudio.netbook.reader.K g;
    private ReaderTocDialog h;
    private PagerWidget j;
    private int k;
    private View n;
    private ReaderActionBar o;
    private SettingWidget p;
    private boolean r;
    private boolean s;
    private boolean t;
    private View u;
    private AutoReaderSetWidget v;
    private AutoReaderTextView x;
    private View y;
    private ReaderTtsSetWidget z;
    private com.clilystudio.netbook.reader.o[] b = new com.clilystudio.netbook.reader.o[3];
    private Handler i = new Handler();
    private boolean l = true;
    private boolean m = true;
    private int q = -1;
    private int w = 0;
    private boolean A = false;
    private int E = 0;
    private PowerManager$WakeLock H = null;
    private SynthesizerListener I = new d(this);
    private Runnable J = new E(this);
    private BroadcastReceiver K = new F(this);
    private BroadcastReceiver L = new G(this);

    static int A(ReaderTxtActivity ReaderTxtActivity1) {
        int int2 = ReaderTxtActivity1.E;

        ReaderTxtActivity1.E = int2 + 1;
        return int2;
    }

    static View B(ReaderTxtActivity ReaderTxtActivity1) {
        return ReaderTxtActivity1.u;
    }

    static void C(ReaderTxtActivity ReaderTxtActivity1) {
        ReaderTxtActivity1.r();
    }

    static void D(ReaderTxtActivity ReaderTxtActivity1) {
        if (!ReaderTxtActivity1.isFinishing()) {
            uk.me.lewisdeane.ldialogs.h h2 = new uk.me.lewisdeane.ldialogs.h((Context) ReaderTxtActivity1);
            AlertDialog AlertDialog5;

            h2.b(2131034528);
            h2.a(2131034471, (DialogInterface$OnClickListener) new p(ReaderTxtActivity1)).b(2131034321, (DialogInterface$OnClickListener) new o(ReaderTxtActivity1));
            AlertDialog5 = h2.a();
            AlertDialog5.setCanceledOnTouchOutside(false);
            AlertDialog5.setOnCancelListener((DialogInterface$OnCancelListener) new q(ReaderTxtActivity1));
            try {
                AlertDialog5.show();
            } catch (Exception Exception6) {
                Exception6.printStackTrace();
                return;
            }
        }
    }

    static void E(ReaderTxtActivity ReaderTxtActivity1) {
        ReaderTxtActivity1.n();
    }

    static bH F(ReaderTxtActivity ReaderTxtActivity1) {
        return ReaderTxtActivity1.f;
    }

    static void G(ReaderTxtActivity ReaderTxtActivity1) {
        ReaderTxtActivity1.p();
    }

    static void H(ReaderTxtActivity ReaderTxtActivity1) {
        ReaderTxtActivity1.q();
    }

    static void I(ReaderTxtActivity ReaderTxtActivity1) {
        ReaderTxtActivity1.s();
    }

    static void J(ReaderTxtActivity ReaderTxtActivity1) {
        ReaderTxtActivity1.l();
    }

    static ReaderTocDialog K(ReaderTxtActivity ReaderTxtActivity1) {
        return ReaderTxtActivity1.h;
    }

    static void L(ReaderTxtActivity ReaderTxtActivity1) {
        ReaderTxtActivity1.o();
    }

    static void M(ReaderTxtActivity ReaderTxtActivity1) {
        ReaderTxtActivity1.getWindow().clearFlags(128);
    }

    static int N(ReaderTxtActivity ReaderTxtActivity1) {
        return ReaderTxtActivity1.q;
    }

    static int a(ReaderTxtActivity ReaderTxtActivity1, int int2) {
        ReaderTxtActivity1.w = int2;
        return int2;
    }

    static LinkedList a(ReaderTxtActivity ReaderTxtActivity1, LinkedList LinkedList2) {
        ReaderTxtActivity1.F = LinkedList2;
        return LinkedList2;
    }

    static void a(ReaderTxtActivity ReaderTxtActivity1) {
        ReaderTxtActivity1.t();
    }

    static void a(ReaderTxtActivity ReaderTxtActivity1, com.clilystudio.netbook.reader.n n2) {
        if (!n2.f()) {
            ReaderTxtActivity1.b[0].a(n2);
            n2.a((com.clilystudio.netbook.reader.e) new y(ReaderTxtActivity1));
        } else if (!n2.e()) {
            ReaderTxtActivity1.b[2].a(n2);
            n2.b((com.clilystudio.netbook.reader.e) new A(ReaderTxtActivity1));
        } else {
            ReaderTxtActivity1.b[1].a(n2);
            n2.a((com.clilystudio.netbook.reader.e) new C(ReaderTxtActivity1, n2));
        }
        if (ReaderTxtActivity1.w == 1) {
            if (!ReaderTxtActivity1.x.isShown())
                ReaderTxtActivity1.z();
            ReaderTxtActivity1.x.a();
        }
    }

    static boolean a(ReaderTxtActivity ReaderTxtActivity1, boolean boolean2) {
        ReaderTxtActivity1.A = true;
        return true;
    }

    static String[] a(ReaderTxtActivity ReaderTxtActivity1, String[] String_1darray2) {
        ReaderTxtActivity1.D = String_1darray2;
        return String_1darray2;
    }

    static int b(ReaderTxtActivity ReaderTxtActivity1) {
        return ReaderTxtActivity1.w;
    }

    static int b(ReaderTxtActivity ReaderTxtActivity1, int int2) {
        ReaderTxtActivity1.B = 0;
        return 0;
    }

    static boolean b(ReaderTxtActivity ReaderTxtActivity1, boolean boolean2) {
        ReaderTxtActivity1.t = true;
        return true;
    }

    static int c(ReaderTxtActivity ReaderTxtActivity1, int int2) {
        ReaderTxtActivity1.C = 0;
        return 0;
    }

    static PagerWidget c(ReaderTxtActivity ReaderTxtActivity1) {
        return ReaderTxtActivity1.j;
    }

    static void c(ReaderTxtActivity ReaderTxtActivity1, boolean boolean2) {
        ReaderTxtActivity1.a(false);
    }

    static int d(ReaderTxtActivity ReaderTxtActivity1, int int2) {
        ReaderTxtActivity1.E = 0;
        return 0;
    }

    static boolean d(ReaderTxtActivity ReaderTxtActivity1, boolean boolean2) {
        ReaderTxtActivity1.m = boolean2;
        return boolean2;
    }

    static com.clilystudio.netbook.reader.o[] d(ReaderTxtActivity ReaderTxtActivity1) {
        return ReaderTxtActivity1.b;
    }

    static int e(ReaderTxtActivity ReaderTxtActivity1) {
        return ReaderTxtActivity1.k;
    }

    static void e(ReaderTxtActivity ReaderTxtActivity1, int int2) {
        ReaderTxtActivity1.a(int2);
    }

    static int f(ReaderTxtActivity ReaderTxtActivity1, int int2) {
        ReaderTxtActivity1.k = int2;
        return int2;
    }

    static AutoReaderTextView f(ReaderTxtActivity ReaderTxtActivity1) {
        return ReaderTxtActivity1.x;
    }

    static int g(ReaderTxtActivity ReaderTxtActivity1, int int2) {
        ReaderTxtActivity1.q = int2;
        return int2;
    }

    static bZ g(ReaderTxtActivity ReaderTxtActivity1) {
        return ReaderTxtActivity1.e;
    }

    static com.clilystudio.netbook.reader.n h(ReaderTxtActivity ReaderTxtActivity1) {
        return ReaderTxtActivity1.w();
    }

    static void i(ReaderTxtActivity ReaderTxtActivity1) {
        ReaderTxtActivity1.x();
    }

    static void j(ReaderTxtActivity ReaderTxtActivity1) {
        ReaderTxtActivity1.g();
    }

    static void k(ReaderTxtActivity ReaderTxtActivity1) {
        if (ReaderTxtActivity1.b[ReaderTxtActivity1.k].f())
            ReaderTxtActivity1.j();
        else if (ReaderTxtActivity1.D != null) {
            if (ReaderTxtActivity1.E <= -1 + ReaderTxtActivity1.D.length) {
                ReaderTxtActivity1.b[ReaderTxtActivity1.k].a(ReaderTxtActivity1.B, ReaderTxtActivity1.C);
                ReaderTxtActivity1.G.startSpeaking(ReaderTxtActivity1.D[ReaderTxtActivity1.E], ReaderTxtActivity1.I);
                return;
            }
        } else {
            com.clilystudio.netbook.util.e.a((Activity) ReaderTxtActivity1, "\u83B7\u53D6\u7AE0\u8282\u5185\u5BB9\u5931\u8D25,\u8BF7\u9000\u51FA\u540E\u91CD\u8BD5");
            return;
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    static SpeechSynthesizer l(ReaderTxtActivity ReaderTxtActivity1) {
        return ReaderTxtActivity1.G;
    }

    static void m(ReaderTxtActivity ReaderTxtActivity1) {
        ReaderTxtActivity1.h();
    }
// Error: Internal #201: 
// The following method may not be correct.

    static void n(ReaderTxtActivity ReaderTxtActivity1) {
        ReaderTxtActivity1.i();
    }

    static void o(ReaderTxtActivity ReaderTxtActivity1) {
        ReaderTxtActivity1.x.setHeight(ReaderTxtActivity1.e.e);
        ReaderTxtActivity1.x.setTextSize(0, (float) ReaderTxtActivity1.e.a);
        ReaderTxtActivity1.x.setLineSpacing((float) ReaderTxtActivity1.e.b, 1.0F);
    }

    static void p(ReaderTxtActivity ReaderTxtActivity1) {
        ReaderTxtActivity1.v();
    }

    static void q(ReaderTxtActivity ReaderTxtActivity1) {
        if (ReaderTxtActivity1.e.h == 2130838077)
            ReaderTxtActivity1.x.setBackgroundResource(2130838076);
        else
            ReaderTxtActivity1.x.setBackgroundResource(ReaderTxtActivity1.e.h);
        ReaderTxtActivity1.x.setTextColor(ReaderTxtActivity1.e.g);
    }

    static void r(ReaderTxtActivity ReaderTxtActivity1) {
        ReaderTxtActivity1.m();
    }

    static SettingWidget s(ReaderTxtActivity ReaderTxtActivity1) {
        return ReaderTxtActivity1.p;
    }

    static void t(ReaderTxtActivity ReaderTxtActivity1) {
        if (!ReaderTxtActivity1.isFinishing()) {
            if (ReaderTxtActivity1.h == null) {
                ReaderTxtActivity1.h = ReaderTocDialog.a();
                ReaderTxtActivity1.h.a(ReaderTxtActivity1.d);
                ReaderTxtActivity1.h.a((DialogInterface$OnClickListener) new s(ReaderTxtActivity1));
            }
            com.clilystudio.netbook.hpay100.a.a.a(ReaderTxtActivity1, ReaderTxtActivity1.h);
        }
    }

    static void u(ReaderTxtActivity ReaderTxtActivity1) {
        boolean boolean2;

        if (!ReaderTxtActivity1.s)
            boolean2 = true;
        else
            boolean2 = false;
        ReaderTxtActivity1.s = boolean2;
        ReaderTxtActivity1.f();
        com.clilystudio.netbook.hpay100.a.a.b((Context) ReaderTxtActivity1, "reader_orientation", ReaderTxtActivity1.s);
    }

    static void v(ReaderTxtActivity ReaderTxtActivity1) {
        if (SpeechUtility.getUtility().checkServiceInstalled()) {
            Object[] Object_1darray5;

            ReaderTxtActivity1.t();
            ReaderTxtActivity1.w = 2;
            ReaderTxtActivity1.j.setReadMode(ReaderTxtActivity1.w);
            Object_1darray5 = ReaderTxtActivity1.w().d();
            if (Object_1darray5 != null) {
                ReaderTxtActivity1.D = (String[]) Object_1darray5[0];
                ReaderTxtActivity1.F = (LinkedList) Object_1darray5[1];
                ReaderTxtActivity1.a(false);
                ReaderTxtActivity1.g();
                if (ReaderTxtActivity1.H == null) {
                    ReaderTxtActivity1.H = ((PowerManager) ReaderTxtActivity1.getSystemService("power")).newWakeLock(1, "txt_lock_tag");
                    if (ReaderTxtActivity1.H != null)
                        ReaderTxtActivity1.H.acquire();
                }
            } else
                com.clilystudio.netbook.util.e.a((Activity) ReaderTxtActivity1, "\u83B7\u53D6\u7AE0\u8282\u5185\u5BB9\u5931\u8D25,\u8BF7\u9000\u51FA\u540E\u91CD\u8BD5");
        } else if (a == null || "".equals(a)) {
            String String2;
            uk.me.lewisdeane.ldialogs.h h3;

            if (com.clilystudio.netbook.hpay100.a.a.s((Context) ReaderTxtActivity1))
                String2 = ReaderTxtActivity1.getString(2131034533);
            else
                String2 = ReaderTxtActivity1.getString(2131034531);
            h3 = new uk.me.lewisdeane.ldialogs.h((Context) ReaderTxtActivity1);
            h3.d = ReaderTxtActivity1.getString(2131034532);
            h3.e = String2;
            h3.a("\u4E0B\u8F7D", (DialogInterface$OnClickListener) new c(ReaderTxtActivity1)).b("\u53D6\u6D88", (DialogInterface$OnClickListener) new b(ReaderTxtActivity1)).b();
        } else
            com.clilystudio.netbook.hpay100.a.a.a(a, (Activity) ReaderTxtActivity1, "\u8FFD\u4E66\u795E\u5668\u6717\u8BFB\u63D2\u4EF6");
    }

    static int w(ReaderTxtActivity ReaderTxtActivity1) {
        return ReaderTxtActivity1.E;
    }

    static String[] x(ReaderTxtActivity ReaderTxtActivity1) {
        return ReaderTxtActivity1.D;
    }

    static LinkedList y(ReaderTxtActivity ReaderTxtActivity1) {
        return ReaderTxtActivity1.F;
    }

    static void z(ReaderTxtActivity ReaderTxtActivity1) {
        ReaderTxtActivity1.F.remove(0);
        if (ReaderTxtActivity1.F.size() == 0) {
            ReaderTxtActivity1.E = 0;
            ReaderTxtActivity1.B = 0;
            ReaderTxtActivity1.C = 0;
        }
        ReaderTxtActivity1.e();
        ReaderTxtActivity1.x();
    }

    private void A() {
        i.removeCallbacks(J);
        if (f.d() != 0)
            i.postDelayed(J, (long) f.d());
    }

    private void a(int int1) {
        g.b(int1, (com.clilystudio.netbook.reader.e) new t(this), true);
    }

    private void a(boolean boolean1) {
        if (b[k].f())
            j();
        else if (D != null) {
            if (boolean1 && !D[0].startsWith("\u3000\u3000")) {
                B = 0;
                C = 1 + D[0].length();
                b[k].a(B, C);
                return;
            } else {
                B = C;
                if (E <= -1 + D.length) {
                    C = 1 + (B + D[E].length());
                    b[k].a(B, C);
                    G.startSpeaking(D[E], I);
                    return;
                }
            }
        } else {
            com.clilystudio.netbook.util.e.a((Activity) this, "\u83B7\u53D6\u7AE0\u8282\u5185\u5BB9\u5931\u8D25,\u8BF7\u9000\u51FA\u540E\u91CD\u8BD5");
            return;
        }
    }

    private void f() {
        if (s)
            setRequestedOrientation(1);
        else
            setRequestedOrientation(0);
    }

    private void g() {
    }

    private void h() {
    }

    private void i() {
        if (H != null && H.isHeld()) {
            H.release();
            H = null;
        }
    }

    private void j() {
        G.stopSpeaking();
        w = 0;
        j.setReadMode(w);
        h();
        t();
        B = 0;
        C = 0;
        E = 0;
    }

    private void k() {
        d.c((ae) new f(this));
        l();
    }

    private void l() {
        d.a((ad) new g(this), false);
    }

    private void m() {
        WindowManager$LayoutParams LayoutParams1 = getWindow().getAttributes();
        float float2;

        if (e.g())
            float2 = -1.0F;
        else
            float2 = (float) e.f() / 255.0F;
        LayoutParams1.screenBrightness = float2;
        getWindow().setAttributes(LayoutParams1);
    }

    private void n() {
        com.clilystudio.netbook.reader.n n1 = b[k].j();

        if (n1 != null && !n1.p()) {
            if (n1.n() == 1)
                a(n1.l());
            else {
                int int10 = n1.l();

                g.a(int10, (com.clilystudio.netbook.reader.e) new x(this), true);
            }
        } else {
            com.clilystudio.netbook.reader.o o2 = b[0];
            com.clilystudio.netbook.reader.o o3 = b[1];
            com.clilystudio.netbook.reader.o o4 = b[2];
            com.clilystudio.netbook.reader.n n5 = o2.j();
            com.clilystudio.netbook.reader.n n6 = o3.j();
            com.clilystudio.netbook.reader.n n7 = o4.j();

            if (k == 2 && n7 != null) {
                if (n7.e()) {
                    o2.a(n6);
                    o3.a(n7);
                    j.setCurrentItem(1, false);
                    n7.a((com.clilystudio.netbook.reader.e) new m(this, o4));
                }
                if (w == 1) {
                    if (!x.isShown())
                        z();
                    x.a();
                }
                if (w == 2) {
                    if (F.size() == 0) {
                        Object[] Object_1darray9 = n7.d();

                        if (Object_1darray9 != null) {
                            D = (String[]) Object_1darray9[0];
                            F = (LinkedList) Object_1darray9[1];
                            a(true);
                        }
                    } else
                        b[k].a(0, 1 + n7.c().length());
                }
            } else if (k == 0 && n5 != null && n5.f()) {
                o4.a(n6);
                o3.a(n5);
                j.setCurrentItem(1, false);
                n5.b((com.clilystudio.netbook.reader.e) new n(this, o2));
            } else if (k == 1) {
                if (w == 1) {
                    if (!x.isShown())
                        z();
                    x.a();
                } else if (w == 2) {
                    if (F.size() == 0) {
                        Object[] Object_1darray8 = n6.d();

                        if (Object_1darray8 != null) {
                            D = (String[]) Object_1darray8[0];
                            F = (LinkedList) Object_1darray8[1];
                            a(true);
                        }
                    } else
                        b[k].a(0, 1 + n6.c().length());
                }
            }
            o();
        }
    }

    private void o() {
        com.clilystudio.netbook.reader.n n1 = b[k].j();

        if (n1 != null) {
            d.a(n1.l(), n1.m());
            if (!n1.e())
                com.clilystudio.netbook.util.e.a((Activity) this, "\u5DF2\u7ECF\u662F\u6700\u540E\u4E00\u9875\u5566");
        }
    }

    private void p() {
        com.clilystudio.netbook.reader.o o1 = b[k];

        if (o1 != null) {
            com.clilystudio.netbook.reader.n n2 = o1.j();

            if (n2 != null) {
                if (n2.e()) {
                    t();
                    if (f.c())
                        j.a(1 + k);
                    else {
                        j.setCurrentItem(1 + k, false);
                        n();
                    }
                } else
                    com.clilystudio.netbook.util.e.a((Activity) this, "\u5DF2\u7ECF\u662F\u6700\u540E\u4E00\u9875\u5566");
                return;
            }
        }
    }

    private void q() {
        com.clilystudio.netbook.reader.o o1 = b[k];

        if (o1 != null) {
            com.clilystudio.netbook.reader.n n2 = o1.j();

            if (n2 != null) {
                if (n2.f()) {
                    t();
                    if (f.c())
                        j.a(-1 + k);
                    else {
                        j.setCurrentItem(-1 + k, false);
                        n();
                    }
                } else
                    com.clilystudio.netbook.util.e.a((Activity) this, 2131034407);
                return;
            }
        }
    }

    private void r() {
        Object Object1;
        int int2;
        int int3;
        BookFile BookFile7;
        int int8;
        int int9;

        g = new com.clilystudio.netbook.reader.K(d, e);
        Object1 = new h(this);
        int2 = b.length;
        for (int3 = 0; int3 < int2; ++int3) {
            com.clilystudio.netbook.reader.o o4 = new com.clilystudio.netbook.reader.o((Activity) this, e);

            b[int3] = o4;
            o4.a((com.clilystudio.netbook.reader.G) Object1);
        }
        registerReceiver(K, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        registerReceiver(L, new IntentFilter("android.intent.action.TIME_TICK"));
        j.setAdapter((PagerAdapter) new i(this));
        j.setOnPageChangeListener((cw) new j(this));
        j.setOnClickListener$4b8a6d15((com.umeng.update.a) new k(this));
        MyApplication.a().a(d);
        BookFile7 = TxtFileObject.getProgress(c);
        if (BookFile7 != null) {
            int9 = BookFile7.getProgressChapterIndex();
            int8 = BookFile7.getProgressCharOffset();
        } else {
            int8 = 0;
            int9 = 0;
        }
        g.a(int9, int8, (com.clilystudio.netbook.reader.e) new r(this), true);
    }

    private void s() {
        if (l)
            t();
        else if (!l) {
            l = true;
            if (w == 0) {
                o.setVisibility(0);
                getWindow().addFlags(2048);
                getWindow().clearFlags(1024);
                if (com.clilystudio.netbook.hpay100.a.a.h() && !m) {
                    n.setSystemUiVisibility(0);
                    return;
                }
            } else if (w == 1) {
                x.clearAnimation();
                v.a();
                return;
            } else if (w == 2) {
                G.pauseSpeaking();
                z.setPause(true);
                z.a();
                return;
            }
        }
    }

    private void t() {
        if (l) {
            l = false;
            o.setVisibility(8);
            p.setVisibility(8);
            v.b();
            if (w == 1)
                x.e();
            if (w == 2) {
                z.setVisibility(8);
                if (z.b()) {
                    G.resumeSpeaking();
                    z.setPause(false);
                }
            }
            getWindow().addFlags(1024);
            getWindow().clearFlags(2048);
            if (r)
                getWindow().addFlags(512);
            else {
                getWindow().addFlags(2048);
                getWindow().clearFlags(1024);
                getWindow().clearFlags(512);
                if (com.clilystudio.netbook.hpay100.a.a.h() && m)
                    n.setSystemUiVisibility(0);
            }
            com.clilystudio.netbook.hpay100.a.a.a(n);
        }
        if (f.f()) {
            if (com.clilystudio.netbook.hpay100.a.a.h() && m)
                n.setSystemUiVisibility(2055);
        } else if (com.clilystudio.netbook.hpay100.a.a.h() && m) {
            n.setSystemUiVisibility(1);
            return;
        }
    }

    private void u() {
        r = com.clilystudio.netbook.hpay100.a.a.l((Context) this, "reader_opt_full_screen");
        o.a(r);
        t();
    }

    private void v() {
        g.a((com.clilystudio.netbook.reader.e) new v(this));
    }

    private com.clilystudio.netbook.reader.n w() {
        com.clilystudio.netbook.reader.o o1 = b[k];

        if (o1 != null)
            return o1.j();
        else
            return null;
    }

    private void x() {
        com.clilystudio.netbook.reader.n n1 = w();

        if (n1 != null) {
            if (n1.e()) {
                if (w == 1) {
                    if (e.i())
                        x.setText((CharSequence) n1.a((Context) this));
                    else
                        x.setText((CharSequence) n1.c());
                    x.b();
                }
                j.setCurrentItem(1 + k, false);
                n();
            } else {
                x.clearAnimation();
                y();
                w = 0;
                j.setReadMode(0);
            }
        }
    }

    private void y() {
        x.setVisibility(8);
        y.setVisibility(8);
    }

    private void z() {
        x.setVisibility(0);
        if (e.h())
            y.setBackgroundResource(2130837612);
        else
            y.setBackgroundResource(2130837611);
        y.setVisibility(0);
    }

    public final void a() {
        v.c();
        x.c();
    }

    public final void b() {
        v.d();
        x.d();
    }

    public final void c() {
        Log.d("tag", "stopAutoReader");
        x.clearAnimation();
        w = 0;
        j.setReadMode(0);
        t();
        y();
        if (l)
            t();
        else {
            com.clilystudio.netbook.reader.n n2 = w();

            if (n2 != null && n2.f()) {
                j.setCurrentItem(-1 + k, false);
                n();
                return;
            }
        }
    }

    public final void d() {
        x();
    }

    public final void e() {
        int int1 = 0;
        com.clilystudio.netbook.reader.o[] o_1darray2;
        int int3;

        B = 0;
        C = 0;
        o_1darray2 = b;
        int3 = o_1darray2.length;
        while (int1 < int3) {
            o_1darray2[int1].a(-1, -1);
            ++int1;
        }
    }

    protected void onActivityResult(int int1, int int2, Intent Intent3) {
        f.a();
        if (g != null) {
            u();
            e.a(r);
            v();
        }
    }

    public void onBackPressed() {
        int int1 = 0;
        BookFile BookFile2;
        com.clilystudio.netbook.reader.o o3;

        super.onBackPressed();
        BookFile2 = new BookFile(new File(c));
        o3 = b[1];
        if (o3 != null) {
            com.clilystudio.netbook.reader.n n4 = o3.j();
            int int5;
            int int6;
            ChapterLink[] ChapterLink_1darray7;
            int int8;
            int int9;

            if (n4 == null)
                return;
            int5 = n4.a().getIndex();
            BookFile2.progressChapterIndex = int5;
            int6 = o3.j().b();
            BookFile2.progressCharOffset = int6;
            ChapterLink_1darray7 = d.d();
            int8 = 0;
            int9 = 0;
            while (int1 < ChapterLink_1darray7.length) {
                ChapterLink ChapterLink10 = ChapterLink_1darray7[int1];

                int9 += ChapterLink10.getTxtCharLength();
                if (int1 < int5)
                    int8 += ChapterLink10.getTxtCharLength();
                else if (int1 == int5)
                    int8 += int6;
                BookFile2.progress = (float) int8 / (float) int9;
                ++int1;
            }
        }
        TxtFileObject.updateProgress(BookFile2);
        com.clilystudio.netbook.event.i.a().c(new com.clilystudio.netbook.event.A());
    }

    public void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        getWindow().addFlags(256);
        getWindow().addFlags(512);
        s = com.clilystudio.netbook.hpay100.a.a.l((Context) this, "reader_orientation");
        f();
        setContentView(2130903123);
        c = getIntent().getStringExtra("file_name");
        if (Bundle1 != null) {
            k = Bundle1.getInt("SaveSelectedPageIndex", 0);
            t = Bundle1.getBoolean("SaveChangeOrientation");
        }
        if (G == null) {
            G = SpeechSynthesizer.createSynthesizer((Context) this, (InitListener) new e(this));
            G.setParameter("engine_type", "local");
            G.setParameter("speed", new StringBuilder().append(com.clilystudio.netbook.hpay100.a.a.a((Context) this, "speech_speed", 50)).toString());
            G.setParameter("voice_name", com.clilystudio.netbook.hpay100.a.a.d((Context) this, "speech_voice", ""));
        }
        j = (PagerWidget) findViewById(2131493158);
        u = findViewById(2131493167);
        o = (ReaderActionBar) findViewById(2131493172);
        p = (SettingWidget) findViewById(2131493165);
        e = new bZ((Activity) this);
        f = new bH((Context) this);
        d = new Reader(c);
        z = (ReaderTtsSetWidget) findViewById(2131493164);
        v = (AutoReaderSetWidget) findViewById(2131493163);
        x = (AutoReaderTextView) findViewById(2131493161);
        y = findViewById(2131493162);
        e.a((cc) new H(this));
        e.a((cb) new I(this));
        e.a((ce) new J(this));
        e.a((ca) new K(this));
        e.a((cd) new L(this));
        m();
        x.setTextColor(e.g);
        x.setHeight(e.e);
        x.setTextSize(0, (float) e.a);
        x.setLineSpacing((float) e.b, 1.0F);
        if (e.h == 2130838077)
            x.setBackgroundResource(2130838076);
        else
            x.setBackgroundResource(e.h);
        o.setReaderStyle(e);
        o.b(s);
        o.c(false);
        o.d(false);
        o.e(false);
        o.g(false);
        o.setOnBtnClickListener$7ead76dc((com.umeng.update.a) new M(this));
        p.setReaderStyle(e, o);
        p.a((db) new a(this));
        p.a((dc) new l(this));
        v.setOptionClickListener(this);
        x.setOnPageTurning(this);
        j.setAutoReaderTextView(x);
        z.a(G);
        z.setOnPlayChangeListener((cn) new w(this));
        n = getWindow().getDecorView();
        if (com.clilystudio.netbook.hpay100.a.a.h())
            n.setOnSystemUiVisibilityChangeListener((View$OnSystemUiVisibilityChangeListener) new u(this));
        u();
        if (t) {
            Reader Reader2 = MyApplication.a().b();

            if (Reader2 != null) {
                d = Reader2;
                r();
            } else
                k();
        } else
            k();
    }

    public void onDestroy() {
        try {
            unregisterReceiver(K);
            unregisterReceiver(L);
        } catch (IllegalArgumentException IllegalArgumentException1) {
            IllegalArgumentException1.printStackTrace();
        }
        if (G != null) {
            G.stopSpeaking();
            G.destroy();
            com.clilystudio.netbook.hpay100.a.a.K((Context) this);
            h();
        }
        i();
        super.onDestroy();
    }

    public boolean onKeyDown(int int1, KeyEvent KeyEvent2) {
        switch (int1) {
            default:
                return super.onKeyDown(int1, KeyEvent2);
            case 25:
                if (!f.b() || w != 0)
                    return false;
                p();
                return true;
            case 24:
                if (!f.b() || w != 0)
                    return false;
                q();
                return true;
        }
    }

    public boolean onKeyUp(int int1, KeyEvent KeyEvent2) {
        if (int1 == 82)
            s();
        else if (int1 != 25 && int1 != 24)
            return super.onKeyUp(int1, KeyEvent2);
        return true;
    }

    public void onResume() {
        super.onResume();
        getWindow().addFlags(128);
        A();
        t();
        if (w == 2 || !"".equals(a)) {
            z.setResetVoice(A);
            z.setVoiceSourceView();
            A = false;
        }
    }

    protected void onSaveInstanceState(Bundle Bundle1) {
        super.onSaveInstanceState(Bundle1);
        Bundle1.putInt("SaveSelectedPageIndex", k);
        Bundle1.putBoolean("SaveChangeOrientation", t);
    }

    public void onUserInteraction() {
        super.onUserInteraction();
        A();
    }
}
