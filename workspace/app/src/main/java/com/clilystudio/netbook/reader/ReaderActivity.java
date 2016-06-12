package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface$OnCancelListener;
import android.content.DialogInterface$OnClickListener;
import android.content.DialogInterface$OnDismissListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask$Status;
import android.os.Bundle;
import android.os.Handler;
import android.os.PowerManager;
import android.os.PowerManager$WakeLock;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.view.PagerAdapter;
import android.view.KeyEvent;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnSystemUiVisibilityChangeListener;
import android.view.WindowManager$LayoutParams;
import android.widget.PopupMenu;
import android.widget.PopupMenu$OnMenuItemClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.BookTopicEnterRecord;
import com.clilystudio.netbook.db.MixTocRecord;
import com.clilystudio.netbook.db.TocReadRecord;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.ui.BaseReadSlmActivity;
import com.clilystudio.netbook.ui.BookInfoActivity;
import com.clilystudio.netbook.ui.post.BookPostTabActivity;
import com.clilystudio.netbook.widget.ThemeLoadingView;
import com.iflytek.cloud.InitListener;
import com.iflytek.cloud.SpeechSynthesizer;
import com.iflytek.cloud.SynthesizerListener;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;

import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

import cn.sharesdk.framework.PlatformActionListener;

public class ReaderActivity extends BaseReadSlmActivity implements View$OnClickListener, a, d {

    public static String a = "";
    private int A;
    private View B;
    private TextView C;
    private String D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private int L;
    private boolean N;
    private ThemeLoadingView O;
    private int P;
    private int Q;
    private PopupWindow S;
    private AutoReaderTextView T;
    private View U;
    private SpeechSynthesizer V;
    private int W;
    private int X;
    private String[] Y;
    private LinkedList aa;
    private String c;
    private String d;
    private String e;
    private String f;
    private Reader g;
    private bZ h;
    private bH i;
    private K j;
    private ReaderTocDialog k;
    private PagerWidget m;
    private int n;
    private View q;
    private ReaderActionBar r;
    private SettingWidget s;
    private AutoReaderSetWidget t;
    private ReaderTtsSetWidget u;
    private int y;
    private int z;
    private o[] b = new o[3];
    private Handler l = new Handler();
    private boolean o = true;
    private boolean p = true;
    private boolean v = false;
    private int w = -1;
    private LinkedList x = new LinkedList();
    private boolean I = false;
    private boolean J = false;
    private boolean K = false;
    private int M = 0;
    private ReaderMenuFragment R = null;
    private int Z = 0;
    private PowerManager$WakeLock ab = null;
    private SynthesizerListener ac = new am(this);
    private Runnable ad = new aY(this);
    private BroadcastReceiver ae = new bg(this);
    private Handler af = new bh(this);
    private BroadcastReceiver ag = new bi(this);
    private BroadcastReceiver ah = new bj(this);

    static ReaderActionBar A(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.r;
    }

    static void B(ReaderActivity ReaderActivity1) {
        boolean boolean2;

        if (!ReaderActivity1.G)
            boolean2 = true;
        else
            boolean2 = false;
        ReaderActivity1.G = boolean2;
        ReaderActivity1.r();
        com.clilystudio.netbook.hpay100.a.a.b((Context) ReaderActivity1, "reader_orientation", ReaderActivity1.G);
    }

    static void C(ReaderActivity ReaderActivity1) {
        if (ReaderActivity1.J || ReaderActivity1.K)
            com.clilystudio.netbook.util.e.a((Activity) ReaderActivity1, "\u7F13\u5B58\u4E0D\u53EF\u7528");
        else {
            int int2;

            if (android.support.design.widget.am.g(ReaderActivity1.c) == 2)
                int2 = 1;
            else
                int2 = 0;
            if (int2 != 0)
                new uk.me.lewisdeane.ldialogs.h((Context) ReaderActivity1).a(2131034526).b(2131034340).a(2131034341, (DialogInterface$OnClickListener) new be(ReaderActivity1)).b(2131034523, (DialogInterface$OnClickListener) new bd(ReaderActivity1)).b();
            else {
                Object[] Object_1darray3 = new String[3];

                Object_1darray3[0] = ReaderActivity1.getString(2131034337);
                Object_1darray3[1] = ReaderActivity1.getString(2131034338);
                Object_1darray3[2] = ReaderActivity1.getString(2131034306);
                new uk.me.lewisdeane.ldialogs.h((Context) ReaderActivity1).a(2131034343).a((CharSequence[]) Object_1darray3, (DialogInterface$OnClickListener) new bc(ReaderActivity1)).a().show();
            }
        }
    }

    static String D(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.d;
    }

    static void E(ReaderActivity ReaderActivity1) {
        if (ReaderActivity1.ab == null) {
            ReaderActivity1.ab = ((PowerManager) ReaderActivity1.getSystemService("power")).newWakeLock(1, "lock_tag");
            if (ReaderActivity1.ab != null)
                ReaderActivity1.ab.acquire();
        }
    }

    static void F(ReaderActivity ReaderActivity1) {
        String String2;
        uk.me.lewisdeane.ldialogs.h h3;

        if (com.clilystudio.netbook.hpay100.a.a.s((Context) ReaderActivity1))
            String2 = ReaderActivity1.getString(2131034533);
        else
            String2 = ReaderActivity1.getString(2131034531);
        h3 = new uk.me.lewisdeane.ldialogs.h((Context) ReaderActivity1);
        h3.d = ReaderActivity1.getString(2131034532);
        h3.e = String2;
        h3.a("\u4E0B\u8F7D", (DialogInterface$OnClickListener) new ao(ReaderActivity1)).b("\u53D6\u6D88", (DialogInterface$OnClickListener) new an(ReaderActivity1)).b();
    }

    static int G(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.Z;
    }

    static String[] H(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.Y;
    }

    static LinkedList I(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.aa;
    }

    static void J(ReaderActivity ReaderActivity1) {
        ReaderActivity1.aa.remove(0);
        if (ReaderActivity1.aa.size() == 0) {
            ReaderActivity1.Z = 0;
            ReaderActivity1.W = 0;
            ReaderActivity1.X = 0;
        }
        ReaderActivity1.e();
        ReaderActivity1.N();
    }

