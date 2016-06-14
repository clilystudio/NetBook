package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.am;
import android.support.v4.app.Fragment;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import android.widget.Toast;

import com.clilystudio.netbook.db.AccountInfo;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.netbook.event.H;
import com.clilystudio.netbook.event.o;
import com.clilystudio.netbook.event.t;
import com.clilystudio.netbook.event.w;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.push.BookSubRecord;
import com.clilystudio.netbook.push.BookUnSubRecord;
import com.clilystudio.netbook.reader.txt.ScanTxtFileActivity;
import com.clilystudio.netbook.ui.SearchActivity;
import com.clilystudio.netbook.ui.SettingsActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.WifiActivity;
import com.clilystudio.netbook.ui.game.GameTabActivity;
import com.clilystudio.netbook.ui.post.CommonPostListActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.ui.user.AuthLoginActivity$Source;
import com.clilystudio.netbook.ui.user.MyMessageActivity;
import com.clilystudio.netbook.ui.user.UserInfoActivity;
import com.clilystudio.netbook.util.J;
import com.clilystudio.netbook.util.Z;
import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.util.s;
import com.clilystudio.netbook.widget.TabWidgetV2;
import com.umeng.onlineconfig.OnlineConfigAgent;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipFile;

import butterknife.ButterKnife;
import cn.sharesdk.framework.ShareSDK;

