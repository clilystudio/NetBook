package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.am;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnKeyListener;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.PopupWindow$OnDismissListener;
import android.widget.TabHost;
import android.widget.TabHost$OnTabChangeListener;
import android.widget.TabHost$TabContentFactory;
import android.widget.TabHost$TabSpec;
import android.widget.TabWidget;
import android.widget.TextView;
import android.widget.Toast;

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.netbook.event.H;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.push.BookSubRecord;
import com.clilystudio.netbook.push.BookUnSubRecord;
import com.clilystudio.netbook.ui.SearchActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.game.GameTabActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity$Source;
import com.clilystudio.netbook.util.J;
import com.clilystudio.netbook.util.Z;
import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.widget.TabWidgetV2;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipFile;

import butterknife.ButterKnife;
import cn.sharesdk.framework.ShareSDK;

public class HomeActivity extends HomeParentActivity implements ViewPager$OnPageChangeListener, View$OnClickListener, TabHost$OnTabChangeListener, TabHost$TabContentFactory {
// Error: Internal #201: 
// The following method may not be correct.

    private static final String a = null;
    private static HomeActivity w;

    static {
    }

    private TabHost f;
    private ViewPager g;
    private i h;
    private PopupWindow i;
    private PopupWindow j;
    private View k;
    private SmartImageView l;
    private TextView m;
    private TextView n;
    private ImageView o;
    private Account p;
    private ImageView q;
    private ImageView r;
    private ViewGroup s;
    private WebView t;
    private boolean u;
    private String[] v;
    private long b = 0L;
    private boolean c = true;
    private List e = new ArrayList();

    static String a(HomeActivity HomeActivity1) {
        int int2;

        if (HomeActivity1.v == null || HomeActivity1.v.length <= 0)
            return null;
        int2 = (int) (Math.random() * (double) HomeActivity1.v.length);
        return HomeActivity1.v[int2];
    }

    static void a(HomeActivity HomeActivity1, String String2) {
        if (HomeActivity1.t != null)
            HomeActivity1.t.destroy();
        HomeActivity1.t = new WebView((Context) HomeActivity1);
        HomeActivity1.t.getSettings().setJavaScriptEnabled(true);
        HomeActivity1.t.getSettings().setCacheMode(2);
        HomeActivity1.t.setWebViewClient((WebViewClient) new b(HomeActivity1));
        HomeActivity1.t.loadUrl(String2);
        HomeActivity1.u = true;
        com.clilystudio.netbook.umeng.a.b.a((Context) HomeActivity1, "take_17k_webflow");
    }

    private static void a(List List1) {
        Iterator Iterator2 = List1.iterator();

        while (Iterator2.hasNext()) {
            BookReadRecord BookReadRecord3 = (BookReadRecord) Iterator2.next();

            BookSubRecord.create(new StringBuilder("book:").append(BookReadRecord3.getBookId()).toString());
        }
    }

    static String[] a(HomeActivity HomeActivity1, String[] String_1darray2) {
        HomeActivity1.v = String_1darray2;
        return String_1darray2;
    }

    public static HomeActivity b() {
        return w;
    }

    static List b(HomeActivity HomeActivity1) {
        return HomeActivity1.e;
    }

    static ViewPager c(HomeActivity HomeActivity1) {
        return HomeActivity1.g;
    }

    static void d(HomeActivity HomeActivity1) {
        HomeActivity1.m();
    }

    static void e(HomeActivity HomeActivity1) {
        HomeActivity1.n();
    }

    static com.clilystudio.netbook.api.b f(HomeActivity HomeActivity1) {
        return HomeActivity1.d;
    }

    static String g(HomeActivity HomeActivity1) {
        return HomeActivity1.o();
    }

    static com.clilystudio.netbook.api.b h(HomeActivity HomeActivity1) {
        return HomeActivity1.d;
    }

    private void a(int int1) {
        if (int1 >= 0 && int1 < h.getCount()) {
            g.setCurrentItem(int1, true);
            if (int1 == -1 + h.getCount()) {
                boolean boolean2 = com.clilystudio.netbook.hpay100.a.a.r((Context) this, "switch_17kflow");
                float float3 = j();
                double double4 = Math.random();

                if (boolean2 && (double) float3 > double4 && !u)
                    new g(this, (byte) 0).b(new Void[0]);
                u = true;
            }
        }
    }