    static int K(ReaderActivity ReaderActivity1) {
        int int2 = ReaderActivity1.Z;

        ReaderActivity1.Z = int2 + 1;
        return int2;
    }

    static void L(ReaderActivity ReaderActivity1) {
        ReaderActivity1.O();
    }

    static String M(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.c;
    }

    static void N(ReaderActivity ReaderActivity1) {
        ReaderActivity1.O.a();
    }

    static boolean O(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.I;
    }

    static void P(ReaderActivity ReaderActivity1) {
        ReaderActivity1.O.b();
    }

    static void Q(ReaderActivity ReaderActivity1) {
        ReaderActivity1.B();
    }

    static void R(ReaderActivity ReaderActivity1) {
        ReaderActivity1.u();
    }

    static void S(ReaderActivity ReaderActivity1) {
        ReaderActivity1.v();
    }

    static bH T(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.i;
    }

    static void U(ReaderActivity ReaderActivity1) {
        ReaderActivity1.y();
    }

    static void V(ReaderActivity ReaderActivity1) {
        ReaderActivity1.z();
    }

    static void W(ReaderActivity ReaderActivity1) {
        ReaderActivity1.F();
    }

    static void X(ReaderActivity ReaderActivity1) {
        ReaderActivity1.x();
    }

    static Reader Y(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.g;
    }

    static void Z(ReaderActivity ReaderActivity1) {
        ReaderActivity1.t();
    }

    static int a(ReaderActivity ReaderActivity1, int int2) {
        ReaderActivity1.M = int2;
        return int2;
    }

    public static Intent a(Context Context1, String String2, String String3, String String4, String String5, boolean boolean6) {
    }

    public static Intent a(Context Context1, String String2, String String3, String String4, String String5, boolean boolean6, HashMap HashMap7, boolean boolean8) {
    }

    public static Intent a(Context Context1, String String2, String String3, String String4, String String5, boolean boolean6, boolean boolean7) {
    }

    static String a(ReaderActivity ReaderActivity1, String String2) {
        ReaderActivity1.D = String2;
        return String2;
    }

    static LinkedList a(ReaderActivity ReaderActivity1, LinkedList LinkedList2) {
        ReaderActivity1.aa = LinkedList2;
        return LinkedList2;
    }

    static void a(ReaderActivity ReaderActivity1) {
        ReaderActivity1.G();
    }

    static void a(ReaderActivity ReaderActivity1, View View2) {
        PopupMenu PopupMenu3 = new PopupMenu((Context) ReaderActivity1, View2, 53);

        PopupMenu3.getMenuInflater().inflate(2131558404, PopupMenu3.getMenu());
        PopupMenu3.setOnMenuItemClickListener((PopupMenu$OnMenuItemClickListener) new ap(ReaderActivity1));
        PopupMenu3.show();
    }

    static void a(ReaderActivity ReaderActivity1, n n2) {
        if (!n2.f()) {
            ReaderActivity1.b[0].a(n2, true);
            ReaderActivity1.m.setCurrentItem(0, false);
            n2.a((e) new aB(ReaderActivity1));
        } else if (!n2.e()) {
            ReaderActivity1.b[2].a(n2, true);
            ReaderActivity1.m.setCurrentItem(2, false);
            n2.b((e) new aD(ReaderActivity1));
        } else {
            ReaderActivity1.b[1].a(n2, true);
            ReaderActivity1.m.setCurrentItem(1, false);
            n2.a((e) new aF(ReaderActivity1, n2));
        }
        if (ReaderActivity1.M == 1)
            ReaderActivity1.M();
        ReaderActivity1.a(n2);
    }

    static boolean a(ReaderActivity ReaderActivity1, boolean boolean2) {
        ReaderActivity1.v = true;
        return true;
    }

    static String[] a(ReaderActivity ReaderActivity1, String[] String_1darray2) {
        ReaderActivity1.Y = String_1darray2;
        return String_1darray2;
    }

    static int aa(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.L;
    }

    static ReaderTocDialog ab(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.k;
    }

    static boolean ac(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.H;
    }

    static void ad(ReaderActivity ReaderActivity1) {
        if (android.support.design.widget.am.f())
            com.clilystudio.netbook.util.e.a((Activity) ReaderActivity1, ReaderActivity1.getString(2131034325));
        else {
            String String2;
            Object[] Object_1darray3;

            ReaderActivity1.g.a();
            com.clilystudio.netbook.hpay100.a.a.u(ReaderActivity1.c);
            String2 = ReaderActivity1.getString(2131034283);
            Object_1darray3 = new Object[1];
            Object_1darray3[0] = ReaderActivity1.d;
            com.clilystudio.netbook.util.e.a((Activity) ReaderActivity1, String.format(String2, Object_1darray3));
        }
    }

    static void ae(ReaderActivity ReaderActivity1) {
        ReaderActivity1.getWindow().clearFlags(128);
    }

    static int af(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.P;
    }

    static void ag(ReaderActivity ReaderActivity1) {
        CharSequence CharSequence2 = ReaderActivity1.r.b().getText();

        if (CharSequence2 != null)
            android.support.design.widget.am.a((Activity) ReaderActivity1, CharSequence2.toString(), null);
    }

    static View ah(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.B;
    }
// Error: Internal #201: 
// The following method may not be correct.

    static int ai(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.z;
    }
// Error: Internal #201: 
// The following method may not be correct.

    static Handler aj(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.af;
    }
// Error: Internal #201: 
// The following method may not be correct.

    static int ak(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.A;
    }

    static int al(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.y;
    }

    static TextView am(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.C;
    }

    static String an(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.D;
    }

    static LinkedList ao(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.x;
    }

    static int ap(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.w;
    }

    static int b(ReaderActivity ReaderActivity1, int int2) {
        ReaderActivity1.W = 0;
        return 0;
    }

    static void b(ReaderActivity ReaderActivity1) {
        new com.clilystudio.netbook.util.V((Context) ReaderActivity1);
    }

