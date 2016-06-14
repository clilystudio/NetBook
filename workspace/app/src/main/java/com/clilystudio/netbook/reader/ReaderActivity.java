package com.clilystudio.netbook.reader;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.ColorDrawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.view.PagerAdapter;
import android.view.KeyEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupMenu;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.db.MixTocRecord;
import com.clilystudio.netbook.db.TocReadRecord;
import com.clilystudio.netbook.event.C;
import com.clilystudio.netbook.event.j;
import com.clilystudio.netbook.event.v;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.ui.BaseReadSlmActivity;
import com.clilystudio.netbook.ui.BookInfoActivity;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;
import com.clilystudio.netbook.util.V;
import com.clilystudio.netbook.util.k;
import com.clilystudio.netbook.widget.ThemeLoadingView;
import com.iflytek.cloud.InitListener;
import com.iflytek.cloud.SpeechSynthesizer;
import com.iflytek.cloud.SynthesizerListener;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.jeremyfeinstein.slidingmenu.lib.g;
import com.squareup.a.l;
import com.umeng.a.b;

import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

import cn.sharesdk.framework.PlatformActionListener;

public class ReaderActivity extends BaseReadSlmActivity
        implements View.OnClickListener,
        a,
        com.clilystudio.netbook.reader.d {
    public static String a = "";
    private int A;
    private View B;
    private TextView C;
    private String D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private boolean I = false;
    private boolean J = false;
    private boolean K = false;
    private int L;
    private int M = 0;
    private boolean N;
    private ThemeLoadingView O;
    private int P;
    private int Q;
    private ReaderMenuFragment R = null;
    private PopupWindow S;
    private AutoReaderTextView T;
    private View U;
    private SpeechSynthesizer V;
    private int W;
    private int X;
    private String[] Y;
    private int Z = 0;
    private LinkedList<Integer> aa;
    private PowerManager.WakeLock ab = null;
    private SynthesizerListener ac;
    private Runnable ad;
    private BroadcastReceiver ae;
    private Handler af;
    private BroadcastReceiver ag;
    private BroadcastReceiver ah;
    private o[] b = new o[3];
    private String c;
    private String d;
    private String e;
    private String f;
    private Reader g;
    private bZ h;
    private bH i;
    private K j;
    private ReaderTocDialog k;
    private Handler l = new Handler();
    private PagerWidget m;
    private int n;
    private boolean o = true;
    private boolean p = true;
    private View q;
    private ReaderActionBar r;
    private SettingWidget s;
    private AutoReaderSetWidget t;
    private ReaderTtsSetWidget u;
    private boolean v = false;
    private int w = -1;
    private LinkedList<String> x = new LinkedList();
    private int y;
    private int z;

    public ReaderActivity() {
        this.ac = new am(this);
        this.ad = new aY(this);
        this.ae = new bg(this);
        this.af = new bh(this);
        this.ag = new bi(this);
        this.ah = new bj(this);
    }

    static /* synthetic */ ReaderActionBar A(ReaderActivity readerActivity) {
        return readerActivity.r;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void B(ReaderActivity readerActivity) {
        boolean bl = !readerActivity.G;
        readerActivity.G = bl;
        readerActivity.r();
        com.clilystudio.netbook.hpay100.a.a.b((Context) readerActivity, "reader_orientation", readerActivity.G);
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void C(ReaderActivity readerActivity) {
        if (readerActivity.J || readerActivity.K) {
            com.clilystudio.netbook.util.e.a((Activity) readerActivity, (String) "\u7f13\u5b58\u4e0d\u53ef\u7528");
            return;
        }
        boolean bl = android.support.design.widget.am.g((String) readerActivity.c) == 2;
        if (bl) {
            new h(readerActivity).a(2131034526).b(2131034340).a(2131034341, (DialogInterface.OnClickListener) ((Object) new be(readerActivity))).b(2131034523, (DialogInterface.OnClickListener) ((Object) new bd(readerActivity))).b();
            return;
        }
        CharSequence[] arrcharSequence = new String[]{readerActivity.getString(2131034337), readerActivity.getString(2131034338), readerActivity.getString(2131034306)};
        new h(readerActivity).a(2131034343).a(arrcharSequence, (DialogInterface.OnClickListener) ((Object) new bc(readerActivity))).a().show();
    }

    static /* synthetic */ String D(ReaderActivity readerActivity) {
        return readerActivity.d;
    }

    static /* synthetic */ void E(ReaderActivity readerActivity) {
        if (readerActivity.ab == null) {
            readerActivity.ab = ((PowerManager) readerActivity.getSystemService("power")).newWakeLock(1, "lock_tag");
            if (readerActivity.ab != null) {
                readerActivity.ab.acquire();
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void F(ReaderActivity readerActivity) {
        String string = com.clilystudio.netbook.hpay100.a.a.s(readerActivity) ? readerActivity.getString(2131034533) : readerActivity.getString(2131034531);
        h h2 = new h(readerActivity);
        h2.d = readerActivity.getString(2131034532);
        h2.e = string;
        h2.a("\u4e0b\u8f7d", (DialogInterface.OnClickListener) new ao(readerActivity)).b("\u53d6\u6d88", (DialogInterface.OnClickListener) ((Object) new an(readerActivity))).b();
    }

    static /* synthetic */ int G(ReaderActivity readerActivity) {
        return readerActivity.Z;
    }

    static /* synthetic */ String[] H(ReaderActivity readerActivity) {
        return readerActivity.Y;
    }

    static /* synthetic */ LinkedList I(ReaderActivity readerActivity) {
        return readerActivity.aa;
    }

    static /* synthetic */ void J(ReaderActivity readerActivity) {
        readerActivity.aa.remove(0);
        if (readerActivity.aa.size() == 0) {
            readerActivity.Z = 0;
            readerActivity.W = 0;
            readerActivity.X = 0;
        }
        readerActivity.e();
        readerActivity.N();
    }

    static /* synthetic */ int K(ReaderActivity readerActivity) {
        int n2 = readerActivity.Z;
        readerActivity.Z = n2 + 1;
        return n2;
    }

    static /* synthetic */ void L(ReaderActivity readerActivity) {
        readerActivity.O();
    }

    static /* synthetic */ String M(ReaderActivity readerActivity) {
        return readerActivity.c;
    }

    static /* synthetic */ void N(ReaderActivity readerActivity) {
        readerActivity.O.a();
    }

    static /* synthetic */ boolean O(ReaderActivity readerActivity) {
        return readerActivity.I;
    }

    static /* synthetic */ void P(ReaderActivity readerActivity) {
        readerActivity.O.b();
    }

    static /* synthetic */ void Q(ReaderActivity readerActivity) {
        readerActivity.B();
    }

    static /* synthetic */ void R(ReaderActivity readerActivity) {
        readerActivity.u();
    }

    static /* synthetic */ void S(ReaderActivity readerActivity) {
        readerActivity.v();
    }

    static /* synthetic */ bH T(ReaderActivity readerActivity) {
        return readerActivity.i;
    }

    static /* synthetic */ void U(ReaderActivity readerActivity) {
        readerActivity.y();
    }

    static /* synthetic */ void V(ReaderActivity readerActivity) {
        readerActivity.z();
    }

    static /* synthetic */ void W(ReaderActivity readerActivity) {
        readerActivity.F();
    }

    static /* synthetic */ void X(ReaderActivity readerActivity) {
        readerActivity.x();
    }

    static /* synthetic */ Reader Y(ReaderActivity readerActivity) {
        return readerActivity.g;
    }

    static /* synthetic */ void Z(ReaderActivity readerActivity) {
        readerActivity.t();
    }

    static /* synthetic */ int a(ReaderActivity readerActivity, int n2) {
        readerActivity.M = n2;
        return n2;
    }

    public static Intent a(Context context, String string, String string2, String string3, String string4, boolean bl) {
        return new d().a(context, ReaderActivity.class).a("BOOK_ID", string).a("BOOK_TITLE", string2).a("TOC_ID", string3).a("SOURCE_HOST", string4).a("IS_SHOW_TOC", Boolean.valueOf(bl)).a();
    }

    public static Intent a(Context context, String string, String string2, String string3, String string4, boolean bl, HashMap<String, String> hashMap, boolean bl2) {
        return new d().a(context, ReaderActivity.class).a("BOOK_ID", string).a("BOOK_TITLE", string2).a("TOC_ID", string3).a("SOURCE_HOST", (String) null).a("IS_SHOW_TOC", Boolean.valueOf(false)).a("CHAPTERS_KEY", hashMap).a("HAS_OTHER_SOURCES", Boolean.valueOf(bl2)).a();
    }

    public static Intent a(Context context, String string, String string2, String string3, String string4, boolean bl, boolean bl2) {
        return new d().a(context, ReaderActivity.class).a("BOOK_ID", string).a("BOOK_TITLE", string2).a("TOC_ID", string3).a("SOURCE_HOST", (String) null).a("IS_SHOW_TOC", Boolean.valueOf(false)).a("HAS_OTHER_SOURCES", Boolean.valueOf(bl2)).a();
    }

    static /* synthetic */ String a(ReaderActivity readerActivity, String string) {
        readerActivity.D = string;
        return string;
    }

    static /* synthetic */ LinkedList a(ReaderActivity readerActivity, LinkedList linkedList) {
        readerActivity.aa = linkedList;
        return linkedList;
    }

    static /* synthetic */ void a(ReaderActivity readerActivity) {
        readerActivity.G();
    }

    static /* synthetic */ void a(ReaderActivity readerActivity, View view) {
        PopupMenu popupMenu = new PopupMenu(readerActivity, view, 53);
        popupMenu.getMenuInflater().inflate(2131558404, popupMenu.getMenu());
        popupMenu.setOnMenuItemClickListener((PopupMenu.OnMenuItemClickListener) ((Object) new ap(readerActivity)));
        popupMenu.show();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(ReaderActivity readerActivity, n n2) {
        if (!n2.f()) {
            readerActivity.b[0].a(n2, true);
            readerActivity.m.setCurrentItem(0, false);
            n2.a((e) new aB(readerActivity));
        } else if (!n2.e()) {
            readerActivity.b[2].a(n2, true);
            readerActivity.m.setCurrentItem(2, false);
            n2.b((e) new aD(readerActivity));
        } else {
            readerActivity.b[1].a(n2, true);
            readerActivity.m.setCurrentItem(1, false);
            n2.a((e) new aF(readerActivity, n2));
        }
        if (readerActivity.M == 1) {
            readerActivity.M();
        }
        readerActivity.a(n2);
    }

    static /* synthetic */ boolean a(ReaderActivity readerActivity, boolean bl) {
        readerActivity.v = true;
        return true;
    }

    static /* synthetic */ String[] a(ReaderActivity readerActivity, String[] arrstring) {
        readerActivity.Y = arrstring;
        return arrstring;
    }

    static /* synthetic */ int aa(ReaderActivity readerActivity) {
        return readerActivity.L;
    }

    static /* synthetic */ ReaderTocDialog ab(ReaderActivity readerActivity) {
        return readerActivity.k;
    }

    static /* synthetic */ boolean ac(ReaderActivity readerActivity) {
        return readerActivity.H;
    }

    static /* synthetic */ void ad(ReaderActivity readerActivity) {
        if (android.support.design.widget.am.f()) {
            com.clilystudio.netbook.util.e.a((Activity) readerActivity, (String) readerActivity.getString(2131034325));
            return;
        }
        readerActivity.g.a();
        com.clilystudio.netbook.hpay100.a.a.u(readerActivity.c);
        String string = readerActivity.getString(2131034283);
        Object[] arrobject = new Object[]{readerActivity.d};
        com.clilystudio.netbook.util.e.a((Activity) readerActivity, (String) String.format(string, arrobject));
    }

    static /* synthetic */ void ae(ReaderActivity readerActivity) {
        readerActivity.getWindow().clearFlags(128);
    }

    static /* synthetic */ int af(ReaderActivity readerActivity) {
        return readerActivity.P;
    }

    static /* synthetic */ void ag(ReaderActivity readerActivity) {
        CharSequence charSequence = readerActivity.r.b().getText();
        if (charSequence != null) {
            android.support.design.widget.am.a((Activity) readerActivity, (String) charSequence.toString(), (String) null);
        }
    }

    static /* synthetic */ View ah(ReaderActivity readerActivity) {
        return readerActivity.B;
    }

    static /* synthetic */ int ai(ReaderActivity readerActivity) {
        return readerActivity.z;
    }

    static /* synthetic */ Handler aj(ReaderActivity readerActivity) {
        return readerActivity.af;
    }

    static /* synthetic */ int ak(ReaderActivity readerActivity) {
        return readerActivity.A;
    }

    static /* synthetic */ int al(ReaderActivity readerActivity) {
        return readerActivity.y;
    }

    static /* synthetic */ TextView am(ReaderActivity readerActivity) {
        return readerActivity.C;
    }

    static /* synthetic */ String an(ReaderActivity readerActivity) {
        return readerActivity.D;
    }

    static /* synthetic */ LinkedList ao(ReaderActivity readerActivity) {
        return readerActivity.x;
    }

    static /* synthetic */ int ap(ReaderActivity readerActivity) {
        return readerActivity.w;
    }

    static /* synthetic */ int b(ReaderActivity readerActivity, int n2) {
        readerActivity.W = 0;
        return 0;
    }

    static /* synthetic */ void b(ReaderActivity readerActivity) {
        new V(readerActivity);
    }

    static /* synthetic */ void b(ReaderActivity readerActivity, View view) {
        View view2 = readerActivity.getLayoutInflater().inflate(2130903371, null);
        view2.findViewById(2131493931).setOnClickListener(readerActivity);
        view2.findViewById(2131493932).setOnClickListener(readerActivity);
        view2.findViewById(2131493933).setOnClickListener(readerActivity);
        readerActivity.S = new PopupWindow(view2, readerActivity.getResources().getDimensionPixelSize(2131099902), -2);
        readerActivity.S.setFocusable(true);
        readerActivity.S.setOutsideTouchable(true);
        readerActivity.S.setBackgroundDrawable(new ColorDrawable(0));
        readerActivity.S.getContentView().setFocusableInTouchMode(true);
        readerActivity.S.getContentView().setFocusable(true);
        int[] arrn = new int[2];
        view.getLocationOnScreen(arrn);
        readerActivity.S.showAtLocation(view, 0, arrn[0] - readerActivity.S.getWidth() + view.getWidth(), android.support.design.widget.am.l((Context) readerActivity) + android.support.design.widget.am.k((Context) readerActivity));
    }

    static /* synthetic */ boolean b(ReaderActivity readerActivity, boolean bl) {
        readerActivity.H = true;
        return true;
    }

    static /* synthetic */ int c(ReaderActivity readerActivity, int n2) {
        readerActivity.X = 0;
        return 0;
    }

    static /* synthetic */ void c(ReaderActivity readerActivity) {
        ChapterLink[] arrchapterLink = readerActivity.g.d();
        if (arrchapterLink == null || arrchapterLink.length == 0) {
            // empty if block
        }
    }

    static /* synthetic */ void c(ReaderActivity readerActivity, boolean bl) {
        readerActivity.a(false);
    }

    static /* synthetic */ int d(ReaderActivity readerActivity) {
        return readerActivity.Q;
    }

    static /* synthetic */ int d(ReaderActivity readerActivity, int n2) {
        readerActivity.Z = 0;
        return 0;
    }

    static /* synthetic */ boolean d(ReaderActivity readerActivity, boolean bl) {
        readerActivity.J = bl;
        return bl;
    }

    static /* synthetic */ ReaderMenuFragment e(ReaderActivity readerActivity) {
        return readerActivity.R;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void e(ReaderActivity readerActivity, int n2) {
        String string = "";
        String string2 = "";
        BookReadRecord bookReadRecord = BookReadRecord.get(readerActivity.c);
        if (bookReadRecord != null) {
            string = bookReadRecord.getTitle();
            string2 = bookReadRecord.getFullCover();
        } else {
            BookInfo bookInfo = MyApplication.a().c();
            if (bookInfo != null && bookInfo.getId() != null && bookInfo.getId().equals(readerActivity.c)) {
                string = bookInfo.getTitle();
                string2 = bookInfo.getFullCover();
            }
        }
        T.a(readerActivity, string, "\u8fd9\u672c\u4e66\u5199\u7684\u5f88\u597d\uff0c\u4f60\u600e\u4e48\u770b\uff1f", "http://share.zhuishushenqi.com/book/" + readerActivity.c, string2, n2, (PlatformActionListener) ((Object) new ba(readerActivity)));
    }

    static /* synthetic */ boolean e(ReaderActivity readerActivity, boolean bl) {
        readerActivity.I = false;
        return false;
    }

    static /* synthetic */ void f(ReaderActivity readerActivity) {
        readerActivity.H();
    }

    static /* synthetic */ void f(ReaderActivity readerActivity, int n2) {
        readerActivity.b(-4);
    }

    static /* synthetic */ boolean f(ReaderActivity readerActivity, boolean bl) {
        readerActivity.p = bl;
        return bl;
    }

    static /* synthetic */ int g(ReaderActivity readerActivity) {
        return readerActivity.M;
    }

    static /* synthetic */ int g(ReaderActivity readerActivity, int n2) {
        readerActivity.n = n2;
        return n2;
    }

    static /* synthetic */ boolean g(ReaderActivity readerActivity, boolean bl) {
        readerActivity.E = true;
        return true;
    }

    static /* synthetic */ PagerWidget h(ReaderActivity readerActivity) {
        return readerActivity.m;
    }

    static /* synthetic */ void h(ReaderActivity readerActivity, int n2) {
        readerActivity.c(n2);
    }

    static /* synthetic */ int i(ReaderActivity readerActivity, int n2) {
        readerActivity.P = n2;
        return n2;
    }

    static /* synthetic */ o[] i(ReaderActivity readerActivity) {
        return readerActivity.b;
    }

    static /* synthetic */ int j(ReaderActivity readerActivity) {
        return readerActivity.n;
    }

    static /* synthetic */ int j(ReaderActivity readerActivity, int n2) {
        readerActivity.Q = n2;
        return n2;
    }

    static /* synthetic */ int k(ReaderActivity readerActivity, int n2) {
        readerActivity.z = n2;
        return n2;
    }

    static /* synthetic */ AutoReaderTextView k(ReaderActivity readerActivity) {
        return readerActivity.T;
    }

    static /* synthetic */ int l(ReaderActivity readerActivity, int n2) {
        readerActivity.y = n2;
        return n2;
    }

    static /* synthetic */ bZ l(ReaderActivity readerActivity) {
        return readerActivity.h;
    }

    static /* synthetic */ int m(ReaderActivity readerActivity, int n2) {
        readerActivity.A = n2;
        return n2;
    }

    static /* synthetic */ n m(ReaderActivity readerActivity) {
        return readerActivity.A();
    }

    static /* synthetic */ int n(ReaderActivity readerActivity, int n2) {
        readerActivity.w = n2;
        return n2;
    }

    static /* synthetic */ void n(ReaderActivity readerActivity) {
        readerActivity.N();
    }

    static /* synthetic */ void o(ReaderActivity readerActivity) {
        try {
            readerActivity.startService(new Intent(readerActivity, TtsSpeakingService.class));
            return;
        } catch (Exception var1_1) {
            return;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void p(ReaderActivity readerActivity) {
        if (readerActivity.b[readerActivity.n].f()) {
            readerActivity.o();
            return;
        } else {
            if (readerActivity.Y == null) {
                com.clilystudio.netbook.util.e.a((Activity) readerActivity, (String) "\u83b7\u53d6\u7ae0\u8282\u5185\u5bb9\u5931\u8d25,\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5");
                return;
            }
            if (readerActivity.Z > -1 + readerActivity.Y.length) return;
            {
                readerActivity.b[readerActivity.n].a(readerActivity.W, readerActivity.X);
                readerActivity.V.startSpeaking(readerActivity.Y[readerActivity.Z], readerActivity.ac);
                return;
            }
        }
    }

    static /* synthetic */ SpeechSynthesizer q(ReaderActivity readerActivity) {
        return readerActivity.V;
    }

    static /* synthetic */ void r(ReaderActivity readerActivity) {
        readerActivity.n();
    }

    static /* synthetic */ void s(ReaderActivity readerActivity) {
        readerActivity.p();
    }

    static /* synthetic */ void t(ReaderActivity readerActivity) {
        readerActivity.T.setHeight(readerActivity.h.e);
        readerActivity.T.setTextSize(0, readerActivity.h.a);
        readerActivity.T.setLineSpacing(readerActivity.h.b, 1.0f);
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void u(ReaderActivity readerActivity) {
        if (readerActivity.h.h == 2130838077) {
            readerActivity.T.setBackgroundResource(2130838076);
        } else {
            readerActivity.T.setBackgroundResource(readerActivity.h.h);
        }
        readerActivity.T.setTextColor(readerActivity.h.g);
    }

    static /* synthetic */ void v(ReaderActivity readerActivity) {
        readerActivity.R();
    }

    static /* synthetic */ SettingWidget w(ReaderActivity readerActivity) {
        return readerActivity.s;
    }

    static /* synthetic */ void x(ReaderActivity readerActivity) {
        if (readerActivity.J || readerActivity.K) {
            com.clilystudio.netbook.util.e.a((Activity) readerActivity, (String) "\u76ee\u5f55\u4e0d\u53ef\u7528");
            return;
        }
        readerActivity.D();
    }

    static /* synthetic */ void y(ReaderActivity readerActivity) {
        h h2 = new h(readerActivity);
        h2.e = "\u662f\u5426\u4f7f\u7528\u539f\u7f51\u9875\u9605\u8bfb\uff1f";
        h2.a(2131034424, (DialogInterface.OnClickListener) ((Object) new bb(readerActivity))).b(2131034129, null).b();
    }

    static /* synthetic */ void z(ReaderActivity readerActivity) {
        readerActivity.startActivity(BookPostTabActivity.a(readerActivity, readerActivity.c, readerActivity.d));
        BookTopicEnterRecord.updateCount(readerActivity.c, readerActivity.P);
    }

    private n A() {
        o o2 = this.b[this.n];
        if (o2 != null) {
            return o2.j();
        }
        return null;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void B() {
        var1_1 = 1;
        if (this.H) {
            this.j.a(this.g);
        }
        this.m.setOnPageChangeListener((cw) new aw(this));
        this.m.setOnClickListener$4b8a6d15((com.umeng.update.a) new ax(this));
        var2_2 = MyApplication.a().g();
        if (!this.c.equals(var2_2))**GOTO lbl25
        var3_3 = BookReadRecord.getOnShelf(this.c);
        if (var3_3 != null && this.g != null)**GOTO lbl12
        var4_4 = -1;
        **GOTO lbl -1000
        lbl12:
        // 1 sources:
        var5_5 = var3_3.getTocIndex();
        var6_6 = var3_3.getChapterTitle();
        var4_4 = this.g.g();
        if (var5_5 <= var4_4) {
            var4_4 = var5_5;
        }
        if (!this.a(var7_7 = new com.clilystudio.netbook.util.ae(), var6_6, var4_4)) {
            var8_8 = var1_1;
            var10_10 = var1_1;
        } else lbl - 1000: // 5 sources:
        {
            do {
                if (var4_4 != -1) {
                    this.g.a(var4_4, 0);
                }
                MyApplication.a().c(null);
                lbl25:
                // 2 sources:
                MyApplication.a().a(this.g);
                if (this.q() || com.clilystudio.netbook.hpay100.a.a.h(this.L)) {
                    if (this.q()) {
                        if (MixTocRecord.get(this.e) == null) {
                            var1_1 = 0;
                        }
                    } else if (TocReadRecord.get(this.e) == null) {
                        var1_1 = 0;
                    }
                    if (var1_1 != 0) {
                        this.g();
                        return;
                    }
                    this.c(0);
                    return;
                }
                if (this.I && !this.H) {
                    this.D();
                    return;
                }
                this.g();
                return;
                break;
            } while (true);
        }
        for (var9_9 = 0; var9_9 < 20; ++var9_9) {
            if (var10_10 == 0)**GOTO lbl51
            var12_12 = var5_5 + var8_8;
            if (!this.a(var7_7, var6_6, var12_12))**GOTO lbl49
            var4_4 = var12_12;
            **GOTO lbl -1000
            lbl49:
            // 1 sources:
            var10_10 = 0;
            continue;
            lbl51:
            // 1 sources:
            var11_11 = var5_5 - var8_8;
            if (!this.a(var7_7, var6_6, var11_11))**GOTO lbl55
            var4_4 = var11_11;
            **GOTO lbl -1000
            lbl55:
            // 1 sources:
            ++var8_8;
            var10_10 = var1_1;
        }
        var4_4 = -1;
        **while (true)
    }

    private void C() {
        aL aL2 = new aL(this);
        aM aM2 = new aM(this);
        aN aN2 = new aN(this);
        for (int k = 0; k < 3; ++k) {
            o o2;
            this.b[k] = o2 = new o((Activity) this, this.h);
            o2.a((G) aL2);
            o2.a((H) aM2);
            o2.a((F) aN2);
        }
        this.registerReceiver(this.ag, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        this.registerReceiver(this.ah, new IntentFilter("android.intent.action.TIME_TICK"));
    }

    private void D() {
        if (this.isFinishing()) {
            return;
        }
        if (this.k == null) {
            this.k = ReaderTocDialog.a();
            this.k.a(this.g, this.x);
            this.k.a(new aO(this));
            this.k.a(new aP(this));
            this.k.a(new aQ(this));
        }
        com.clilystudio.netbook.hpay100.a.a.a(this, this.k);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void E() {
        if (this.b == null) {
            return;
        }
        o[] arro = this.b;
        int n2 = arro.length;
        int n3 = 0;
        while (n3 < n2) {
            ReaderChapter readerChapter;
            n n4 = arro[n3].j();
            if (n4 != null && (readerChapter = n4.a()) != null) {
                readerChapter.setMaxIndex(this.g.g());
            }
            ++n3;
        }
    }

    private void F() {
        if (this.o) {
            this.H();
            return;
        }
        this.G();
    }

    /*
     * Enabled aggressive block sorting
     */
    @SuppressLint(value = {"NewApi"})
    private void G() {
        if (this.o) return;
        {
            this.o = true;
            if (this.M == 0) {
                this.r.setVisibility(0);
                this.getWindow().addFlags(2048);
                this.getWindow().clearFlags(1024);
                if (this.E) {
                    this.B.setVisibility(0);
                }
                n n2 = this.A();
                String string = null;
                if (n2 != null) {
                    ReaderChapter readerChapter = n2.a();
                    string = null;
                    if (readerChapter != null) {
                        string = n2.a().getLink();
                    }
                }
                this.r.setChapterLink(string);
                if (!com.clilystudio.netbook.hpay100.a.a.h() || this.p) return;
                {
                    this.q.setSystemUiVisibility(0);
                    return;
                }
            } else {
                if (this.M == 1) {
                    this.T.clearAnimation();
                    this.t.a();
                    return;
                }
                if (this.M != 2) return;
                {
                    this.V.pauseSpeaking();
                    this.u.setPause(true);
                    this.u.a();
                    b.a(this, "tts_pause_speaking", this.d);
                    return;
                }
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @SuppressLint(value = {"NewApi"})
    private void H() {
        if (this.o) {
            this.o = false;
            this.r.setVisibility(8);
            this.s.setVisibility(8);
            this.t.b();
            if (this.M == 1) {
                this.T.e();
            }
            if (this.M == 2) {
                this.u.setVisibility(8);
                if (this.u.b()) {
                    this.V.resumeSpeaking();
                    this.u.setPause(false);
                }
            }
            this.B.setVisibility(8);
            this.getWindow().addFlags(1024);
            this.getWindow().clearFlags(2048);
            if (this.F) {
                this.getWindow().addFlags(512);
            } else {
                this.getWindow().addFlags(2048);
                this.getWindow().clearFlags(1024);
                this.getWindow().clearFlags(512);
                if (com.clilystudio.netbook.hpay100.a.a.h() && this.p) {
                    this.q.setSystemUiVisibility(0);
                }
            }
            com.clilystudio.netbook.hpay100.a.a.a(this.q);
        }
        if (this.i.f()) {
            if (!com.clilystudio.netbook.hpay100.a.a.h() || !this.p) return;
            {
                this.q.setSystemUiVisibility(2055);
                return;
            }
        } else {
            if (!com.clilystudio.netbook.hpay100.a.a.h() || !this.p) return;
            {
                this.q.setSystemUiVisibility(1);
                return;
            }
        }
    }

    private void I() {
        this.T.setVisibility(8);
        this.U.setVisibility(8);
    }

    private void J() {
        this.F = com.clilystudio.netbook.hpay100.a.a.l(this, "reader_opt_full_screen");
        this.r.a(this.F);
        this.H();
    }

    private void K() {
        this.l.removeCallbacks(this.ad);
        int n2 = this.i.d();
        if (n2 != 0) {
            this.l.postDelayed(this.ad, n2);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void L() {
        this.T.clearAnimation();
        this.M = 0;
        this.m.setReadMode(0);
        this.H();
        this.I();
        if (this.o) {
            this.H();
            return;
        } else {
            n n2 = this.A();
            if (n2 == null || !n2.f()) return;
            {
                this.m.setCurrentItem(-1 + this.n, false);
                this.v();
                return;
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void M() {
        if (this.b[this.n].f()) {
            this.L();
            return;
        }
        if (!this.T.isShown()) {
            this.T.setVisibility(0);
            if (this.h.h()) {
                this.U.setBackgroundResource(2130837612);
            } else {
                this.U.setBackgroundResource(2130837611);
            }
            this.U.setVisibility(0);
        }
        this.T.a();
    }

    /*
     * Enabled aggressive block sorting
     */
    private void N() {
        n n2 = this.A();
        if (n2 == null) {
            return;
        }
        this.E();
        if (!n2.e() && this.w()) {
            com.clilystudio.netbook.util.e.a((Activity) this, (String) this.getString(2131034318));
            this.T.clearAnimation();
            this.I();
            this.M = 0;
            this.m.setReadMode(0);
            return;
        }
        if (this.M == 1) {
            if (this.h.i()) {
                this.T.setText(n2.a((Context) this));
            } else {
                this.T.setText(n2.c());
            }
            this.T.b();
        }
        this.m.setCurrentItem(1 + this.n, false);
        this.v();
    }

    private void O() {
        this.P();
        this.startActivity(ModeListActivity.a(this, this.c, this.d, this.L));
        this.overridePendingTransition(2130968602, 2130968603);
    }

    private void P() {
        BookReadRecord bookReadRecord;
        if (this.g != null && (bookReadRecord = BookReadRecord.get(this.c)) != null) {
            bookReadRecord.setTocIndex(this.g.k());
            bookReadRecord.setChapterTitle(this.g.n());
            bookReadRecord.save();
        }
    }

    private void Q() {
        if (com.clilystudio.netbook.hpay100.a.a.d()) {
            Iterator<String> iterator = com.clilystudio.netbook.hpay100.a.a.j(this.c, this.e).iterator();
            while (iterator.hasNext()) {
                String string = android.support.design.widget.am.f((String) iterator.next());
                this.x.add(string);
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void R() {
        WindowManager.LayoutParams layoutParams = this.getWindow().getAttributes();
        float f2 = this.h.g() ? -1.0f : (float) this.h.f() / 255.0f;
        layoutParams.screenBrightness = f2;
        this.getWindow().setAttributes(layoutParams);
    }

    private String a(String string) {
        return this.getIntent().getStringExtra(string);
    }

    @Override
    private void a(n n2) {
        if (n2 == null) {
            return;
        }
        SlidingMenu slidingMenu = this.g_();
        if (this.J || this.K) {
            slidingMenu.setSlidingEnabled(false);
            return;
        }
        if (n2.e()) {
            slidingMenu.setSlidingEnabled(false);
            return;
        }
        slidingMenu.setSlidingEnabled(true);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    private void a(boolean bl) {
        if (this.b[this.n].f()) {
            this.o();
            return;
        } else {
            if (this.Y == null) {
                com.clilystudio.netbook.util.e.a((Activity) this, (String) "\u83b7\u53d6\u7ae0\u8282\u5185\u5bb9\u5931\u8d25,\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5");
                return;
            }
            if (bl && !this.Y[0].startsWith("\u3000\u3000")) {
                this.W = 0;
                this.X = 1 + this.Y[0].length();
                this.b[this.n].a(this.W, this.X);
                return;
            }
            this.W = this.X;
            if (this.Z > -1 + this.Y.length) return;
            {
                this.X = 1 + (this.W + this.Y[this.Z].length());
                this.b[this.n].a(this.W, this.X);
                this.V.startSpeaking(this.Y[this.Z], this.ac);
                return;
            }
        }
    }

    private boolean a(com.clilystudio.netbook.util.ae ae2, String string, int n2) {
        boolean bl = ae2.a(string, this.g.c(n2));
        boolean bl2 = false;
        if (bl) {
            this.g.a(n2);
            this.g.b(0);
            bl2 = true;
        }
        return bl2;
    }

    private void b(int n2) {
        this.j.a((e<n>) ((Object) new aA(this)), n2);
    }

    private void c(int n2) {
        this.j.b(n2, new aS(this), true);
    }

    private void n() {
        try {
            this.stopService(new Intent(this, TtsSpeakingService.class));
            return;
        } catch (Exception var1_1) {
            return;
        }
    }

    private void o() {
        this.V.stopSpeaking();
        this.M = 0;
        this.m.setReadMode(this.M);
        this.n();
        this.H();
        this.W = 0;
        this.X = 0;
        this.Z = 0;
    }

    private void p() {
        if (this.ab != null && this.ab.isHeld()) {
            this.ab.release();
            this.ab = null;
        }
    }

    private boolean q() {
        if (5 == this.L) {
            return true;
        }
        return false;
    }

    private void r() {
        if (this.G) {
            this.setRequestedOrientation(1);
            return;
        }
        this.setRequestedOrientation(0);
    }

    private void s() {
        this.g.a((ae) ((Object) new ar(this)));
        this.g.b((ae) ((Object) new as(this)));
        this.t();
    }

    private void t() {
        Reader reader;
        boolean bl;
        at at2;
        block2:
        {
            reader = this.g;
            at2 = new at(this);
            if (!this.I) {
                boolean bl2 = this.getIntent().getBooleanExtra("extra_force_online", false);
                bl = false;
                if (!bl2) break block2;
            }
            bl = true;
        }
        reader.a((ad) ((Object) at2), bl);
    }

    private void u() {
        this.m.setAdapter((PagerAdapter) ((Object) new ay(this)));
        this.m.setOnClickListener$4b8a6d15((com.umeng.update.a) ((Object) new az(this)));
    }

    /*
     * Enabled aggressive block sorting
     */
    private void v() {
        n n2 = this.A();
        if (n2 != null && !n2.p()) {
            if (n2.n() != 1) {
                int n3 = n2.l();
                this.j.a(n3, new aT(this), true);
                return;
            }
            this.c(n2.l());
            return;
        } else {
            o o2 = this.b[0];
            o o3 = this.b[1];
            o o4 = this.b[2];
            n n4 = o2.j();
            n n5 = o3.j();
            n n6 = o4.j();
            if (this.n == 2 && n6 != null) {
                if (!n6.e() && !this.w()) {
                    int n7 = this.g.f();
                    this.O.a();
                    this.g.b().a(new aH(this, n7));
                    return;
                }
                o3.a(n6, true);
                this.m.setCurrentItem(1, false);
                o2.a(n5);
                n6.a((e) new aK(this, o4));
                this.x();
                this.a(n2);
                if (this.M == 1) {
                    this.M();
                }
                if (this.M != 2) return;
                {
                    if (this.aa.size() != 0) {
                        this.b[this.n].a(0, 1 + n6.c().length());
                        return;
                    }
                    Object[] arrobject = n6.d();
                    if (arrobject == null) return;
                    {
                        this.Y = (String[]) arrobject[0];
                        this.aa = (LinkedList) arrobject[1];
                        this.a(true);
                        return;
                    }
                }
            } else {
                if (this.n == 0 && n4 != null && n4.f()) {
                    o3.a(n4, true);
                    this.m.setCurrentItem(1, false);
                    o4.a(n5);
                    n4.b((e) new aI(this, o2));
                    this.x();
                    this.a(n2);
                    return;
                }
                if (this.n != 1) return;
                {
                    if (this.M == 1) {
                        this.M();
                        return;
                    }
                    if (this.M != 2) return;
                    {
                        if (this.aa.size() != 0) {
                            this.b[this.n].a(0, 1 + n5.c().length());
                            return;
                        }
                        Object[] arrobject = n5.d();
                        if (arrobject == null) return;
                        {
                            this.Y = (String[]) arrobject[0];
                            this.aa = (LinkedList) arrobject[1];
                            this.a(true);
                            return;
                        }
                    }
                }
            }
        }
    }

    private boolean w() {
        ag ag2 = this.g.b();
        if (ag2 == null || ag2.getStatus() == AsyncTask.Status.FINISHED) {
            return true;
        }
        return false;
    }

    private void x() {
        n n2 = this.A();
        if (n2 == null) {
            return;
        }
        this.g.a(n2.l(), n2.m());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void y() {
        if (this.o) {
            this.H();
            return;
        } else {
            n n2 = this.A();
            if (n2 == null) return;
            {
                this.E();
                if (!n2.e() && this.w()) {
                    this.h_();
                    return;
                }
                if (!this.i.c()) {
                    this.m.setCurrentItem(1 + this.n, false);
                    this.v();
                    return;
                }
                if (this.m.a(1 + this.n)) return;
                {
                    this.v();
                    return;
                }
            }
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private void z() {
        if (this.o) {
            this.H();
            return;
        }
        n n2 = this.A();
        if (n2 == null) return;
        {
            if (!n2.f()) {
                com.clilystudio.netbook.util.e.a((Activity) this, (int) 2131034407);
                return;
            }
            if (this.i.c()) {
                this.m.a(-1 + this.n);
                return;
            }
        }
        this.m.setCurrentItem(-1 + this.n, false);
        this.v();
    }

    @l
    public void OnUpdateBalanceEvent(com.clilystudio.netbook.event.G g2) {
        if (android.support.design.widget.am.e() != null) {
            bo bo2 = new bo(this, 0);
            Object[] arrobject = new String[]{android.support.design.widget.am.e().getToken()};
            bo2.b(arrobject);
        }
    }

    public final void a() {
        this.t.c();
        this.T.c();
    }

    @Deprecated
    @Override
    public final void a(int n2) {
        TextView textView = (TextView) this.findViewById(2131493454);
        if (textView == null) {
            return;
        }
        if (n2 > 0) {
            textView.setVisibility(0);
            if (n2 > 99) {
                n2 = 99;
            }
            textView.setText(String.valueOf(n2));
            return;
        }
        this.Q = 0;
        textView.setVisibility(8);
    }

    public final void b() {
        this.t.d();
        this.T.d();
    }

    public final void c() {
        this.L();
    }

    public final void d() {
        this.N();
    }

    public final void e() {
        this.W = 0;
        this.X = 0;
        o[] arro = this.b;
        int n2 = arro.length;
        for (int k = 0; k < n2; ++k) {
            arro[k].a(-1, -1);
        }
    }

    public final String f() {
        return this.e;
    }

    public final void g() {
        this.j.a(new aR(this));
    }

    public final String h() {
        if (this.g != null) {
            return this.g.i();
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void i() {
        this.P();
        String string = this.g != null && this.g.i() != null ? this.g.i() : this.f;
        I.d = string;
        this.startActivity(ReaderMixActivity.a(this, this.c, this.d, string));
        this.overridePendingTransition(2130968602, 2130968603);
    }

    public final boolean j() {
        if (this.b.length > this.n) {
            return this.b[this.n].f();
        }
        return false;
    }

    public final void k() {
        o[] arro = this.b;
        int n2 = arro.length;
        for (int k = 0; k < n2; ++k) {
            arro[k].h();
        }
    }

    public final String l() {
        return this.c;
    }

    public final boolean m() {
        return this.N;
    }

    @Override
    protected void onActivityResult(int n2, int n3, Intent intent) {
        super.onActivityResult(n2, n3, intent);
        this.i.a();
        if (this.j != null) {
            this.J();
            this.h.a(this.F);
            this.g();
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onBackPressed() {
        if (this.g.m()) {
            super.onBackPressed();
        } else {
            new h(this).a(2131034455).b(2131034287).a(2131034280, (DialogInterface.OnClickListener) new aX(this)).b(2131034281, (DialogInterface.OnClickListener) new aW(this)).a().show();
        }
        if (this.j()) {
            this.b[this.n].g();
        }
    }

    @Override
    public void onClick(View view) {
        if (this.S != null) {
            this.S.dismiss();
        }
        switch (view.getId()) {
            default: {
                return;
            }
            case 2131493931: {
                this.O();
                return;
            }
            case 2131493932: {
                this.startActivity(BookInfoActivity.a(this, this.c));
                return;
            }
            case 2131493933:
        }
        new com.clilystudio.netbook.ui.cb(this, new aZ(this)).a().show();
    }

    @l
    public void onConvertChanged(j j2) {
        this.h.b();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.getWindow().addFlags(256);
        this.getWindow().addFlags(512);
        this.G = com.clilystudio.netbook.hpay100.a.a.l(this, "reader_orientation");
        this.r();
        this.setContentView(2130903121);
        i.a().a(this);
        Intent intent = this.getIntent();
        this.c = this.a("BOOK_ID");
        this.d = this.a("BOOK_TITLE");
        this.f = this.a("SOURCE_HOST");
        this.I = intent.getBooleanExtra("IS_SHOW_TOC", false);
        String string = this.a("TOC_ID");
        if ("MIX_TOC_ID".equals(string)) {
            string = "MIX_TOC_ID" + this.c;
        }
        this.e = string;
        BookReadRecord bookReadRecord = BookReadRecord.get(this.c);
        int n2 = bookReadRecord != null ? bookReadRecord.getReadMode() : MyApplication.a().d();
        this.L = n2;
        this.N = intent.getBooleanExtra("HAS_OTHER_SOURCES", true);
        I.a = this.c;
        I.b = this.d;
        I.d = this.f;
        I.c = this.e;
        I.g = this.L;
        com.clilystudio.netbook.hpay100.a.a.i(this, this.c);
        this.g = new Reader(this.c, this.e, this.d, this.L);
        this.g.a(this.getIntent().getStringExtra("SOURCE_ID"));
        this.g.a((Map) ((Object) this.getIntent().getSerializableExtra("CHAPTERS_KEY")));
        if (bundle != null) {
            this.n = bundle.getInt("SaveSelectedPageIndex", 0);
            this.H = bundle.getBoolean("SaveChangeOrientation");
            this.J = bundle.getBoolean("SaveTocDisable");
            this.K = bundle.getBoolean("SaveModeDisable");
        }
        this.Q();
        FragmentTransaction fragmentTransaction = this.getSupportFragmentManager().beginTransaction();
        this.R = ReaderMenuFragment.a(this.c, this.d);
        fragmentTransaction.replace(2131493799, this.R);
        try {
            fragmentTransaction.commitAllowingStateLoss();
        } catch (IllegalStateException var8_16) {
            var8_16.printStackTrace();
        }
        SlidingMenu slidingMenu = this.g_();
        slidingMenu.setMode(1);
        slidingMenu.setShadowWidthRes(2131099915);
        slidingMenu.setShadowDrawable(2130838138);
        slidingMenu.setBehindOffsetRes(2131099775);
        slidingMenu.setFadeDegree(0.35f);
        slidingMenu.setBehindScrollScale(0.0f);
        slidingMenu.setTouchModeAbove(1);
        slidingMenu.setSlidingEnabled(false);
        slidingMenu.setOnOpenedListener((g) ((Object) new aj(this)));
        if (this.V == null) {
            this.V = SpeechSynthesizer.createSynthesizer(this, (InitListener) ((Object) new al(this)));
            this.V.setParameter("engine_type", "local");
            this.V.setParameter("speed", "" + com.clilystudio.netbook.hpay100.a.a.a((Context) this, "speech_speed", 50));
            this.V.setParameter("voice_name", com.clilystudio.netbook.hpay100.a.a.d((Context) this, "speech_voice", ""));
        }
        this.m = (PagerWidget) this.findViewById(2131493158);
        this.r = (ReaderActionBar) this.findViewById(2131493166);
        this.s = (SettingWidget) this.findViewById(2131493165);
        this.t = (AutoReaderSetWidget) this.findViewById(2131493163);
        this.u = (ReaderTtsSetWidget) this.findViewById(2131493164);
        this.B = this.findViewById(2131493159);
        this.C = (TextView) this.findViewById(2131493160);
        this.T = (AutoReaderTextView) this.findViewById(2131493161);
        this.U = this.findViewById(2131493162);
        this.h = new bZ(this);
        this.O = (ThemeLoadingView) this.findViewById(2131493167);
        this.O.setVisibility(8);
        this.O.a(this.h.h());
        this.i = new bH(this);
        this.h.a((cc) ((Object) new bf(this)));
        this.h.a((cb) ((Object) new bk(this)));
        this.h.a((ce) ((Object) new bl(this)));
        this.h.a((ca) ((Object) new bm(this)));
        this.h.a((cd) ((Object) new bn(this)));
        this.R();
        this.T.setTextColor(this.h.g);
        this.T.setHeight(this.h.e);
        this.T.setTextSize(0, this.h.a);
        this.T.setLineSpacing(this.h.b, 1.0f);
        if (this.h.h == 2130838077) {
            this.T.setBackgroundResource(2130838076);
        } else {
            this.T.setBackgroundResource(this.h.h);
        }
        boolean bl2 = this.L == 5 || this.L == 10 || com.clilystudio.netbook.hpay100.a.a.h(this.L) || this.L == 9;
        View view = this.findViewById(2131493862);
        int n3 = bl2 ? 0 : 8;
        view.setVisibility(n3);
        this.r.setReaderStyle(this.h);
        this.r.b(this.G);
        this.r.setOnBtnClickListener$7ead76dc((com.umeng.update.a) ((Object) new ak(this)));
        this.s.setReaderStyle(this.h, this.r);
        this.s.a((db) ((Object) new av(this)));
        this.s.a(new aJ(this));
        this.u.a(this.V);
        this.u.setOnPlayChangeListener(new aU(this));
        this.t.setOptionClickListener(this);
        this.T.setOnPageTurning(this);
        this.m.setAutoReaderTextView(this.T);
        this.j = new K(this.g, this.h);
        this.C();
        this.m.setAdapter((PagerAdapter) ((Object) new au(this)));
        this.q = this.getWindow().getDecorView();
        if (com.clilystudio.netbook.hpay100.a.a.h()) {
            this.q.setOnSystemUiVisibilityChangeListener(new aV(this));
        }
        this.J();
        if (this.H) {
            this.I = false;
            Reader reader = MyApplication.a().b();
            if (reader != null) {
                this.g = reader;
                this.B();
            } else {
                this.s();
            }
        } else {
            this.s();
        }
        bq bq2 = new bq(this, 0);
        Object[] arrobject = new String[]{this.c};
        bq2.b(arrobject);
        if (android.support.design.widget.am.e() != null) {
            bo bo2 = new bo(this, 0);
            Object[] arrobject2 = new String[]{android.support.design.widget.am.e().getToken()};
            bo2.b(arrobject2);
            new bp(this, 0).b((Object[]) new Void[0]);
        }
        new k(this.c).a();
        b.a(this, "read_mode_33_new", com.clilystudio.netbook.hpay100.a.a.g(this.L));
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onDestroy() {
        try {
            this.unregisterReceiver(this.ag);
            this.unregisterReceiver(this.ah);
        } catch (IllegalArgumentException var1_1) {
            var1_1.printStackTrace();
        }
        if (this.V != null) {
            this.V.stopSpeaking();
            this.V.destroy();
            com.clilystudio.netbook.hpay100.a.a.K(this);
            this.n();
        }
        this.p();
        i.a().b(this);
        o[] arro = this.b;
        int n2 = arro.length;
        int n3 = 0;
        do {
            if (n3 >= n2) {
                super.onDestroy();
                return;
            }
            o o2 = arro[n3];
            i.a().b(o2);
            ++n3;
        } while (true);
    }

    @Override
    public boolean onKeyDown(int n2, KeyEvent keyEvent) {
        switch (n2) {
            default: {
                return super.onKeyDown(n2, keyEvent);
            }
            case 25: {
                if (this.i.b() && this.M == 0) {
                    this.y();
                    return true;
                }
                return false;
            }
            case 24:
        }
        if (this.i.b() && this.M == 0) {
            if (this.g_().f()) {
                this.g_().d();
                return true;
            }
            this.z();
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
            this.F();
            return true;
        } else {
            if (n2 == 25 || n2 == 24) return true;
            return super.onKeyUp(n2, keyEvent);
        }
    }

    @l
    public void onModeChanged(v v2) {
        if (v2.a() == 1) {
            this.finish();
            return;
        }
        this.K = true;
        this.u();
        this.b(-5);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    @Override
    public void onPause() {
        BookReadRecord bookReadRecord;
        int n2 = 1;
        super.onPause();
        if (this.g != null) {
            this.g.c();
        }
        if (com.clilystudio.netbook.hpay100.a.a.a((Context) this, "key_shelf_sort", n2) != n2) {
            n2 = 0;
        }
        if (n2 != 0 && (bookReadRecord = BookReadRecord.get(this.c)) != null) {
            bookReadRecord.readTime = new Date();
            bookReadRecord.save();
            i.a().c(new com.clilystudio.netbook.event.g());
        }
        try {
            LocalBroadcastManager.getInstance(this).unregisterReceiver(this.ae);
            return;
        } catch (IllegalArgumentException var2_3) {
            var2_3.printStackTrace();
            return;
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        this.getWindow().addFlags(128);
        this.K();
        LocalBroadcastManager.getInstance(this).registerReceiver(this.ae, new IntentFilter("com.clilystudio.netbook.dlReceiver"));
        this.H();
        if (this.M == 2 || !"".equals(a)) {
            this.u.setResetVoice(this.v);
            this.u.setVoiceSourceView();
            this.v = false;
        }
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("SaveSelectedPageIndex", this.n);
        bundle.putBoolean("SaveChangeOrientation", this.H);
        bundle.putBoolean("SaveTocDisable", this.J);
        bundle.putBoolean("SaveModeDisable", this.K);
    }

    @l
    public void onThemeChanged(C c2) {
        this.O.a(c2.a());
    }

    @Override
    public void onUserInteraction() {
        super.onUserInteraction();
        this.K();
    }
}