    private void a(Intent Intent1) {
        String String2 = Intent1.getStringExtra("file_name");

        if (String2 != null) {
            if ("nonsupport".equals(String2))
                com.clilystudio.netbook.util.e.a((Activity) this, "\u5F88\u62B1\u6B49\uFF0C\u6682\u4E0D\u652F\u6301\u6B64\u683C\u5F0F\u7684\u56FE\u4E66");
            else {
                Intent Intent3 = new Intent("com.clilystudio.netbook.ACTION_READ_TXT");

                Intent3.putExtra("file_name", String2);
                startActivity(Intent3);
                return;
            }
        }
    }

    private void a(Account Account1) {
        J.a((Context) this).a(Account1);
    }

    private void a(User User1) {
        if (User1 != null && k != null) {
            l.setImageUrl(User1.getFullAvatar());
            m.setText((CharSequence) User1.getNickname());
        }
    }

    private void e(int int1) {
        switch (int1) {
            default:
                return;
            case 621:
                startActivity(GameTabActivity.a((Context) this));
                com.clilystudio.netbook.hpay100.a.a.n((Context) this, "home_ab_game");
                return;
            case 622:
                startActivity(SearchActivity.a((Context) this));
                com.clilystudio.netbook.hpay100.a.a.n((Context) this, "home_ab_search");
                return;
            case 623:
                l();
                com.clilystudio.netbook.hpay100.a.a.n((Context) this, "home_ab_more");
                return;
        }
    }

    private void h() {
        Iterator Iterator1 = BookSubRecord.getAll().iterator();

        while (Iterator1.hasNext()) {
            BookSubRecord BookSubRecord2 = (BookSubRecord) Iterator1.next();

            com.xiaomi.mipush.sdk.d.b(getApplicationContext(), BookSubRecord2.pushId, null);
        }
    }

    private void i() {
        Iterator Iterator1 = BookUnSubRecord.getAll().iterator();

        while (Iterator1.hasNext()) {
            BookUnSubRecord BookUnSubRecord2 = (BookUnSubRecord) Iterator1.next();

            com.xiaomi.mipush.sdk.d.c(getApplicationContext(), BookUnSubRecord2.pushId, null);
        }
    }

    private float j() {
        String String1 = com.clilystudio.netbook.umeng.a.b.b((Context) this, "rate_17kflow");
        float float3;

        try {
            float3 = Float.parseFloat(String1);
        } catch (Exception Exception2) {
            return 0.0F;
        }
        return float3;
    }

    private void k() {
        if (k != null) {
            l.setImageResource(2130837835);
            m.setText((CharSequence) "\u8BF7\u767B\u5F55");
        }
    }

    private void l() {
        try {
            View View2;

            if (j == null || !j.isShowing()) {
                j = new PopupWindow(getLayoutInflater().inflate(2130903227, null, false), -1, com.clilystudio.netbook.hpay100.a.a.L((Context) this));
                j.setAnimationStyle(2131165629);
                j.showAtLocation(a().a(), 0, 0, 0);
            }
            View2 = findViewById(2131493096);
            if (i == null) {
                i = new PopupWindow(k, getResources().getDimensionPixelSize(2131099746), -2);
                i.setFocusable(true);
                i.setOutsideTouchable(true);
                i.setBackgroundDrawable((Drawable) new ColorDrawable(0));
                i.getContentView().setFocusableInTouchMode(true);
                i.getContentView().setFocusable(true);
                i.getContentView().setOnKeyListener((View$OnKeyListener) new c(this));
            }
            i = i;
            i.setAnimationStyle(2131165628);
            i.showAtLocation(View2, 53, com.clilystudio.netbook.hpay100.a.a.a((Context) this, 5.0F), am.l((Context) this) + am.k((Context) this));
            i.setOnDismissListener((PopupWindow$OnDismissListener) new d(this));
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return;
        }
    }

    private void m() {
        if (i != null && i.isShowing())
            i.dismiss();
        n();
    }

    private void n() {
        if (j != null && j.isShowing())
            j.dismiss();
    }