    static void b(ReaderActivity ReaderActivity1, View View2) {
        View View3 = ReaderActivity1.getLayoutInflater().inflate(2130903371, null);
        int[] int_1darray4;

        View3.findViewById(2131493931).setOnClickListener(ReaderActivity1);
        View3.findViewById(2131493932).setOnClickListener(ReaderActivity1);
        View3.findViewById(2131493933).setOnClickListener(ReaderActivity1);
        ReaderActivity1.S = new PopupWindow(View3, ReaderActivity1.getResources().getDimensionPixelSize(2131099902), -2);
        ReaderActivity1.S.setFocusable(true);
        ReaderActivity1.S.setOutsideTouchable(true);
        ReaderActivity1.S.setBackgroundDrawable((Drawable) new ColorDrawable(0));
        ReaderActivity1.S.getContentView().setFocusableInTouchMode(true);
        ReaderActivity1.S.getContentView().setFocusable(true);
        int_1darray4 = new int[2];
        View2.getLocationOnScreen(int_1darray4);
        ReaderActivity1.S.showAtLocation(View2, 0, int_1darray4[0] - ReaderActivity1.S.getWidth() + View2.getWidth(), android.support.design.widget.am.l((Context) ReaderActivity1) + android.support.design.widget.am.k((Context) ReaderActivity1));
    }

    static boolean b(ReaderActivity ReaderActivity1, boolean boolean2) {
        ReaderActivity1.H = true;
        return true;
    }

    static int c(ReaderActivity ReaderActivity1, int int2) {
        ReaderActivity1.X = 0;
        return 0;
    }

    static void c(ReaderActivity ReaderActivity1) {
        ChapterLink[] ChapterLink_1darray2 = ReaderActivity1.g.d();

        if (ChapterLink_1darray2 != null) {
            if (ChapterLink_1darray2.length == 0)
                ;
        }
    }

    static void c(ReaderActivity ReaderActivity1, boolean boolean2) {
        ReaderActivity1.a(false);
    }

    static int d(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.Q;
    }

    static int d(ReaderActivity ReaderActivity1, int int2) {
        ReaderActivity1.Z = 0;
        return 0;
    }

    static boolean d(ReaderActivity ReaderActivity1, boolean boolean2) {
        ReaderActivity1.J = boolean2;
        return boolean2;
    }

    static ReaderMenuFragment e(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.R;
    }

    static void e(ReaderActivity ReaderActivity1, int int2) {
        String String3 = "";
        String String4 = "";
        BookReadRecord BookReadRecord5 = BookReadRecord.get(ReaderActivity1.c);

        if (BookReadRecord5 != null) {
            String3 = BookReadRecord5.getTitle();
            String4 = BookReadRecord5.getFullCover();
        } else {
            BookInfo BookInfo6 = MyApplication.a().c();

            if (BookInfo6 != null && BookInfo6.getId() != null && BookInfo6.getId().equals(ReaderActivity1.c)) {
                String3 = BookInfo6.getTitle();
                String4 = BookInfo6.getFullCover();
            }
        }
        com.clilystudio.netbook.util.T.a((Context) ReaderActivity1, String3, "\u8FD9\u672C\u4E66\u5199\u7684\u5F88\u597D\uFF0C\u4F60\u600E\u4E48\u770B\uFF1F", new StringBuilder("http://share.zhuishushenqi.com/book/").append(ReaderActivity1.c).toString(), String4, int2, (PlatformActionListener) new ba(ReaderActivity1));
    }

    static boolean e(ReaderActivity ReaderActivity1, boolean boolean2) {
        ReaderActivity1.I = false;
        return false;
    }

    static void f(ReaderActivity ReaderActivity1) {
        ReaderActivity1.H();
    }

    static void f(ReaderActivity ReaderActivity1, int int2) {
        ReaderActivity1.b(-4);
    }

    static boolean f(ReaderActivity ReaderActivity1, boolean boolean2) {
        ReaderActivity1.p = boolean2;
        return boolean2;
    }

    static int g(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.M;
    }

    static int g(ReaderActivity ReaderActivity1, int int2) {
        ReaderActivity1.n = int2;
        return int2;
    }

    static boolean g(ReaderActivity ReaderActivity1, boolean boolean2) {
        ReaderActivity1.E = true;
        return true;
    }

    static PagerWidget h(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.m;
    }

    static void h(ReaderActivity ReaderActivity1, int int2) {
        ReaderActivity1.c(int2);
    }

    static int i(ReaderActivity ReaderActivity1, int int2) {
        ReaderActivity1.P = int2;
        return int2;
    }

    static o[] i(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.b;
    }

    static int j(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.n;
    }

    static int j(ReaderActivity ReaderActivity1, int int2) {
        ReaderActivity1.Q = int2;
        return int2;
    }

    static int k(ReaderActivity ReaderActivity1, int int2) {
        ReaderActivity1.z = int2;
        return int2;
    }

    static AutoReaderTextView k(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.T;
    }

    static int l(ReaderActivity ReaderActivity1, int int2) {
        ReaderActivity1.y = int2;
        return int2;
    }

    static bZ l(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.h;
    }

    static int m(ReaderActivity ReaderActivity1, int int2) {
        ReaderActivity1.A = int2;
        return int2;
    }

    static n m(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.A();
    }

    static int n(ReaderActivity ReaderActivity1, int int2) {
        ReaderActivity1.w = int2;
        return int2;
    }

    static void n(ReaderActivity ReaderActivity1) {
        ReaderActivity1.N();
    }

    static void o(ReaderActivity ReaderActivity1) {
    }

    static void p(ReaderActivity ReaderActivity1) {
        if (ReaderActivity1.b[ReaderActivity1.n].f())
            ReaderActivity1.o();
        else if (ReaderActivity1.Y != null) {
            if (ReaderActivity1.Z <= -1 + ReaderActivity1.Y.length) {
                ReaderActivity1.b[ReaderActivity1.n].a(ReaderActivity1.W, ReaderActivity1.X);
                ReaderActivity1.V.startSpeaking(ReaderActivity1.Y[ReaderActivity1.Z], ReaderActivity1.ac);
                return;
            }
        } else {
            com.clilystudio.netbook.util.e.a((Activity) ReaderActivity1, "\u83B7\u53D6\u7AE0\u8282\u5185\u5BB9\u5931\u8D25,\u8BF7\u9000\u51FA\u540E\u91CD\u8BD5");
            return;
        }
    }