public class HomeActivity extends HomeParentActivity
        implements ViewPager$OnPageChangeListener,
        View.OnClickListener,
        TabHost.OnTabChangeListener,
        TabHost.TabContentFactory {
    private static final String a = HomeActivity.class.getSimpleName();
    private static HomeActivity w;
    private long b = 0;
    private boolean c = true;
    private List<Fragment> e = new ArrayList<Fragment>();
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

    static /* synthetic */ String a(HomeActivity homeActivity) {
        if (homeActivity.v != null && homeActivity.v.length > 0) {
            int n = (int) (Math.random() * (double) homeActivity.v.length);
            return homeActivity.v[n];
        }
        return null;
    }

    static /* synthetic */ void a(HomeActivity homeActivity, String string) {
        if (homeActivity.t != null) {
            homeActivity.t.destroy();
        }
        homeActivity.t = new WebView(homeActivity);
        homeActivity.t.getSettings().setJavaScriptEnabled(true);
        homeActivity.t.getSettings().setCacheMode(2);
        homeActivity.t.setWebViewClient((WebViewClient) ((Object) new b(homeActivity)));
        homeActivity.t.loadUrl(string);
        homeActivity.u = true;
        MiStatInterface.recordCountEvent("take_17k_webflow",null);
    }

    private static void a(List<BookReadRecord> list) {
        for (BookReadRecord bookReadRecord : list) {
            BookSubRecord.create("book:" + bookReadRecord.getBookId());
        }
    }

    static /* synthetic */ String[] a(HomeActivity homeActivity, String[] arrstring) {
        homeActivity.v = arrstring;
        return arrstring;
    }

    public static HomeActivity b() {
        return w;
    }

    static /* synthetic */ List b(HomeActivity homeActivity) {
        return homeActivity.e;
    }

    static /* synthetic */ ViewPager c(HomeActivity homeActivity) {
        return homeActivity.g;
    }

    static /* synthetic */ void d(HomeActivity homeActivity) {
        homeActivity.m();
    }

    static /* synthetic */ void e(HomeActivity homeActivity) {
        homeActivity.n();
    }

    static /* synthetic */ com.clilystudio.netbook.api.b f(HomeActivity homeActivity) {
        return homeActivity.d;
    }

    static /* synthetic */ String g(HomeActivity homeActivity) {
        return homeActivity.o();
    }

    static /* synthetic */ com.clilystudio.netbook.api.b h(HomeActivity homeActivity) {
        return homeActivity.d;
    }

    private void a(int n) {
        if (n >= 0 && n < this.h.getCount()) {
            this.g.setCurrentItem(n, true);
            if (n == -1 + this.h.getCount()) {
                boolean bl = com.clilystudio.netbook.hpay100.a.a.r(this, "switch_17kflow");
                float f2 = this.j();
                double d2 = Math.random();
                if (bl && (double) f2 > d2 && !this.u) {
                    new g(this, 0).b((Object[]) new Void[0]);
                }
                this.u = true;
            }
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private void a(Intent intent) {
        String string = intent.getStringExtra("file_name");
        if (string == null) return;
        if ("nonsupport".equals(string)) {
            com.clilystudio.netbook.util.e.a((Activity) this, (String) "\u5f88\u62b1\u6b49\uff0c\u6682\u4e0d\u652f\u6301\u6b64\u683c\u5f0f\u7684\u56fe\u4e66");
            return;
        }
        Intent intent2 = new Intent("com.clilystudio.netbook.ACTION_READ_TXT");
        intent2.putExtra("file_name", string);
        this.startActivity(intent2);
    }

    private void a(Account account) {
        J.a(this).a(account);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(User user) {
        if (user == null || this.k == null) {
            return;
        }
        this.l.setImageUrl(user.getFullAvatar());
        this.m.setText(user.getNickname());
    }

    private void e(int n) {
        switch (n) {
            default: {
                return;
            }
            case 2131493485: {
                this.startActivity(GameTabActivity.a(this));
                com.clilystudio.netbook.hpay100.a.a.n(this, "home_ab_game");
                return;
            }
            case 2131493486: {
                this.startActivity(SearchActivity.a(this));
                com.clilystudio.netbook.hpay100.a.a.n(this, "home_ab_search");
                return;
            }
            case 2131493487:
        }
        this.l();
        com.clilystudio.netbook.hpay100.a.a.n(this, "home_ab_more");
    }

    private void h() {
        for (BookSubRecord bookSubRecord : BookSubRecord.getAll()) {
            com.xiaomi.mipush.sdk.d.b(this.getApplicationContext(), bookSubRecord.pushId, null);
        }
    }

    private void i() {
        for (BookUnSubRecord bookUnSubRecord : BookUnSubRecord.getAll()) {
            com.xiaomi.mipush.sdk.d.c(this.getApplicationContext(), bookUnSubRecord.pushId, null);
        }
    }

    private float j() {
        String string = OnlineConfigAgent.getInstance().getConfigParams(this, "rate_17kflow");
        try {
            float f2 = Float.parseFloat(string);
            return f2;
        } catch (Exception var2_3) {
            return 0.0f;
        }
    }

    private void k() {
        if (this.k != null) {
            this.l.setImageResource(2130837835);
            this.m.setText("\u8bf7\u767b\u5f55");
        }
    }

    private void l() {
        try {
            if (this.j == null || !this.j.isShowing()) {
                this.j = new PopupWindow(this.getLayoutInflater().inflate(2130903227, null, false), -1, com.clilystudio.netbook.hpay100.a.a.L(this));
                this.j.setAnimationStyle(2131165629);
                this.j.showAtLocation(this.a().a(), 0, 0, 0);
            }
            View view = this.findViewById(2131493096);
            if (this.i == null) {
                this.i = new PopupWindow(this.k, this.getResources().getDimensionPixelSize(2131099746), -2);
                this.i.setFocusable(true);
                this.i.setOutsideTouchable(true);
                this.i.setBackgroundDrawable(new ColorDrawable(0));
                this.i.getContentView().setFocusableInTouchMode(true);
                this.i.getContentView().setFocusable(true);
                this.i.getContentView().setOnKeyListener((View.OnKeyListener) ((Object) new c(this)));
            }
            this.i.setAnimationStyle(2131165628);
            this.i.showAtLocation(view, 53, com.clilystudio.netbook.hpay100.a.a.a((Context) this, 5.0f), am.l((Context) this) + am.k((Context) this));
            this.i.setOnDismissListener((PopupWindow.OnDismissListener) ((Object) new d(this)));
            return;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return;
        }
    }

    private void m() {
        if (this.i != null && this.i.isShowing()) {
            this.i.dismiss();
        }
        this.n();
    }

    private void n() {
        if (this.j != null && this.j.isShowing()) {
            this.j.dismiss();
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private String o() {
        block19:
        {
            block20:
            {
                var1_1 = this.getApplicationInfo().sourceDir;
                var2_2 = new ZipFile(var1_1);
                try {
                    var7_3 = var2_2.entries();
                    do {
                        if (!var7_3.hasMoreElements()) break block19;
                    } while (!(var9_4 = var7_3.nextElement()).getName().equals("META-INF/DATA"));
                    var10_5 = new BufferedReader(new InputStreamReader(var2_2.getInputStream(var9_4)));
                    var11_6 = new StringBuilder();
                    while ((var12_7 = var10_5.readLine()) != null) {
                        var11_6.append(var12_7);
                    }
                } catch (IOException var5_8) {
                }
                var10_5.close();
                var14_11 = var11_6.toString();
                break block20;
                **GOTO lbl -1000
                {
                    catch(Throwable var3_17){
                }
                }
            }
            try {
                var2_2.close();
                return var14_11;
            } catch (IOException var15_12) {
                var15_12.printStackTrace();
                return var14_11;
            }
        }
        try {
            var2_2.close();
            return null;
        } catch (IOException var8_13) {
            var8_13.printStackTrace();
            return null;
        } catch (Throwable var3_15) {
            var2_2 = null;
            if (var2_2 == null) throw var3_16;
            try {
                var2_2.close();
            } catch (IOException var4_18) {
                var4_18.printStackTrace();
                throw var3_16;
            }
            throw var3_16;
        } catch (IOException var5_10) {
            var2_2 = null;
        }
        lbl - 1000: // 2 sources:
        {
            var5_9.printStackTrace();
            if (var2_2 == null) return null;
            try {
                var2_2.close();
                return null;
            } catch (IOException var6_14) {
                var6_14.printStackTrace();
                return null;
            }
        }
    }

    public final HomeShelfFragment a(String string) {
        HomeShelfFragment homeShelfFragment = (HomeShelfFragment) this.getSupportFragmentManager().findFragmentByTag(string);
        if (homeShelfFragment == null) {
            Log.i(a, "getHomeShelfFragment ");
            homeShelfFragment = HomeShelfFragment.b();
        }
        return homeShelfFragment;
    }

    @Override
    public View createTabContent(String string) {
        View view = new View(this);
        view.setMinimumHeight(0);
        view.setMinimumWidth(0);
        return view;
    }

    public final void f() {
        this.a(0);
    }

    public final HomeFindFragment g(String string) {
        HomeFindFragment homeFindFragment = (HomeFindFragment) this.getSupportFragmentManager().findFragmentByTag(string);
        if (homeFindFragment == null) {
            Bundle bundle = new Bundle();
            bundle.putBoolean("game_center_show", this.c);
            homeFindFragment = HomeFindFragment.a(bundle);
        }
        return homeFindFragment;
    }

    public final void g() {
        this.g.setCurrentItem(2, true);
    }

    @com.squareup.a.l
    public void onAccountUpdated(com.clilystudio.netbook.event.a a2) {
        Account account = am.e();
        if (account != null) {
            this.l.setImageUrl(account.getUser().getFullAvatar());
            this.m.setText(account.getUser().getNickname());
        }
    }

    @Override
    public void onBackPressed() {
        if (this.e != null && this.e.size() > 0 && this.e.get(0) instanceof HomeShelfFragment && ((HomeShelfFragment) this.e.get(0)).c()) {
            ((HomeShelfFragment) this.e.get(0)).e();
            return;
        }
        long l2 = System.currentTimeMillis();
        if (as.c()) {
            uk.me.lewisdeane.ldialogs.h h2 = new uk.me.lewisdeane.ldialogs.h(this);
            h2.e = "\u5373\u5c06\u9000\u51fa\u542c\u4e66\uff0c\u6709\u58f0\u5c0f\u8bf4\u662f\u5426\u7ee7\u7eed\u64ad\u653e\uff1f";
            h2.a("\u90fd\u5173\u4e86", (DialogInterface.OnClickListener) ((Object) new f(this))).b("\u7ee7\u7eed\u653e", (DialogInterface.OnClickListener) ((Object) new e(this))).b();
            return;
        }
        if (l2 - this.b > 2000) {
            this.b = l2;
            Toast.makeText((Context) this, 2131034373, 0).show();
            return;
        }
        super.onBackPressed();
    }

    @com.squareup.a.l
    public void onBookShelfRefresh(BookShelfRefreshEvent bookShelfRefreshEvent) {
        if (this.p != null) {
            this.a(this.p);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onClick(View view) {
        this.m();
        switch (view.getId()) {
            default: {
                return;
            }
            case 2131493488: {
                if (this.p != null) {
                    this.m();
                    this.startActivity(UserInfoActivity.a(this, this.p.getToken()));
                    return;
                }
                Intent intent = AuthLoginActivity.a(this);
                intent.putExtra("KEY_SOURCE", (Serializable) ((Object) AuthLoginActivity$Source.HOME));
                this.startActivityForResult(intent, 100);
                return;
            }
            case 2131493491: {
                if (this.p != null) {
                    this.m();
                    com.clilystudio.netbook.hpay100.a.a.b((Context) this, "key_enter_msg_time", System.currentTimeMillis());
                    AccountInfo accountInfo = AccountInfo.getOrCreate(this.p.getToken());
                    accountInfo.setPrevUnimpNotif(J.a(this).b());
                    accountInfo.save();
                    MiStatInterface.recordCountEvent("view_notification",null);
                    com.clilystudio.netbook.event.i.a().c(new w());
                    this.startActivity(new Intent(this, MyMessageActivity.class));
                    return;
                }
                this.startActivityForResult(AuthLoginActivity.a(this), 100);
                return;
            }
            case 2131493496: {
                if (this.p != null) {
                    this.m();
                    new Z(this, this.p.getToken()).a(false);
                    return;
                }
                this.startActivityForResult(AuthLoginActivity.a(this), 100);
                return;
            }
            case 2131493502: {
                this.startActivity(CommonPostListActivity.a(this, "android-feedback"));
                return;
            }
            case 2131493504: {
                Intent intent = new Intent(this, HomeTransparentActivity.class);
                if (com.clilystudio.netbook.hpay100.a.a.a((Context) this, "customer_night_theme", false)) {
                    this.n.setText(2131034366);
                    this.o.setImageResource(2130838181);
                    com.clilystudio.netbook.hpay100.a.a.b((Context) this, "customer_night_theme", false);
                    com.clilystudio.netbook.hpay100.a.a.b((Context) this, "night_mode", false);
                    com.clilystudio.netbook.hpay100.a.a.C(this);
                    intent.putExtra("onThemeChange", 0);
                } else {
                    this.n.setText(2131034365);
                    this.o.setImageResource(2130838180);
                    com.clilystudio.netbook.hpay100.a.a.b((Context) this, "customer_night_theme", true);
                    com.clilystudio.netbook.hpay100.a.a.b((Context) this, "night_mode", true);
                    MiStatInterface.recordCountEvent("start_night_theme_home",null);
                    com.clilystudio.netbook.hpay100.a.a.B(this);
                    intent.putExtra("onThemeChange", 1);
                }
                this.startActivity(intent);
                this.overridePendingTransition(2130968606, 2130968607);
                return;
            }
            case 2131493507: {
                this.startActivity(new Intent(this, SettingsActivity.class));
                return;
            }
            case 2131493498: {
                this.startActivity(new Intent(this, ScanTxtFileActivity.class));
                return;
            }
            case 2131493500: {
                if (!com.clilystudio.netbook.hpay100.a.a.d()) {
                    com.clilystudio.netbook.util.e.a((Activity) this, (String) "\u65e0\u6cd5\u4f7f\u7528\uff0c\u8bf7\u68c0\u67e5SD\u5361\u662f\u5426\u6302\u8f7d");
                    return;
                }
                if (com.clilystudio.netbook.hpay100.a.a.e() <= 20000) {
                    com.clilystudio.netbook.util.e.a((Activity) this, (String) "SD\u5361\u5269\u4f59\u5bb9\u91cf\u4e0d\u8db3");
                    return;
                }
                this.startActivity(new Intent(this, WifiActivity.class));
                return;
            }
            case 2131493485: {
                this.e(view.getId());
                return;
            }
            case 2131493486: {
                this.e(view.getId());
                return;
            }
            case 2131493487:
        }
        this.e(view.getId());
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate(Bundle bundle) {
        Account account;
        super.onCreate(bundle);
        this.setContentView(2130903105);
        ButterKnife.inject(this);
        w = this;
        android.support.v7.app.a a2 = this.a();
        a2.c(false);
        a2.a(false);
        a2.a(2130903226);
        a2.d(true);
        this.q = (ImageView) a2.a().findViewById(2131493487);
        ImageView imageView = (ImageView) a2.a().findViewById(2131493486);
        this.r = (ImageView) a2.a().findViewById(2131493485);
        this.q.setOnClickListener(this);
        imageView.setOnClickListener(this);
        this.r.setOnClickListener(this);
        if (com.clilystudio.netbook.hpay100.a.a.w(this)) {
            this.r.setVisibility(0);
        } else {
            this.r.setVisibility(8);
        }
        this.c = com.clilystudio.netbook.hpay100.a.a.x(this);
        if (!this.c) {
            this.r.setVisibility(8);
        }
        com.clilystudio.netbook.event.i.a().a(this);
        this.f = (TabHost) this.findViewById(2131493096);
        TabWidgetV2 tabWidgetV2 = (TabWidgetV2) this.findViewById(16908307);
        this.g = (ViewPager) this.findViewById(2131493097);
        this.h = new i(this, this.getSupportFragmentManager());
        this.g.setOffscreenPageLimit(3);
        this.g.setAdapter((PagerAdapter) ((Object) this.h));
        this.g.setOnPageChangeListener(this);
        this.f.setup();
        this.f.setOnTabChangedListener(this);
        if (this.f.getTabWidget().getTabCount() > 0) {
            this.f.setCurrentTab(0);
            this.f.clearAllTabs();
        }
        LayoutInflater layoutInflater = this.getLayoutInflater();
        for (int i2 = 0; i2 < this.h.getCount(); ++i2) {
            View view;
            TabHost.TabSpec tabSpec = this.f.newTabSpec("tab" + i2);
            tabSpec.setContent(this);
            if (i2 == 1 && com.clilystudio.netbook.hpay100.a.a.a((Context) this, "FRIST_RUN_POST", true) && com.clilystudio.netbook.hpay100.a.a.r(this, "switch_news")) {
                View view2 = layoutInflater.inflate(2130903230, null);
                this.s = (ViewGroup) view2;
                view = view2;
            } else {
                view = layoutInflater.inflate(2130903229, null);
            }
            ((TextView) view.findViewById(2131493509)).setText((String) this.h.getPageTitle(i2));
            tabSpec.setIndicator(view);
            this.f.addTab(tabSpec);
        }
        this.p = am.e();
        this.k = this.getLayoutInflater().inflate(2130903228, null);
        View view = this.k.findViewById(2131493488);
        View view3 = this.k.findViewById(2131493491);
        View view4 = this.k.findViewById(2131493496);
        View view5 = this.k.findViewById(2131493502);
        View view6 = this.k.findViewById(2131493507);
        View view7 = this.k.findViewById(2131493504);
        this.k.findViewById(2131493498).setOnClickListener(this);
        this.k.findViewById(2131493500).setOnClickListener(this);
        view.setOnClickListener(this);
        view3.setOnClickListener(this);
        view4.setOnClickListener(this);
        view5.setOnClickListener(this);
        view6.setOnClickListener(this);
        view7.setOnClickListener(this);
        this.l = (SmartImageView) view.findViewById(2131493489);
        this.m = (TextView) view.findViewById(2131493490);
        if (this.p != null) {
            this.a(this.p.getUser());
        } else {
            this.k();
        }
        this.n = (TextView) this.k.findViewById(2131493506);
        this.o = (ImageView) this.k.findViewById(2131493505);
        if (com.clilystudio.netbook.hpay100.a.a.a((Context) this, "customer_night_theme", false)) {
            this.n.setText(2131034365);
            this.o.setImageResource(2130838180);
        } else {
            this.n.setText(2131034366);
            this.o.setImageResource(2130838181);
        }
        if (!com.clilystudio.netbook.hpay100.a.a.a((Context) this, "bookPushRecords", false)) {
            List<BookReadRecord> list = BookReadRecord.getAll();
            if (list != null && !list.isEmpty()) {
                HomeActivity.a(list);
            }
            com.clilystudio.netbook.hpay100.a.a.b((Context) this, "bookPushRecords", true);
        }
        this.h();
        this.i();
        new Handler().postDelayed((Runnable) ((Object) new l((HomeParentActivity) this)), 3000);
        if (this.p != null) {
            com.clilystudio.netbook.util.e.c((String) "launch");
            h h2 = new h(this);
            String[] arrstring = new String[]{this.p.getToken()};
            h2.b(arrstring);
        }
        if (bundle != null) {
            tabWidgetV2.setIndex(bundle.getInt("extra_index"));
        }
        this.findViewById(2131493487).setOnClickListener(this);
        this.findViewById(2131493486).setOnClickListener(this);
        if (this != null && (account = am.e()) != null) {
            new Z(this, account.getToken()).a(true);
        }
        this.a(this.getIntent());
        new j(this).b(new String[0]);
        new Handler().postDelayed((Runnable) ((Object) new a(this)), 10000);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        ShareSDK.stopSDK(this);
        com.clilystudio.netbook.event.i.a().b(this);
        this.p = null;
        if (this.t != null) {
            this.t.clearHistory();
            this.t.clearCache(true);
            this.t.freeMemory();
            this.t.pauseTimers();
            this.t.destroy();
        }
        this.u = false;
        com.clilystudio.netbook.hpay100.a.a.b((Context) this, "search_hot_words_date", 0);
    }

    @com.squareup.a.l
    public void onEnterTweet(o o2) {
        this.s.getChildAt(1).setVisibility(8);
    }

    @Override
    public boolean onKeyDown(int n2, KeyEvent keyEvent) {
        if (n2 == 82 && keyEvent.getRepeatCount() == 0) {
            this.l();
            return true;
        }
        return super.onKeyDown(n2, keyEvent);
    }

    /*
     * Enabled aggressive block sorting
     */
    @com.squareup.a.l
    public void onLoginEvent(t t2) {
        this.p = t2.a();
        if (this.p != null) {
            this.a(this.p.getUser());
            boolean bl = t2.b() != AuthLoginActivity$Source.HOME;
            new Z(this, this.p.getToken()).a(bl);
            this.a(this.p);
            h h2 = new h(this);
            String[] arrstring = new String[]{this.p.getToken()};
            h2.b(arrstring);
        }
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.a(intent);
    }

    /*
     * Enabled aggressive block sorting
     */
    @com.squareup.a.l
    public void onNotifEvent(w w2) {
        int n2 = J.a(this).e();
        View view = this.k.findViewById(2131493495);
        TextView textView = (TextView) this.k.findViewById(2131493494);
        if (n2 > 0) {
            textView.setVisibility(0);
            view.setVisibility(8);
            textView.setText(String.valueOf(n2));
            if (this.q == null) return;
            {
                this.q.setImageResource(2130837870);
                return;
            }
        } else if (n2 == -1) {
            textView.setVisibility(8);
            view.setVisibility(0);
            if (this.q == null) return;
            {
                this.q.setImageResource(2130837870);
                return;
            }
        } else {
            textView.setVisibility(8);
            view.setVisibility(8);
            if (this.q == null) return;
            {
                this.q.setImageResource(2130837871);
                return;
            }
        }
    }

    @Override
    public void onPageScrollStateChanged(int n2) {
    }

    @Override
    public void onPageScrolled(int n2, float f2, int n3) {
        ((TabWidgetV2) this.f.getTabWidget()).a(n2, n3);
    }

    @Override
    public void onPageSelected(int n2) {
        TabWidget tabWidget = this.f.getTabWidget();
        int n3 = tabWidget.getDescendantFocusability();
        tabWidget.setDescendantFocusability(393216);
        this.f.setCurrentTab(n2);
        tabWidget.setDescendantFocusability(n3);
    }

    @Override
    public void onPause() {
        super.onPause();
        if (this.i != null && this.i.isShowing() && this.j != null && this.j.isShowing()) {
            this.m();
        }
    }

    @Override
    public void onResume() {
        Account account;
        super.onResume();
        com.clilystudio.netbook.api.e.a("1".equals(OnlineConfigAgent.getInstance().getConfigParams(this, "use_http_dns")));
        if (com.clilystudio.netbook.hpay100.a.a.l()) {
            new s((Context) this).b(new Void[0]);
        }
        if ((account = am.e()) != null) {
            this.p = account;
            this.a(account.getUser());
            return;
        }
        this.p = null;
        this.k();
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("extra_index", this.f.getCurrentTab());
    }

    @Override
    public void onTabChanged(String string) {
        this.a(this.f.getCurrentTab());
    }

    /*
     * Enabled aggressive block sorting
     */
    @com.squareup.a.l
    public void onUpdateGameCenter(H h2) {
        boolean bl = true;
        if (this.c == h2.a()) {
            return;
        }
        boolean bl2 = bl;
        if (bl2) {
            HomeFindFragment homeFindFragment;
            if (!h2.a() || !com.clilystudio.netbook.hpay100.a.a.w(this)) {
                bl = false;
            }
            this.c = bl;
            if (this.c) {
                this.r.setVisibility(0);
            } else {
                this.r.setVisibility(4);
            }
            if ((homeFindFragment = (HomeFindFragment) this.e.get(2)) != null) {
                homeFindFragment.a(this.c);
            }
        }
    }
}