    private String o() {
        String String1 = getApplicationInfo().sourceDir;
        ZipFile ZipFile2;

        try {
            ZipFile2 = new ZipFile(String1);
        } catch (IOException IOException5) {
            ZipFile2 = null;
            try {
                IOException5.printStackTrace();
            } finally {
                if (ZipFile2 != null) {
                    try {
                        ZipFile2.close();
                    } catch (IOException IOException4) {
                        IOException4.printStackTrace();
                    }
                }
                throw Object3;
            }
            if (ZipFile2 != null) {
                try {
                    ZipFile2.close();
                } catch (IOException IOException6) {
                    IOException6.printStackTrace();
                }
            }
        } finally {
            ZipFile2 = null;
            if (ZipFile2 != null)
                ZipFile2.close();
            throw Object3;
        }
        return null;
    }

    public final HomeShelfFragment a(String String1) {
        HomeShelfFragment HomeShelfFragment2 = (HomeShelfFragment) getSupportFragmentManager().findFragmentByTag(String1);

        if (HomeShelfFragment2 == null) {
            Log.i(a, "getHomeShelfFragment ");
            HomeShelfFragment2 = HomeShelfFragment.b();
        }
        return HomeShelfFragment2;
    }

    public View createTabContent(String String1) {
        View View2 = new View((Context) this);

        View2.setMinimumHeight(0);
        View2.setMinimumWidth(0);
        return View2;
    }

    public final void f() {
        a(0);
    }

    public final HomeFindFragment g(String String1) {
        HomeFindFragment HomeFindFragment2 = (HomeFindFragment) getSupportFragmentManager().findFragmentByTag(String1);

        if (HomeFindFragment2 == null) {
            Bundle Bundle3 = new Bundle();

            Bundle3.putBoolean("game_center_show", c);
            HomeFindFragment2 = HomeFindFragment.a(Bundle3);
        }
        return HomeFindFragment2;
    }

    public final void g() {
        g.setCurrentItem(2, true);
    }

    public void onAccountUpdated(com.clilystudio.netbook.event.a a1) {
        Account Account2 = am.e();

        if (Account2 != null) {
            l.setImageUrl(Account2.getUser().getFullAvatar());
            m.setText((CharSequence) Account2.getUser().getNickname());
        }
    }

    public void onBackPressed() {
        if (e != null && e.size() > 0 && e.get(0) instanceof HomeShelfFragment && ((HomeShelfFragment) e.get(0)).c())
            ((HomeShelfFragment) e.get(0)).e();
        else {
            long long1 = System.currentTimeMillis();

            if (as.c()) {
                uk.me.lewisdeane.ldialogs.h h3 = new uk.me.lewisdeane.ldialogs.h((Context) this);

                h3.e = "\u5373\u5C06\u9000\u51FA\u542C\u4E66\uFF0C\u6709\u58F0\u5C0F\u8BF4\u662F\u5426\u7EE7\u7EED\u64AD\u653E\uFF1F";
                h3.a("\u90FD\u5173\u4E86", (DialogInterface$OnClickListener) new f(this)).b("\u7EE7\u7EED\u653E", (DialogInterface$OnClickListener) new e(this)).b();
            } else if (long1 - b > 2000L) {
                b = long1;
                Toast.makeText((Context) this, 2131034373, 0).show();
            } else
                super.onBackPressed();
        }
    }