    static SpeechSynthesizer q(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.V;
    }

    static void r(ReaderActivity ReaderActivity1) {
        ReaderActivity1.n();
    }

    static void s(ReaderActivity ReaderActivity1) {
        ReaderActivity1.p();
    }

    static void t(ReaderActivity ReaderActivity1) {
        ReaderActivity1.T.setHeight(ReaderActivity1.h.e);
        ReaderActivity1.T.setTextSize(0, (float) ReaderActivity1.h.a);
        ReaderActivity1.T.setLineSpacing((float) ReaderActivity1.h.b, 1.0F);
    }

    static void u(ReaderActivity ReaderActivity1) {
        if (ReaderActivity1.h.h == 2130838077)
            ReaderActivity1.T.setBackgroundResource(2130838076);
        else
            ReaderActivity1.T.setBackgroundResource(ReaderActivity1.h.h);
        ReaderActivity1.T.setTextColor(ReaderActivity1.h.g);
    }

    static void v(ReaderActivity ReaderActivity1) {
        ReaderActivity1.R();
    }

    static SettingWidget w(ReaderActivity ReaderActivity1) {
        return ReaderActivity1.s;
    }

    static void x(ReaderActivity ReaderActivity1) {
        if (ReaderActivity1.J || ReaderActivity1.K)
            com.clilystudio.netbook.util.e.a((Activity) ReaderActivity1, "\u76EE\u5F55\u4E0D\u53EF\u7528");
        else
            ReaderActivity1.D();
    }

    static void y(ReaderActivity ReaderActivity1) {
        uk.me.lewisdeane.ldialogs.h h2 = new uk.me.lewisdeane.ldialogs.h((Context) ReaderActivity1);

        h2.e = "\u662F\u5426\u4F7F\u7528\u539F\u7F51\u9875\u9605\u8BFB\uFF1F";
        h2.a(2131034424, (DialogInterface$OnClickListener) new bb(ReaderActivity1)).b(2131034129, null).b();
    }

    static void z(ReaderActivity ReaderActivity1) {
        ReaderActivity1.startActivity(BookPostTabActivity.a((Context) ReaderActivity1, ReaderActivity1.c, ReaderActivity1.d));
        BookTopicEnterRecord.updateCount(ReaderActivity1.c, ReaderActivity1.P);
    }

    private n A() {
        o o1 = b[n];

        if (o1 != null)
            return o1.j();
        else
            return null;
    }

    private void B() {
        int int1 = 1;
        String String2;

        if (H)
            j.a(g);
        m.setOnPageChangeListener((cw) new aw(this));
        m.setOnClickListener$4b8a6d15((com.umeng.update.a) new ax(this));
        String2 = MyApplication.a().g();
        if (c.equals(String2)) {
            BookReadRecord BookReadRecord3 = BookReadRecord.getOnShelf(c);
            int int4;

            label_43:
            {
                if (BookReadRecord3 == null || g == null)
                    int4 = -1;
                else {
                    int int5 = BookReadRecord3.getTocIndex();
                    String String6 = BookReadRecord3.getChapterTitle();
                    com.clilystudio.netbook.util.ae ae7;

                    int4 = g.g();
                    if (int5 <= int4)
                        int4 = int5;
                    ae7 = new com.clilystudio.netbook.util.ae();
                    if (!a(ae7, String6, int4)) {
                        int int8 = int1;
                        int int9 = 0;
                        int int10 = int1;

                        while (int9 < 20) {
                            if (int10 != 0) {
                                int int12 = int5 + int8;

                                if (a(ae7, String6, int12)) {
                                    int4 = int12;
                                    break label_43;
                                } else
                                    int10 = 0;
                            } else {
                                int int11 = int5 - int8;

                                if (a(ae7, String6, int11)) {
                                    int4 = int11;
                                    break label_43;
                                } else {
                                    ++int8;
                                    int10 = int1;
                                }
                            }
                            ++int9;
                        }
                        int4 = -1;
                    }
                }
            }
            if (int4 != -1)
                g.a(int4, 0);
            MyApplication.a().c(null);
        }
        MyApplication.a().a(g);
        if (q() || com.clilystudio.netbook.hpay100.a.a.h(L)) {
            if (q()) {
                if (MixTocRecord.get(e) == null)
                    int1 = 0;
            } else if (TocReadRecord.get(e) == null)
                int1 = 0;
            if (int1 != 0)
                g();
            else
                c(0);
        } else if (I && !H)
            D();
        else
            g();
    }

