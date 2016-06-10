package com.clilystudio.netbook.reader;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.LocalBroadcastManager;
import android.view.KeyEvent;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.TextView;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.MixTocRecord;
import com.clilystudio.netbook.db.TocReadRecord;
import com.clilystudio.netbook.event.C;
import com.clilystudio.netbook.event.G;
import com.clilystudio.netbook.event.g;
import com.clilystudio.netbook.event.j;
import com.clilystudio.netbook.event.v;
import com.clilystudio.netbook.ui.BaseReadSlmActivity;
import com.clilystudio.netbook.ui.BookInfoActivity;
import com.clilystudio.netbook.ui.cb;
import com.clilystudio.netbook.util.ae;
import com.clilystudio.netbook.util.k;
import com.clilystudio.netbook.widget.ThemeLoadingView;
import com.iflytek.cloud.SpeechSynthesizer;
import com.iflytek.cloud.SynthesizerListener;
import com.jeremyfeinstein.slidingmenu.lib.SlidingMenu;
import com.squareup.a.l;

import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

import uk.me.lewisdeane.ldialogs.h;

public class ReaderActivity extends BaseReadSlmActivity
        implements View.OnClickListener, a, d {
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
    private SynthesizerListener ac = new am(this);
    private Runnable ad = new aY(this);
    private BroadcastReceiver ae = new bg(this);
    private Handler af = new bh(this);
    private BroadcastReceiver ag = new bi(this);
    private BroadcastReceiver ah = new bj(this);
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

    public static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean) {
        return new com.clilystudio.netbook.d().a(paramContext, ReaderActivity.class).a("BOOK_ID", paramString1).a("BOOK_TITLE", paramString2).a("TOC_ID", paramString3).a("SOURCE_HOST", paramString4).a("IS_SHOW_TOC", Boolean.valueOf(paramBoolean)).a();
    }

    public static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean1, HashMap<String, String> paramHashMap, boolean paramBoolean2) {
        return new com.clilystudio.netbook.d().a(paramContext, ReaderActivity.class).a("BOOK_ID", paramString1).a("BOOK_TITLE", paramString2).a("TOC_ID", paramString3).a("SOURCE_HOST", null).a("IS_SHOW_TOC", Boolean.valueOf(false)).a("CHAPTERS_KEY", paramHashMap).a("HAS_OTHER_SOURCES", Boolean.valueOf(paramBoolean2)).a();
    }

    public static Intent a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean1, boolean paramBoolean2) {
        return new com.clilystudio.netbook.d().a(paramContext, ReaderActivity.class).a("BOOK_ID", paramString1).a("BOOK_TITLE", paramString2).a("TOC_ID", paramString3).a("SOURCE_HOST", null).a("IS_SHOW_TOC", Boolean.valueOf(false)).a("HAS_OTHER_SOURCES", Boolean.valueOf(paramBoolean2)).a();
    }

    private n A() {
        o localo = this.b[this.n];
        if (localo != null)
            return localo.j();
        return null;
    }

    private void B() {
        int i1 = 1;
        if (this.H)
            this.j.a(this.g);
        this.m.setOnPageChangeListener(new aw(this));
        this.m.setOnClickListener$4b8a6d15(new ax(this));
        String str1 = MyApplication.a().g();
        BookReadRecord localBookReadRecord;
        int i2;
        if (this.c.equals(str1)) {
            localBookReadRecord = BookReadRecord.getOnShelf(this.c);
            if ((localBookReadRecord == null) || (this.g == null)) {
                i2 = -1;
                if (i2 != -1)
                    this.g.a(i2, 0);
                MyApplication.a().c(null);
            }
        } else {
            MyApplication.a().a(this.g);
            if ((!q()) && (!com.clilystudio.netbook.hpay100.a_Pack.a.h(this.L)))
                break label345;
            if (!q())
                break label324;
            if (MixTocRecord.get(this.e) == null)
                break label319;
        }
        while (true) {
            if (i1 == 0)
                break label339;
            g();
            return;
            int i3 = localBookReadRecord.getTocIndex();
            String str2 = localBookReadRecord.getChapterTitle();
            i2 = this.g.g();
            if (i3 <= i2)
                i2 = i3;
            ae localae = new ae();
            if (a(localae, str2, i2))
                break;
            int i4 = i1;
            int i5 = 0;
            int i6 = i1;
            label229:
            if (i5 < 20) {
                if (i6 != 0) {
                    int i8 = i3 + i4;
                    if (a(localae, str2, i8)) {
                        i2 = i8;
                        break;
                    }
                }
                for (i6 = 0; ; i6 = i1) {
                    i5++;
                    break label229;
                    int i7 = i3 - i4;
                    if (a(localae, str2, i7)) {
                        i2 = i7;
                        break;
                    }
                    i4++;
                }
            }
            i2 = -1;
            break;
            label319:
            i1 = 0;
            continue;
            label324:
            if (TocReadRecord.get(this.e) != null)
                continue;
            i1 = 0;
        }
        label339:
        c(0);
        return;
        label345:
        if ((this.I) && (!this.H)) {
            D();
            return;
        }
        g();
    }

    private void C() {
        aL localaL = new aL(this);
        aM localaM = new aM(this);
        aN localaN = new aN(this);
        for (int i1 = 0; i1 < 3; i1++) {
            o localo = new o(this, this.h);
            this.b[i1] = localo;
            localo.a(localaL);
            localo.a(localaM);
            localo.a(localaN);
        }
        registerReceiver(this.ag, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        registerReceiver(this.ah, new IntentFilter("android.intent.action.TIME_TICK"));
    }

    private void D() {
        if (isFinishing())
            return;
        if (this.k == null) {
            this.k = ReaderTocDialog.a();
            this.k.a(this.g, this.x);
            this.k.a(new aO(this));
            this.k.a(new aP(this));
            this.k.a(new aQ(this));
        }
        com.clilystudio.netbook.hpay100.a_Pack.a.a(this, this.k);
    }

    private void E() {
        if (this.b == null) ;
        while (true) {
            return;
            o[] arrayOfo = this.b;
            int i1 = arrayOfo.length;
            for (int i2 = 0; i2 < i1; i2++) {
                n localn = arrayOfo[i2].j();
                if (localn == null)
                    continue;
                ReaderChapter localReaderChapter = localn.a();
                if (localReaderChapter == null)
                    continue;
                localReaderChapter.setMaxIndex(this.g.g());
            }
        }
    }

    private void F() {
        if (this.o) {
            H();
            return;
        }
        G();
    }

    @SuppressLint({"NewApi"})
    private void G() {
        if (!this.o) {
            this.o = true;
            if (this.M != 0)
                break label122;
            this.r.setVisibility(0);
            getWindow().addFlags(2048);
            getWindow().clearFlags(1024);
            if (this.E)
                this.B.setVisibility(0);
            n localn = A();
            String str = null;
            if (localn != null) {
                ReaderChapter localReaderChapter = localn.a();
                str = null;
                if (localReaderChapter != null)
                    str = localn.a().getLink();
            }
            this.r.setChapterLink(str);
            if ((com.clilystudio.netbook.hpay100.a_Pack.a.h()) && (!this.p))
                this.q.setSystemUiVisibility(0);
        }
        label122:
        do {
            return;
            if (this.M != 1)
                continue;
            this.T.clearAnimation();
            this.t.a();
            return;
        }
        while (this.M != 2);
        this.V.pauseSpeaking();
        this.u.setPause(true);
        this.u.a();
        com.clilystudio.netbook.umeng.a_Pack.b.a(this, "tts_pause_speaking", this.d);
    }

    @SuppressLint({"NewApi"})
    private void H() {
        if (this.o) {
            this.o = false;
            this.r.setVisibility(8);
            this.s.setVisibility(8);
            this.t.b();
            if (this.M == 1)
                this.T.e();
            if (this.M == 2) {
                this.u.setVisibility(8);
                if (this.u.b()) {
                    this.V.resumeSpeaking();
                    this.u.setPause(false);
                }
            }
            this.B.setVisibility(8);
            getWindow().addFlags(1024);
            getWindow().clearFlags(2048);
            if (this.F) {
                getWindow().addFlags(512);
                com.clilystudio.netbook.hpay100.a_Pack.a.a(this.q);
            }
        } else {
            if (!this.i.f())
                break label235;
            if ((com.clilystudio.netbook.hpay100.a_Pack.a.h()) && (this.p))
                this.q.setSystemUiVisibility(2055);
        }
        label235:
        do {
            return;
            getWindow().addFlags(2048);
            getWindow().clearFlags(1024);
            getWindow().clearFlags(512);
            if ((!com.clilystudio.netbook.hpay100.a_Pack.a.h()) || (!this.p))
                break;
            this.q.setSystemUiVisibility(0);
            break;
        }
        while ((!com.clilystudio.netbook.hpay100.a_Pack.a.h()) || (!this.p));
        this.q.setSystemUiVisibility(1);
    }

    private void I() {
        this.T.setVisibility(8);
        this.U.setVisibility(8);
    }

    private void J() {
        this.F = com.clilystudio.netbook.hpay100.a_Pack.a.l(this, "reader_opt_full_screen");
        this.r.a(this.F);
        H();
    }

    private void K() {
        this.l.removeCallbacks(this.ad);
        int i1 = this.i.d();
        if (i1 != 0)
            this.l.postDelayed(this.ad, i1);
    }

    private void L() {
        this.T.clearAnimation();
        this.M = 0;
        this.m.setReadMode(0);
        H();
        I();
        if (this.o)
            H();
        n localn;
        do {
            return;
            localn = A();
        }
        while ((localn == null) || (!localn.f()));
        this.m.setCurrentItem(-1 + this.n, false);
        v();
    }

    private void M() {
        if (this.b[this.n].f()) {
            L();
            return;
        }
        if (!this.T.isShown()) {
            this.T.setVisibility(0);
            if (!this.h.h())
                break label74;
            this.U.setBackgroundResource(2130837612);
        }
        while (true) {
            this.U.setVisibility(0);
            this.T.a();
            return;
            label74:
            this.U.setBackgroundResource(2130837611);
        }
    }

    private void N() {
        n localn = A();
        if (localn == null)
            return;
        E();
        if ((localn.e()) || (!w())) {
            if (this.M == 1) {
                if (!this.h.i())
                    break label84;
                this.T.setText(localn.a(this));
            }
            while (true) {
                this.T.b();
                this.m.setCurrentItem(1 + this.n, false);
                v();
                return;
                label84:
                this.T.setText(localn.c());
            }
        }
        e.a(this, getString(2131034318));
        this.T.clearAnimation();
        I();
        this.M = 0;
        this.m.setReadMode(0);
    }

    private void O() {
        P();
        startActivity(ModeListActivity.a(this, this.c, this.d, this.L));
        overridePendingTransition(2130968602, 2130968603);
    }

    private void P() {
        if (this.g != null) {
            BookReadRecord localBookReadRecord = BookReadRecord.get(this.c);
            if (localBookReadRecord != null) {
                localBookReadRecord.setTocIndex(this.g.k());
                localBookReadRecord.setChapterTitle(this.g.n());
                localBookReadRecord.save();
            }
        }
    }

    private void Q() {
        if (com.clilystudio.netbook.hpay100.a_Pack.a.d()) {
            Iterator localIterator = com.clilystudio.netbook.hpay100.a_Pack.a.j(this.c, this.e).iterator();
            while (localIterator.hasNext()) {
                String str = android.support.design.widget.am.f((String) localIterator.next());
                this.x.add(str);
            }
        }
    }

    private void R() {
        WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
        float f1;
        if (this.h.g())
            f1 = -1.0F;
        while (true) {
            localLayoutParams.screenBrightness = f1;
            getWindow().setAttributes(localLayoutParams);
            return;
            f1 = this.h.f() / 255.0F;
        }
    }

    private String a(String paramString) {
        return getIntent().getStringExtra(paramString);
    }

    private void a(n paramn) {
        if (paramn == null)
            return;
        SlidingMenu localSlidingMenu = g_();
        if ((this.J) || (this.K)) {
            localSlidingMenu.setSlidingEnabled(false);
            return;
        }
        if (paramn.e()) {
            localSlidingMenu.setSlidingEnabled(false);
            return;
        }
        localSlidingMenu.setSlidingEnabled(true);
    }

    private void a(boolean paramBoolean) {
        if (this.b[this.n].f())
            o();
        while (true) {
            return;
            if (this.Y == null)
                break;
            if ((paramBoolean) && (!this.Y[0].startsWith("　　"))) {
                this.W = 0;
                this.X = (1 + this.Y[0].length());
                this.b[this.n].a(this.W, this.X);
                return;
            }
            this.W = this.X;
            if (this.Z > -1 + this.Y.length)
                continue;
            this.X = (1 + (this.W + this.Y[this.Z].length()));
            this.b[this.n].a(this.W, this.X);
            this.V.startSpeaking(this.Y[this.Z], this.ac);
            return;
        }
        e.a(this, "获取章节内容失败,请退出后重试");
    }

    private boolean a(ae paramae, String paramString, int paramInt) {
        boolean bool = paramae.a(paramString, this.g.c(paramInt));
        int i1 = 0;
        if (bool) {
            this.g.a(paramInt);
            this.g.b(0);
            i1 = 1;
        }
        return i1;
    }

    private void b(int paramInt) {
        this.j.a(new aA(this), paramInt);
    }

    private void c(int paramInt) {
        this.j.b(paramInt, new aS(this), true);
    }

    private void n() {
        try {
            stopService(new Intent(this, TtsSpeakingService.class));
            return;
        } catch (Exception localException) {
        }
    }

    private void o() {
        this.V.stopSpeaking();
        this.M = 0;
        this.m.setReadMode(this.M);
        n();
        H();
        this.W = 0;
        this.X = 0;
        this.Z = 0;
    }

    private void p() {
        if ((this.ab != null) && (this.ab.isHeld())) {
            this.ab.release();
            this.ab = null;
        }
    }

    private boolean q() {
        return 5 == this.L;
    }

    private void r() {
        if (this.G) {
            setRequestedOrientation(1);
            return;
        }
        setRequestedOrientation(0);
    }

    private void s() {
        this.g.a(new ar(this));
        this.g.b(new as(this));
        t();
    }

    private void t() {
        Reader localReader = this.g;
        at localat = new at(this);
        boolean bool1;
        if (!this.I) {
            boolean bool2 = getIntent().getBooleanExtra("extra_force_online", false);
            bool1 = false;
            if (!bool2) ;
        } else {
            bool1 = true;
        }
        localReader.a(localat, bool1);
    }

    private void u() {
        this.m.setAdapter(new ay(this));
        this.m.setOnClickListener$4b8a6d15(new az(this));
    }

    private void v() {
        n localn1 = A();
        if ((localn1 != null) && (!localn1.p()))
            if (localn1.n() == 1)
                c(localn1.l());
        n localn3;
        while (true) {
            return;
            int i2 = localn1.l();
            this.j.a(i2, new aT(this), true);
            return;
            o localo1 = this.b[0];
            o localo2 = this.b[1];
            o localo3 = this.b[2];
            n localn2 = localo1.j();
            localn3 = localo2.j();
            n localn4 = localo3.j();
            if ((this.n == 2) && (localn4 != null)) {
                if ((localn4.e()) || (w())) {
                    localo2.a(localn4, true);
                    this.m.setCurrentItem(1, false);
                    localo1.a(localn3);
                    localn4.a(new aK(this, localo3));
                    x();
                    a(localn1);
                    if (this.M == 1)
                        M();
                    if (this.M != 2)
                        continue;
                    if (this.aa.size() == 0) {
                        Object[] arrayOfObject2 = localn4.d();
                        if (arrayOfObject2 == null)
                            continue;
                        this.Y = ((String[]) arrayOfObject2[0]);
                        this.aa = ((LinkedList) arrayOfObject2[1]);
                        a(true);
                        return;
                    }
                    this.b[this.n].a(0, 1 + localn4.c().length());
                    return;
                }
                int i1 = this.g.f();
                this.O.a();
                this.g.b().a(new aH(this, i1));
                return;
            }
            if ((this.n == 0) && (localn2 != null) && (localn2.f())) {
                localo2.a(localn2, true);
                this.m.setCurrentItem(1, false);
                localo3.a(localn3);
                localn2.b(new aI(this, localo1));
                x();
                a(localn1);
                return;
            }
            if (this.n != 1)
                continue;
            if (this.M == 1) {
                M();
                return;
            }
            if (this.M != 2)
                continue;
            if (this.aa.size() != 0)
                break;
            Object[] arrayOfObject1 = localn3.d();
            if (arrayOfObject1 == null)
                continue;
            this.Y = ((String[]) arrayOfObject1[0]);
            this.aa = ((LinkedList) arrayOfObject1[1]);
            a(true);
            return;
        }
        this.b[this.n].a(0, 1 + localn3.c().length());
    }

    private boolean w() {
        ag localag = this.g.b();
        return (localag == null) || (localag.getStatus() == AsyncTask.Status.FINISHED);
    }

    private void x() {
        n localn = A();
        if (localn == null)
            return;
        this.g.a(localn.l(), localn.m());
    }

    private void y() {
        if (this.o)
            H();
        while (true) {
            return;
            n localn = A();
            if (localn == null)
                continue;
            E();
            if ((!localn.e()) && (w()))
                break label89;
            if (!this.i.c())
                break;
            if (this.m.a(1 + this.n))
                continue;
            v();
            return;
        }
        this.m.setCurrentItem(1 + this.n, false);
        v();
        return;
        label89:
        h_();
    }

    private void z() {
        if (this.o)
            H();
        n localn;
        do {
            return;
            localn = A();
        }
        while (localn == null);
        if (localn.f()) {
            if (this.i.c()) {
                this.m.a(-1 + this.n);
                return;
            }
            this.m.setCurrentItem(-1 + this.n, false);
            v();
            return;
        }
        e.a(this, 2131034407);
    }

    @l
    public void OnUpdateBalanceEvent(G paramG) {
        if (android.support.design.widget.am.e() != null) {
            bo localbo = new bo(this, 0);
            String[] arrayOfString = new String[1];
            arrayOfString[0] = android.support.design.widget.am.e().getToken();
            localbo.b(arrayOfString);
        }
    }

    public final void a() {
        this.t.c();
        this.T.c();
    }

    @Deprecated
    public final void a(int paramInt) {
        TextView localTextView = (TextView) findViewById(2131493454);
        if (localTextView == null)
            return;
        if (paramInt > 0) {
            localTextView.setVisibility(0);
            if (paramInt > 99)
                paramInt = 99;
            localTextView.setText(String.valueOf(paramInt));
            return;
        }
        this.Q = 0;
        localTextView.setVisibility(8);
    }

    public final void b() {
        this.t.d();
        this.T.d();
    }

    public final void c() {
        L();
    }

    public final void d() {
        N();
    }

    public final void e() {
        int i1 = 0;
        this.W = 0;
        this.X = 0;
        o[] arrayOfo = this.b;
        int i2 = arrayOfo.length;
        while (i1 < i2) {
            arrayOfo[i1].a(-1, -1);
            i1++;
        }
    }

    public final String f() {
        return this.e;
    }

    public final void g() {
        this.j.a(new aR(this));
    }

    public final String h() {
        if (this.g != null)
            return this.g.i();
        return null;
    }

    public final void i() {
        P();
        if ((this.g != null) && (this.g.i() != null)) ;
        for (String str = this.g.i(); ; str = this.f) {
            com.clilystudio.netbook.util.I.d = str;
            startActivity(ReaderMixActivity.a(this, this.c, this.d, str));
            overridePendingTransition(2130968602, 2130968603);
            return;
        }
    }

    public final boolean j() {
        if (this.b.length > this.n)
            return this.b[this.n].f();
        return false;
    }

    public final void k() {
        o[] arrayOfo = this.b;
        int i1 = arrayOfo.length;
        for (int i2 = 0; i2 < i1; i2++)
            arrayOfo[i2].h();
    }

    public final String l() {
        return this.c;
    }

    public final boolean m() {
        return this.N;
    }

    protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
        super.onActivityResult(paramInt1, paramInt2, paramIntent);
        this.i.a();
        if (this.j != null) {
            J();
            this.h.a(this.F);
            g();
        }
    }

    public void onBackPressed() {
        if (this.g.m())
            super.onBackPressed();
        while (true) {
            if (j())
                this.b[this.n].g();
            return;
            new h(this).a(2131034455).b(2131034287).a(2131034280, new aX(this)).b(2131034281, new aW(this)).a().show();
        }
    }

    public void onClick(View paramView) {
        if (this.S != null)
            this.S.dismiss();
        switch (paramView.getId()) {
            default:
                return;
            case 2131493931:
                O();
                return;
            case 2131493932:
                startActivity(BookInfoActivity.a(this, this.c));
                return;
            case 2131493933:
        }
        new cb(this, new aZ(this)).a().show();
    }

    @l
    public void onConvertChanged(j paramj) {
        this.h.b();
    }

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        getWindow().addFlags(256);
        getWindow().addFlags(512);
        this.G = com.clilystudio.netbook.hpay100.a_Pack.a.l(this, "reader_orientation");
        r();
        setContentView(2130903121);
        i.a().a(this);
        Intent localIntent = getIntent();
        this.c = a("BOOK_ID");
        this.d = a("BOOK_TITLE");
        this.f = a("SOURCE_HOST");
        this.I = localIntent.getBooleanExtra("IS_SHOW_TOC", false);
        String str = a("TOC_ID");
        if ("MIX_TOC_ID".equals(str))
            str = "MIX_TOC_ID" + this.c;
        this.e = str;
        BookReadRecord localBookReadRecord = BookReadRecord.get(this.c);
        int i1;
        if (localBookReadRecord != null)
            i1 = localBookReadRecord.getReadMode();
        while (true) {
            this.L = i1;
            this.N = localIntent.getBooleanExtra("HAS_OTHER_SOURCES", true);
            com.clilystudio.netbook.util.I.a = this.c;
            com.clilystudio.netbook.util.I.b = this.d;
            com.clilystudio.netbook.util.I.d = this.f;
            com.clilystudio.netbook.util.I.c = this.e;
            com.clilystudio.netbook.util.I.g = this.L;
            com.clilystudio.netbook.hpay100.a_Pack.a.i(this, this.c);
            this.g = new Reader(this.c, this.e, this.d, this.L);
            this.g.a(getIntent().getStringExtra("SOURCE_ID"));
            this.g.a((Map) getIntent().getSerializableExtra("CHAPTERS_KEY"));
            if (paramBundle != null) {
                this.n = paramBundle.getInt("SaveSelectedPageIndex", 0);
                this.H = paramBundle.getBoolean("SaveChangeOrientation");
                this.J = paramBundle.getBoolean("SaveTocDisable");
                this.K = paramBundle.getBoolean("SaveModeDisable");
            }
            Q();
            FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
            this.R = ReaderMenuFragment.a(this.c, this.d);
            localFragmentTransaction.replace(2131493799, this.R);
            try {
                localFragmentTransaction.commitAllowingStateLoss();
                SlidingMenu localSlidingMenu = g_();
                localSlidingMenu.setMode(1);
                localSlidingMenu.setShadowWidthRes(2131099915);
                localSlidingMenu.setShadowDrawable(2130838138);
                localSlidingMenu.setBehindOffsetRes(2131099775);
                localSlidingMenu.setFadeDegree(0.35F);
                localSlidingMenu.setBehindScrollScale(0.0F);
                localSlidingMenu.setTouchModeAbove(1);
                localSlidingMenu.setSlidingEnabled(false);
                localSlidingMenu.setOnOpenedListener(new aj(this));
                if (this.V == null) {
                    this.V = SpeechSynthesizer.createSynthesizer(this, new al(this));
                    this.V.setParameter("engine_type", "local");
                    this.V.setParameter("speed", com.clilystudio.netbook.hpay100.a_Pack.a.a(this, "speech_speed", 50));
                    this.V.setParameter("voice_name", com.clilystudio.netbook.hpay100.a_Pack.a.d(this, "speech_voice", ""));
                }
                this.m = ((PagerWidget) findViewById(2131493158));
                this.r = ((ReaderActionBar) findViewById(2131493166));
                this.s = ((SettingWidget) findViewById(2131493165));
                this.t = ((AutoReaderSetWidget) findViewById(2131493163));
                this.u = ((ReaderTtsSetWidget) findViewById(2131493164));
                this.B = findViewById(2131493159);
                this.C = ((TextView) findViewById(2131493160));
                this.T = ((AutoReaderTextView) findViewById(2131493161));
                this.U = findViewById(2131493162);
                this.h = new bZ(this);
                this.O = ((ThemeLoadingView) findViewById(2131493167));
                this.O.setVisibility(8);
                this.O.a(this.h.h());
                this.i = new bH(this);
                this.h.a(new bf(this));
                this.h.a(new bk(this));
                this.h.a(new bl(this));
                this.h.a(new bm(this));
                this.h.a(new bn(this));
                R();
                this.T.setTextColor(this.h.g);
                this.T.setHeight(this.h.e);
                this.T.setTextSize(0, this.h.a);
                this.T.setLineSpacing(this.h.b, 1.0F);
                if (this.h.h == 2130838077) {
                    this.T.setBackgroundResource(2130838076);
                    if ((this.L != 5) && (this.L != 10) && (!com.clilystudio.netbook.hpay100.a_Pack.a.h(this.L)) && (this.L != 9))
                        break label1363;
                    i2 = 1;
                    View localView = findViewById(2131493862);
                    if (i2 == 0)
                        break label1369;
                    i3 = 0;
                    localView.setVisibility(i3);
                    this.r.setReaderStyle(this.h);
                    this.r.b(this.G);
                    this.r.setOnBtnClickListener$7ead76dc(new ak(this));
                    this.s.setReaderStyle(this.h, this.r);
                    this.s.a(new av(this));
                    this.s.a(new aJ(this));
                    this.u.a(this.V);
                    this.u.setOnPlayChangeListener(new aU(this));
                    this.t.setOptionClickListener(this);
                    this.T.setOnPageTurning(this);
                    this.m.setAutoReaderTextView(this.T);
                    this.j = new K(this.g, this.h);
                    C();
                    this.m.setAdapter(new au(this));
                    this.q = getWindow().getDecorView();
                    if (com.clilystudio.netbook.hpay100.a_Pack.a.h())
                        this.q.setOnSystemUiVisibilityChangeListener(new aV(this));
                    J();
                    if (!this.H)
                        break label1383;
                    this.I = false;
                    Reader localReader = MyApplication.a().b();
                    if (localReader == null)
                        break label1376;
                    this.g = localReader;
                    B();
                    bq localbq = new bq(this, 0);
                    String[] arrayOfString1 = new String[1];
                    arrayOfString1[0] = this.c;
                    localbq.b(arrayOfString1);
                    if (android.support.design.widget.am.e() != null) {
                        bo localbo = new bo(this, 0);
                        String[] arrayOfString2 = new String[1];
                        arrayOfString2[0] = android.support.design.widget.am.e().getToken();
                        localbo.b(arrayOfString2);
                        new bp(this, 0).b(new Void[0]);
                    }
                    new k(this.c).a();
                    com.clilystudio.netbook.umeng.a_Pack.b.a(this, "read_mode_33_new", com.clilystudio.netbook.hpay100.a_Pack.a.g(this.L));
                    return;
                    i1 = MyApplication.a().d();
                }
            } catch (IllegalStateException localIllegalStateException) {
                while (true) {
                    localIllegalStateException.printStackTrace();
                    continue;
                    this.T.setBackgroundResource(this.h.h);
                    continue;
                    label1363:
                    int i2 = 0;
                    continue;
                    label1369:
                    int i3 = 8;
                    continue;
                    label1376:
                    s();
                    continue;
                    label1383:
                    s();
                }
            }
        }
    }

    public void onDestroy() {
        try {
            unregisterReceiver(this.ag);
            unregisterReceiver(this.ah);
            if (this.V != null) {
                this.V.stopSpeaking();
                this.V.destroy();
                com.clilystudio.netbook.hpay100.a_Pack.a.K(this);
                n();
            }
            p();
            i.a().b(this);
            for (o localo : this.b)
                i.a().b(localo);
        } catch (IllegalArgumentException localIllegalArgumentException) {
            while (true)
                localIllegalArgumentException.printStackTrace();
            super.onDestroy();
        }
    }

    public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
        switch (paramInt) {
            default:
                return super.onKeyDown(paramInt, paramKeyEvent);
            case 25:
                if ((this.i.b()) && (this.M == 0)) {
                    y();
                    return true;
                }
                return false;
            case 24:
        }
        if ((this.i.b()) && (this.M == 0)) {
            if (g_().f()) {
                g_().d();
                return true;
            }
            z();
            return true;
        }
        return false;
    }

    public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent) {
        if (paramInt == 82)
            F();
        do
            return true;
        while ((paramInt == 25) || (paramInt == 24));
        return super.onKeyUp(paramInt, paramKeyEvent);
    }

    @l
    public void onModeChanged(v paramv) {
        if (paramv.a() == 1) {
            finish();
            return;
        }
        this.K = true;
        u();
        b(-5);
    }

    public void onPause() {
        int i1 = 1;
        super.onPause();
        if (this.g != null)
            this.g.c();
        if (com.clilystudio.netbook.hpay100.a_Pack.a.a(this, "key_shelf_sort", i1) == i1) ;
        while (true) {
            if (i1 != 0) {
                BookReadRecord localBookReadRecord = BookReadRecord.get(this.c);
                if (localBookReadRecord != null) {
                    localBookReadRecord.readTime = new Date();
                    localBookReadRecord.save();
                    i.a().c(new g());
                }
            }
            try {
                LocalBroadcastManager.getInstance(this).unregisterReceiver(this.ae);
                return;
                i1 = 0;
            } catch (IllegalArgumentException localIllegalArgumentException) {
                localIllegalArgumentException.printStackTrace();
            }
        }
    }

    public void onResume() {
        super.onResume();
        getWindow().addFlags(128);
        K();
        LocalBroadcastManager.getInstance(this).registerReceiver(this.ae, new IntentFilter("com.clilystudio.netbook.dlReceiver"));
        H();
        if ((this.M == 2) || (!"".equals(a))) {
            this.u.setResetVoice(this.v);
            this.u.setVoiceSourceView();
            this.v = false;
        }
    }

    protected void onSaveInstanceState(Bundle paramBundle) {
        super.onSaveInstanceState(paramBundle);
        paramBundle.putInt("SaveSelectedPageIndex", this.n);
        paramBundle.putBoolean("SaveChangeOrientation", this.H);
        paramBundle.putBoolean("SaveTocDisable", this.J);
        paramBundle.putBoolean("SaveModeDisable", this.K);
    }

    @l
    public void onThemeChanged(C paramC) {
        this.O.a(paramC.a());
    }

    public void onUserInteraction() {
        super.onUserInteraction();
        K();
    }
}