    public void onBookShelfRefresh(BookShelfRefreshEvent BookShelfRefreshEvent1) {
        if (p != null)
            a(p);
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void onClick(View View1) {
    }

    public void onCreate(Bundle Bundle1) {
        android.support.v7.app.a a2;
        ImageView ImageView3;
        TabWidgetV2 TabWidgetV2_4;
        LayoutInflater LayoutInflater5;
        int int6;
        View View7;
        View View8;
        View View9;
        View View10;
        View View11;
        View View12;

        super.onCreate(Bundle1);
        setContentView(2130903105);
        ButterKnife.inject((Activity) this);
        w = this;
        a2 = a();
        a2.c(false);
        a2.a(false);
        a2.a(2130903226);
        a2.d(true);
        q = (ImageView) a2.a().findViewById(2131493487);
        ImageView3 = (ImageView) a2.a().findViewById(2131493486);
        r = (ImageView) a2.a().findViewById(2131493485);
        q.setOnClickListener(this);
        ImageView3.setOnClickListener(this);
        r.setOnClickListener(this);
        if (com.clilystudio.netbook.hpay100.a.a.w((Context) this))
            r.setVisibility(0);
        else
            r.setVisibility(8);
        c = com.clilystudio.netbook.hpay100.a.a.x((Context) this);
        if (!c)
            r.setVisibility(8);
        com.clilystudio.netbook.event.i.a().a(this);
        f = (TabHost) findViewById(2131493096);
        TabWidgetV2_4 = (TabWidgetV2) findViewById(16908307);
        g = (ViewPager) findViewById(2131493097);
        h = new i(this, getSupportFragmentManager());
        g.setOffscreenPageLimit(3);
        g.setAdapter((PagerAdapter) h);
        g.setOnPageChangeListener(this);
        f.setup();
        f.setOnTabChangedListener(this);
        if (f.getTabWidget().getTabCount() > 0) {
            f.setCurrentTab(0);
            f.clearAllTabs();
        }
        LayoutInflater5 = getLayoutInflater();
        for (int6 = 0; int6 < h.getCount(); ++int6) {
            TabHost$TabSpec TabSpec21 = f.newTabSpec(new StringBuilder("tab").append(int6).toString());
            View View23;

            TabSpec21.setContent(this);
            if (int6 == 1 && com.clilystudio.netbook.hpay100.a.a.a((Context) this, "FRIST_RUN_POST", true) && com.clilystudio.netbook.hpay100.a.a.r((Context) this, "switch_news")) {
                View View25 = LayoutInflater5.inflate(2130903230, null);

                s = (ViewGroup) View25;
                View23 = View25;
            } else
                View23 = LayoutInflater5.inflate(2130903229, null);
            ((TextView) View23.findViewById(2131493509)).setText((CharSequence) (String) h.getPageTitle(int6));
            TabSpec21.setIndicator(View23);
            f.addTab(TabSpec21);
        }
        p = am.e();
        k = getLayoutInflater().inflate(2130903228, null);
        View7 = k.findViewById(2131493488);
        View8 = k.findViewById(2131493491);
        View9 = k.findViewById(2131493496);
        View10 = k.findViewById(2131493502);
        View11 = k.findViewById(2131493507);
        View12 = k.findViewById(2131493504);
        k.findViewById(2131493498).setOnClickListener(this);
        k.findViewById(2131493500).setOnClickListener(this);
        View7.setOnClickListener(this);
        View8.setOnClickListener(this);
        View9.setOnClickListener(this);
        View10.setOnClickListener(this);
        View11.setOnClickListener(this);
        View12.setOnClickListener(this);
        l = (SmartImageView) View7.findViewById(2131493489);
        m = (TextView) View7.findViewById(2131493490);
        if (p != null)
            a(p.getUser());
        else
            k();
        n = (TextView) k.findViewById(2131493506);
        o = (ImageView) k.findViewById(2131493505);
        if (com.clilystudio.netbook.hpay100.a.a.a((Context) this, "customer_night_theme", false)) {
            n.setText(2131034365);
            o.setImageResource(2130838180);
        } else {
            n.setText(2131034366);
            o.setImageResource(2130838181);
        }
        if (!com.clilystudio.netbook.hpay100.a.a.a((Context) this, "bookPushRecords", false)) {
            List List20 = BookReadRecord.getAll();

            if (List20 != null && !List20.isEmpty())
                a(List20);
            com.clilystudio.netbook.hpay100.a.a.b((Context) this, "bookPushRecords", true);
        }
        h();
        i();
        new Handler().postDelayed((Runnable) new l(this), 3000L);
        if (p != null) {
            h h17;
            String[] String_1darray18;

            com.clilystudio.netbook.util.e.c("launch");
            h17 = new h(this);
            String_1darray18 = new String[1];
            String_1darray18[0] = p.getToken();
            h17.b(String_1darray18);
        }
        if (Bundle1 != null)
            TabWidgetV2_4.setIndex(Bundle1.getInt("extra_index"));
        findViewById(2131493487).setOnClickListener(this);
        findViewById(2131493486).setOnClickListener(this);
        if (this != null) {
            Account Account16 = am.e();

            if (Account16 != null)
                new Z((Activity) this, Account16.getToken()).a(true);
        }
        a(getIntent());
        new j(this).b(new String[0]);
        new Handler().postDelayed((Runnable) new a(this), 10000L);
    }

    protected void onDestroy() {
        super.onDestroy();
        ShareSDK.stopSDK((Context) this);
        com.clilystudio.netbook.event.i.a().b(this);
        p = null;
        if (t != null) {
            t.clearHistory();
            t.clearCache(true);
            t.freeMemory();
            t.pauseTimers();
            t.destroy();
        }
        u = false;
        com.clilystudio.netbook.hpay100.a.a.b((Context) this, "search_hot_words_date", 0);
    }

    public void onEnterTweet(com.clilystudio.netbook.event.o o1) {
        s.getChildAt(1).setVisibility(8);
    }

    public boolean onKeyDown(int int1, KeyEvent KeyEvent2) {
        if (int1 != 82 || KeyEvent2.getRepeatCount() != 0)
            return super.onKeyDown(int1, KeyEvent2);
        l();
        return true;
    }

    public void onLoginEvent(com.clilystudio.netbook.event.t t1) {
        p = t1.a();
        if (p != null) {
            boolean boolean2;
            h h3;
            String[] String_1darray4;

            a(p.getUser());
            if (t1.b() != AuthLoginActivity$Source.HOME)
                boolean2 = true;
            else
                boolean2 = false;
            new Z((Activity) this, p.getToken()).a(boolean2);
            a(p);
            h3 = new h(this);
            String_1darray4 = new String[1];
            String_1darray4[0] = p.getToken();
            h3.b(String_1darray4);
        }
    }

    protected void onNewIntent(Intent Intent1) {
        super.onNewIntent(Intent1);
        a(Intent1);
    }

    public void onNotifEvent(com.clilystudio.netbook.event.w w1) {
        int int2 = J.a((Context) this).e();
        View View3 = k.findViewById(2131493495);
        TextView TextView4 = (TextView) k.findViewById(2131493494);

        if (int2 > 0) {
            TextView4.setVisibility(0);
            View3.setVisibility(8);
            TextView4.setText((CharSequence) String.valueOf(int2));
            if (q != null)
                q.setImageResource(2130837870);
        } else if (int2 == -1) {
            TextView4.setVisibility(8);
            View3.setVisibility(0);
            if (q != null) {
                q.setImageResource(2130837870);
                return;
            }
        } else {
            TextView4.setVisibility(8);
            View3.setVisibility(8);
            if (q != null) {
                q.setImageResource(2130837871);
                return;
            }
        }
    }

    public void onPageScrollStateChanged(int int1) {
    }

    public void onPageScrolled(int int1, float float2, int int3) {
        ((TabWidgetV2) f.getTabWidget()).a(int1, int3);
    }

    public void onPageSelected(int int1) {
        TabWidget TabWidget2 = f.getTabWidget();
        int int3 = TabWidget2.getDescendantFocusability();

        TabWidget2.setDescendantFocusability(393216);
        f.setCurrentTab(int1);
        TabWidget2.setDescendantFocusability(int3);
    }

    public void onPause() {
        super.onPause();
        if (i != null && i.isShowing() && j != null && j.isShowing())
            m();
    }

    public void onResume() {
        Account Account1;

        super.onResume();
        com.clilystudio.netbook.api.e.a("1".equals(com.clilystudio.netbook.umeng.a.b.b((Context) this, "use_http_dns")));
        if (com.clilystudio.netbook.hpay100.a.a.l())
            new com.clilystudio.netbook.util.s((Context) this).b(new Void[0]);
        Account1 = am.e();
        if (Account1 != null) {
            p = Account1;
            a(Account1.getUser());
        } else {
            p = null;
            k();
        }
    }

    protected void onSaveInstanceState(Bundle Bundle1) {
        super.onSaveInstanceState(Bundle1);
        Bundle1.putInt("extra_index", f.getCurrentTab());
    }

    public void onTabChanged(String String1) {
        a(f.getCurrentTab());
    }

    public void onUpdateGameCenter(H H1) {
        boolean boolean2 = true;
        int int3;

        if (c == H1.a())
            int3 = 0;
        else
            int3 = boolean2;
        if (int3 != 0) {
            HomeFindFragment HomeFindFragment4;

            if (!H1.a() || !com.clilystudio.netbook.hpay100.a.a.w((Context) this))
                boolean2 = false;
            c = boolean2;
            if (c)
                r.setVisibility(0);
            else
                r.setVisibility(4);
            HomeFindFragment4 = (HomeFindFragment) e.get(2);
            if (HomeFindFragment4 != null)
                HomeFindFragment4.a(c);
        }
    }
}