    private void C() {
        Object Object1 = new aL(this);
        Object Object2 = new aM(this);
        Object Object3 = new aN(this);
        int int4;

        for (int4 = 0; int4 < 3; ++int4) {
            o o5 = new o((Activity) this, h);

            b[int4] = o5;
            o5.a((G) Object1);
            o5.a((H) Object2);
            o5.a((F) Object3);
        }
        registerReceiver(ag, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        registerReceiver(ah, new IntentFilter("android.intent.action.TIME_TICK"));
    }

    private void D() {
        if (!isFinishing()) {
            if (k == null) {
                k = ReaderTocDialog.a();
                k.a(g, x);
                k.a((DialogInterface$OnClickListener) new aO(this));
                k.a((DialogInterface$OnCancelListener) new aP(this));
                k.a((DialogInterface$OnDismissListener) new aQ(this));
            }
            com.clilystudio.netbook.hpay100.a.a.a((FragmentActivity) this, k);
        }
    }

    private void E() {
        if (b != null) {
            o[] o_1darray1 = b;
            int int2 = o_1darray1.length;
            int int3;

            for (int3 = 0; int3 < int2; ++int3) {
                n n4 = o_1darray1[int3].j();

                if (n4 != null) {
                    ReaderChapter ReaderChapter5 = n4.a();

                    if (ReaderChapter5 != null)
                        ReaderChapter5.setMaxIndex(g.g());
                }
            }
        }
    }

    private void F() {
        if (o)
            H();
        else
            G();
    }

    private void G() {
        if (!o) {
            o = true;
            if (M == 0) {
                n n1;
                String String2;

                r.setVisibility(0);
                getWindow().addFlags(2048);
                getWindow().clearFlags(1024);
                if (E)
                    B.setVisibility(0);
                n1 = A();
                String2 = null;
                if (n1 != null) {
                    ReaderChapter ReaderChapter3 = n1.a();

                    String2 = null;
                    if (ReaderChapter3 != null)
                        String2 = n1.a().getLink();
                }
                r.setChapterLink(String2);
                if (com.clilystudio.netbook.hpay100.a.a.h() && !p)
                    q.setSystemUiVisibility(0);
            } else if (M == 1) {
                T.clearAnimation();
                t.a();
                return;
            } else if (M == 2) {
                V.pauseSpeaking();
                u.setPause(true);
                u.a();
                com.umeng.a.b.a((Context) this, "tts_pause_speaking", d);
                return;
            }
        }
    }

    private void H() {
        if (o) {
            o = false;
            r.setVisibility(8);
            s.setVisibility(8);
            t.b();
            if (M == 1)
                T.e();
            if (M == 2) {
                u.setVisibility(8);
                if (u.b()) {
                    V.resumeSpeaking();
                    u.setPause(false);
                }
            }
            B.setVisibility(8);
            getWindow().addFlags(1024);
            getWindow().clearFlags(2048);
            if (F)
                getWindow().addFlags(512);
            else {
                getWindow().addFlags(2048);
                getWindow().clearFlags(1024);
                getWindow().clearFlags(512);
                if (com.clilystudio.netbook.hpay100.a.a.h() && p)
                    q.setSystemUiVisibility(0);
            }
            com.clilystudio.netbook.hpay100.a.a.a(q);
        }
        if (i.f()) {
            if (com.clilystudio.netbook.hpay100.a.a.h() && p)
                q.setSystemUiVisibility(2055);
        } else if (com.clilystudio.netbook.hpay100.a.a.h() && p) {
            q.setSystemUiVisibility(1);
            return;
        }
    }

    private void I() {
        T.setVisibility(8);
        U.setVisibility(8);
    }

    private void J() {
        F = com.clilystudio.netbook.hpay100.a.a.l((Context) this, "reader_opt_full_screen");
        r.a(F);
        H();
    }

    private void K() {
        int int1;

        l.removeCallbacks(ad);
        int1 = i.d();
        if (int1 != 0)
            l.postDelayed(ad, (long) int1);
    }
// Error: Internal #201: 
// The following method may not be correct.

    private void L() {
        T.clearAnimation();
        M = 0;
        m.setReadMode(0);
        H();
        I();
        if (o)
            H();
        else {
            n n1 = A();

            if (n1 != null && n1.f()) {
                m.setCurrentItem(-1 + n, false);
                v();
                return;
            }
        }
    }

    private void M() {
        if (b[n].f())
            L();
        else {
            if (!T.isShown()) {
                T.setVisibility(0);
                if (h.h())
                    U.setBackgroundResource(2130837612);
                else
                    U.setBackgroundResource(2130837611);
                U.setVisibility(0);
            }
            T.a();
        }
    }

    private void N() {
        n n1 = A();

        if (n1 != null) {
            E();
            if (n1.e() || !w()) {
                if (M == 1) {
                    if (h.i())
                        T.setText((CharSequence) n1.a((Context) this));
                    else
                        T.setText((CharSequence) n1.c());
                    T.b();
                }
                m.setCurrentItem(1 + n, false);
                v();
            } else {
                com.clilystudio.netbook.util.e.a((Activity) this, getString(2131034318));
                T.clearAnimation();
                I();
                M = 0;
                m.setReadMode(0);
            }
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    private void O() {
        P();
        startActivity(ModeListActivity.a((Context) this, c, d, L));
        overridePendingTransition(2130968602, 2130968603);
    }

    private void P() {
        if (g != null) {
            BookReadRecord BookReadRecord1 = BookReadRecord.get(c);

            if (BookReadRecord1 != null) {
                BookReadRecord1.setTocIndex(g.k());
                BookReadRecord1.setChapterTitle(g.n());
                BookReadRecord1.save();
            }
        }
    }

    private void Q() {
        if (com.clilystudio.netbook.hpay100.a.a.d()) {
            Iterator Iterator1 = com.clilystudio.netbook.hpay100.a.a.j(c, e).iterator();

            while (Iterator1.hasNext()) {
                String String2 = android.support.design.widget.am.f((String) Iterator1.next());

                x.add(String2);
            }
        }
    }

    private void R() {
        WindowManager$LayoutParams LayoutParams1 = getWindow().getAttributes();
        float float2;

        if (h.g())
            float2 = -1.0F;
        else
            float2 = (float) h.f() / 255.0F;
        LayoutParams1.screenBrightness = float2;
        getWindow().setAttributes(LayoutParams1);
    }

    private String a(String String1) {
        return getIntent().getStringExtra(String1);
    }

    private void a(n n1) {
        if (n1 != null) {
            SlidingMenu SlidingMenu2 = g_();

            if (J || K)
                SlidingMenu2.setSlidingEnabled(false);
            else if (n1.e())
                SlidingMenu2.setSlidingEnabled(false);
            else
                SlidingMenu2.setSlidingEnabled(true);
        }
    }

    private void a(boolean boolean1) {
        if (b[n].f())
            o();
        else if (Y != null) {
            if (boolean1 && !Y[0].startsWith("\u3000\u3000")) {
                W = 0;
                X = 1 + Y[0].length();
                b[n].a(W, X);
                return;
            } else {
                W = X;
                if (Z <= -1 + Y.length) {
                    X = 1 + (W + Y[Z].length());
                    b[n].a(W, X);
                    V.startSpeaking(Y[Z], ac);
                    return;
                }
            }
        } else {
            com.clilystudio.netbook.util.e.a((Activity) this, "\u83B7\u53D6\u7AE0\u8282\u5185\u5BB9\u5931\u8D25,\u8BF7\u9000\u51FA\u540E\u91CD\u8BD5");
            return;
        }
    }

    private boolean a(com.clilystudio.netbook.util.ae ae1, String String2, int int3) {
        boolean boolean4 = ae1.a(String2, g.c(int3));
        boolean boolean5 = false;

        if (boolean4) {
            g.a(int3);
            g.b(0);
            boolean5 = true;
        }
        return boolean5;
    }

    private void b(int int1) {
        j.a((e) new aA(this), int1);
    }

    private void c(int int1) {
        j.b(int1, (e) new aS(this), true);
    }

    private void n() {
    }

    private void o() {
        V.stopSpeaking();
        M = 0;
        m.setReadMode(M);
        n();
        H();
        W = 0;
        X = 0;
        Z = 0;
    }

    private void p() {
        if (ab != null && ab.isHeld()) {
            ab.release();
            ab = null;
        }
    }

    private boolean q() {
        if (5 == L)
            return true;
        else
            return false;
    }

    private void r() {
        if (G)
            setRequestedOrientation(1);
        else
            setRequestedOrientation(0);
    }

    private void s() {
        g.a((ae) new ar(this));
        g.b((ae) new as(this));
        t();
    }

    private void t() {
        Reader Reader1 = g;
        Object Object2 = new at(this);
        boolean boolean3;

        label_23:
        {
            if (!I) {
                boolean boolean4 = getIntent().getBooleanExtra("extra_force_online", false);

                boolean3 = false;
                if (!boolean4)
                    break label_23;
            }
            boolean3 = true;
        }
        Reader1.a((ad) Object2, boolean3);
    }

    private void u() {
        m.setAdapter((PagerAdapter) new ay(this));
        m.setOnClickListener$4b8a6d15((com.umeng.update.a) new az(this));
    }

    private void v() {
        n n1 = A();

        if (n1 != null && !n1.p()) {
            if (n1.n() == 1)
                c(n1.l());
            else {
                int int11 = n1.l();

                j.a(int11, (e) new aT(this), true);
                return;
            }
        } else {
            o o2 = b[0];
            o o3 = b[1];
            o o4 = b[2];
            n n5 = o2.j();
            n n6 = o3.j();
            n n7 = o4.j();

            if (n == 2 && n7 != null) {
                if (n7.e() || w()) {
                    o3.a(n7, true);
                    m.setCurrentItem(1, false);
                    o2.a(n6);
                    n7.a((e) new aK(this, o4));
                    x();
                    a(n1);
                    if (M == 1)
                        M();
                    if (M == 2) {
                        if (aa.size() == 0) {
                            Object[] Object_1darray9 = n7.d();

                            if (Object_1darray9 != null) {
                                Y = (String[]) Object_1darray9[0];
                                aa = (LinkedList) Object_1darray9[1];
                                a(true);
                                return;
                            }
                        } else {
                            b[n].a(0, 1 + n7.c().length());
                            return;
                        }
                    }
                } else {
                    int int10 = g.f();

                    O.a();
                    g.b().a((af) new aH(this, int10));
                    return;
                }
            } else if (n == 0 && n5 != null && n5.f()) {
                o3.a(n5, true);
                m.setCurrentItem(1, false);
                o4.a(n6);
                n5.b((e) new aI(this, o2));
                x();
                a(n1);
                return;
            } else if (n == 1) {
                if (M == 1) {
                    M();
                    return;
                } else if (M == 2) {
                    if (aa.size() == 0) {
                        Object[] Object_1darray8 = n6.d();

                        if (Object_1darray8 != null) {
                            Y = (String[]) Object_1darray8[0];
                            aa = (LinkedList) Object_1darray8[1];
                            a(true);
                            return;
                        }
                    } else {
                        b[n].a(0, 1 + n6.c().length());
                        return;
                    }
                }
            }
        }
    }

    private boolean w() {
        ag ag1 = g.b();

        if (ag1 == null || ag1.getStatus() == AsyncTask$Status.FINISHED)
            return true;
        else
            return false;
    }

    private void x() {
        n n1 = A();

        if (n1 != null)
            g.a(n1.l(), n1.m());
    }

    private void y() {
        if (o)
            H();
        else {
            n n1 = A();

            if (n1 != null) {
                E();
                if (n1.e() || !w()) {
                    if (i.c()) {
                        if (!m.a(1 + n)) {
                            v();
                            return;
                        }
                    } else {
                        m.setCurrentItem(1 + n, false);
                        v();
                        return;
                    }
                } else {
                    h_();
                    return;
                }
            }
        }
    }

    private void z() {
        if (o)
            H();
        else {
            n n1 = A();

            if (n1 != null) {
                if (n1.f()) {
                    if (i.c())
                        m.a(-1 + n);
                    else {
                        m.setCurrentItem(-1 + n, false);
                        v();
                    }
                } else
                    com.clilystudio.netbook.util.e.a((Activity) this, 2131034407);
                return;
            }
        }
    }

    public void OnUpdateBalanceEvent(com.clilystudio.netbook.event.G G1) {
        if (android.support.design.widget.am.e() != null) {
            bo bo2 = new bo(this, (byte) 0);
            String[] String_1darray3 = new String[1];

            String_1darray3[0] = android.support.design.widget.am.e().getToken();
            bo2.b(String_1darray3);
        }
    }

    public final void a() {
        t.c();
        T.c();
    }

    public final void a(int int1) {
        TextView TextView2 = (TextView) findViewById(2131493454);

        if (TextView2 != null) {
            if (int1 > 0) {
                TextView2.setVisibility(0);
                if (int1 > 99)
                    int1 = 99;
                TextView2.setText((CharSequence) String.valueOf(int1));
            } else {
                Q = 0;
                TextView2.setVisibility(8);
            }
        }
    }

    public final void b() {
        t.d();
        T.d();
    }

    public final void c() {
        L();
    }

    public final void d() {
        N();
    }

    public final void e() {
        int int1 = 0;
        o[] o_1darray2;
        int int3;

        W = 0;
        X = 0;
        o_1darray2 = b;
        int3 = o_1darray2.length;
        while (int1 < int3) {
            o_1darray2[int1].a(-1, -1);
            ++int1;
        }
    }

    public final String f() {
        return e;
    }

    public final void g() {
        j.a((e) new aR(this));
    }

    public final String h() {
        if (g != null)
            return g.i();
        else
            return null;
    }

    public final void i() {
        String String1;

        P();
        if (g != null && g.i() != null)
            String1 = g.i();
        else
            String1 = f;
        com.clilystudio.netbook.util.I.d = String1;
        startActivity(ReaderMixActivity.a((Context) this, c, d, String1));
        overridePendingTransition(2130968602, 2130968603);
    }

    public final boolean j() {
        if (b.length > n)
            return b[n].f();
        else
            return false;
    }

    public final void k() {
        o[] o_1darray1 = b;
        int int2 = o_1darray1.length;
        int int3;

        for (int3 = 0; int3 < int2; ++int3)
            o_1darray1[int3].h();
    }

    public final String l() {
        return c;
    }

    public final boolean m() {
        return N;
    }

    protected void onActivityResult(int int1, int int2, Intent Intent3) {
        super.onActivityResult(int1, int2, Intent3);
        i.a();
        if (j != null) {
            J();
            h.a(F);
            g();
        }
    }

    public void onBackPressed() {
        if (g.m())
            super.onBackPressed();
        else
            new uk.me.lewisdeane.ldialogs.h((Context) this).a(2131034455).b(2131034287).a(2131034280, (DialogInterface$OnClickListener) new aX(this)).b(2131034281, (DialogInterface$OnClickListener) new aW(this)).a().show();
        if (j())
            b[n].g();
    }

    public void onClick(View View1) {
        if (S != null)
            S.dismiss();
        switch (View1.getId()) {
            default:
                return;
            case 1067:
                O();
                return;
            case 1068:
                startActivity(BookInfoActivity.a((Context) this, c));
                return;
            case 1069:
                new com.clilystudio.netbook.ui.cb((Activity) this, (com.clilystudio.netbook.ui.cd) new aZ(this)).a().show();
                return;
        }
    }

    public void onConvertChanged(com.clilystudio.netbook.event.j j1) {
        h.b();
    }

    public void onCreate(Bundle Bundle1) {
        Intent Intent2;
        String String3;
        BookReadRecord BookReadRecord4;
        int int5;
        FragmentTransaction FragmentTransaction6;
        SlidingMenu SlidingMenu9;
        int int10;
        View View11;
        int int12;
        bq bq13;
        String[] String_1darray14;

        super.onCreate(Bundle1);
        getWindow().addFlags(256);
        getWindow().addFlags(512);
        G = com.clilystudio.netbook.hpay100.a.a.l((Context) this, "reader_orientation");
        r();
        setContentView(2130903121);
        com.clilystudio.netbook.event.i.a().a(this);
        Intent2 = getIntent();
        c = a("BOOK_ID");
        d = a("BOOK_TITLE");
        f = a("SOURCE_HOST");
        I = Intent2.getBooleanExtra("IS_SHOW_TOC", false);
        String3 = a("TOC_ID");
        if ("MIX_TOC_ID".equals(String3))
            String3 = new StringBuilder("MIX_TOC_ID").append(c).toString();
        e = String3;
        BookReadRecord4 = BookReadRecord.get(c);
        if (BookReadRecord4 != null)
            int5 = BookReadRecord4.getReadMode();
        else
            int5 = MyApplication.a().d();
        L = int5;
        N = Intent2.getBooleanExtra("HAS_OTHER_SOURCES", true);
        com.clilystudio.netbook.util.I.a = c;
        com.clilystudio.netbook.util.I.b = d;
        com.clilystudio.netbook.util.I.d = f;
        com.clilystudio.netbook.util.I.c = e;
        com.clilystudio.netbook.util.I.g = L;
        com.clilystudio.netbook.hpay100.a.a.i((Context) this, c);
        g = new Reader(c, e, d, L);
        g.a(getIntent().getStringExtra("SOURCE_ID"));
        g.a((Map) getIntent().getSerializableExtra("CHAPTERS_KEY"));
        if (Bundle1 != null) {
            n = Bundle1.getInt("SaveSelectedPageIndex", 0);
            H = Bundle1.getBoolean("SaveChangeOrientation");
            J = Bundle1.getBoolean("SaveTocDisable");
            K = Bundle1.getBoolean("SaveModeDisable");
        }
        Q();
        FragmentTransaction6 = getSupportFragmentManager().beginTransaction();
        R = ReaderMenuFragment.a(c, d);
        FragmentTransaction6.replace(2131493799, (Fragment) R);
        try {
            FragmentTransaction6.commitAllowingStateLoss();
        } catch (IllegalStateException IllegalStateException8) {
            IllegalStateException8.printStackTrace();
        }
        SlidingMenu9 = g_();
        SlidingMenu9.setMode(1);
        SlidingMenu9.setShadowWidthRes(2131099915);
        SlidingMenu9.setShadowDrawable(2130838138);
        SlidingMenu9.setBehindOffsetRes(2131099775);
        SlidingMenu9.setFadeDegree(0.34999999403953552F);
        SlidingMenu9.setBehindScrollScale(0.0F);
        SlidingMenu9.setTouchModeAbove(1);
        SlidingMenu9.setSlidingEnabled(false);
        SlidingMenu9.setOnOpenedListener((com.jeremyfeinstein.slidingmenu.lib.g) new aj(this));
        if (V == null) {
            V = SpeechSynthesizer.createSynthesizer((Context) this, (InitListener) new al(this));
            V.setParameter("engine_type", "local");
            V.setParameter("speed", new StringBuilder().append(com.clilystudio.netbook.hpay100.a.a.a((Context) this, "speech_speed", 50)).toString());
            V.setParameter("voice_name", com.clilystudio.netbook.hpay100.a.a.d((Context) this, "speech_voice", ""));
        }
        m = (PagerWidget) findViewById(2131493158);
        r = (ReaderActionBar) findViewById(2131493166);
        s = (SettingWidget) findViewById(2131493165);
        t = (AutoReaderSetWidget) findViewById(2131493163);
        u = (ReaderTtsSetWidget) findViewById(2131493164);
        B = findViewById(2131493159);
        C = (TextView) findViewById(2131493160);
        T = (AutoReaderTextView) findViewById(2131493161);
        U = findViewById(2131493162);
        h = new bZ((Activity) this);
        O = (ThemeLoadingView) findViewById(2131493167);
        O.setVisibility(8);
        O.a(h.h());
        i = new bH((Context) this);
        h.a((cc) new bf(this));
        h.a((cb) new bk(this));
        h.a((ce) new bl(this));
        h.a((ca) new bm(this));
        h.a((cd) new bn(this));
        R();
        T.setTextColor(h.g);
        T.setHeight(h.e);
        T.setTextSize(0, (float) h.a);
        T.setLineSpacing((float) h.b, 1.0F);
        if (h.h == 2130838077)
            T.setBackgroundResource(2130838076);
        else
            T.setBackgroundResource(h.h);
        if (L == 5 || L == 10 || com.clilystudio.netbook.hpay100.a.a.h(L) || L == 9)
            int10 = 1;
        else
            int10 = 0;
        View11 = findViewById(2131493862);
        if (int10 != 0)
            int12 = 0;
        else
            int12 = 8;
        View11.setVisibility(int12);
        r.setReaderStyle(h);
        r.b(G);
        r.setOnBtnClickListener$7ead76dc((com.umeng.update.a) new ak(this));
        s.setReaderStyle(h, r);
        s.a((db) new av(this));
        s.a((dc) new aJ(this));
        u.a(V);
        u.setOnPlayChangeListener((cn) new aU(this));
        t.setOptionClickListener(this);
        T.setOnPageTurning(this);
        m.setAutoReaderTextView(T);
        j = new K(g, h);
        C();
        m.setAdapter((PagerAdapter) new au(this));
        q = getWindow().getDecorView();
        if (com.clilystudio.netbook.hpay100.a.a.h())
            q.setOnSystemUiVisibilityChangeListener((View$OnSystemUiVisibilityChangeListener) new aV(this));
        J();
        if (H) {
            Reader Reader20;

            I = false;
            Reader20 = MyApplication.a().b();
            if (Reader20 != null) {
                g = Reader20;
                B();
            } else
                s();
        } else
            s();
        bq13 = new bq(this, (byte) 0);
        String_1darray14 = new String[1];
        String_1darray14[0] = c;
        bq13.b(String_1darray14);
        if (android.support.design.widget.am.e() != null) {
            bo bo16 = new bo(this, (byte) 0);
            String[] String_1darray17 = new String[1];

            String_1darray17[0] = android.support.design.widget.am.e().getToken();
            bo16.b(String_1darray17);
            new bp(this, (byte) 0).b(new Void[0]);
        }
        new com.clilystudio.netbook.util.k(c).a();
        com.umeng.a.b.a((Context) this, "read_mode_33_new", com.clilystudio.netbook.hpay100.a.a.g(L));
    }

    public void onDestroy() {
        o[] o_1darray2;
        int int3;
        int int4;

        try {
            unregisterReceiver(ag);
            unregisterReceiver(ah);
        } catch (IllegalArgumentException IllegalArgumentException1) {
            IllegalArgumentException1.printStackTrace();
        }
        if (V != null) {
            V.stopSpeaking();
            V.destroy();
            com.clilystudio.netbook.hpay100.a.a.K((Context) this);
            n();
        }
        p();
        com.clilystudio.netbook.event.i.a().b(this);
        o_1darray2 = b;
        int3 = o_1darray2.length;
        for (int4 = 0; int4 < int3; ++int4) {
            o o5 = o_1darray2[int4];

            com.clilystudio.netbook.event.i.a().b(o5);
        }
        super.onDestroy();
    }

    public boolean onKeyDown(int int1, KeyEvent KeyEvent2) {
        switch (int1) {
            default:
                return super.onKeyDown(int1, KeyEvent2);
            case 25:
                if (!i.b() || M != 0)
                    return false;
                y();
                return true;
            case 24:
                if (!i.b() || M != 0)
                    return false;
                if (g_().f())
                    g_().d();
                else
                    z();
                return true;
        }
    }

    public boolean onKeyUp(int int1, KeyEvent KeyEvent2) {
        if (int1 == 82)
            F();
        else if (int1 != 25 && int1 != 24)
            return super.onKeyUp(int1, KeyEvent2);
        return true;
    }

    public void onModeChanged(com.clilystudio.netbook.event.v v1) {
        if (v1.a() == 1)
            finish();
        else {
            K = true;
            u();
            b(-5);
        }
    }

    public void onPause() {
        int int1 = 1;

        super.onPause();
        if (g != null)
            g.c();
        if (com.clilystudio.netbook.hpay100.a.a.a((Context) this, "key_shelf_sort", int1) != int1)
            int1 = 0;
        if (int1 != 0) {
            BookReadRecord BookReadRecord3 = BookReadRecord.get(c);

            if (BookReadRecord3 != null) {
                BookReadRecord3.readTime = new Date();
                BookReadRecord3.save();
                com.clilystudio.netbook.event.i.a().c(new com.clilystudio.netbook.event.g());
            }
        }
        try {
            LocalBroadcastManager.getInstance((Context) this).unregisterReceiver(ae);
        } catch (IllegalArgumentException IllegalArgumentException2) {
            IllegalArgumentException2.printStackTrace();
            return;
        }
    }

    public void onResume() {
        super.onResume();
        getWindow().addFlags(128);
        K();
        LocalBroadcastManager.getInstance((Context) this).registerReceiver(ae, new IntentFilter("com.clilystudio.netbook.dlReceiver"));
        H();
        if (M == 2 || !"".equals(a)) {
            u.setResetVoice(v);
            u.setVoiceSourceView();
            v = false;
        }
    }

    protected void onSaveInstanceState(Bundle Bundle1) {
        super.onSaveInstanceState(Bundle1);
        Bundle1.putInt("SaveSelectedPageIndex", n);
        Bundle1.putBoolean("SaveChangeOrientation", H);
        Bundle1.putBoolean("SaveTocDisable", J);
        Bundle1.putBoolean("SaveModeDisable", K);
    }

    public void onThemeChanged(com.clilystudio.netbook.event.C C1) {
        O.a(C1.a());
    }

    public void onUserInteraction() {
        super.onUserInteraction();
        K();
    }
}
