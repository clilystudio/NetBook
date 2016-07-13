package com.clilystudio.netbook.ui.home;

import android.app.ActionBar;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
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

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.api.DnsManager;
import com.clilystudio.netbook.db.AccountInfo;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.AccountUpdatedEvent;
import com.clilystudio.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.LoginEvent;
import com.clilystudio.netbook.event.NotifEvent;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookTopRoot;
import com.clilystudio.netbook.model.IKanshuUrlResult;
import com.clilystudio.netbook.model.RecommendInfo;
import com.clilystudio.netbook.model.ResultServer;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.model.UshaqiOnlineConfig;
import com.clilystudio.netbook.push.BookSubRecord;
import com.clilystudio.netbook.push.BookUnSubRecord;
import com.clilystudio.netbook.ui.SearchActivity;
import com.clilystudio.netbook.ui.SettingsActivity;
import com.clilystudio.netbook.ui.SmartImageView;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.ui.user.MyMessageActivity;
import com.clilystudio.netbook.ui.user.UserInfoActivity;
import com.clilystudio.netbook.util.UserNotificationManager;
import com.clilystudio.netbook.util.Z;
import com.clilystudio.netbook.widget.TabWidgetV2;
import com.squareup.otto.Subscribe;
import com.umeng.onlineconfig.OnlineConfigAgent;
import com.xiaomi.mipush.sdk.MiPushClient;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

import cn.sharesdk.framework.ShareSDK;

public class HomeActivity extends HomeParentActivity implements ViewPager.OnPageChangeListener,
        View.OnClickListener,
        TabHost.OnTabChangeListener,
        TabHost.TabContentFactory {
    private static final String a = HomeActivity.class.getSimpleName();
    private static HomeActivity w;
    private long b = 0;
    private boolean c = true;
    private List<Fragment> e = new ArrayList<>();
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
    private Account mAccount;
    private ImageView q;
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
        homeActivity.t.setWebViewClient(new WebViewClient() {

            @Override
            public boolean shouldOverrideUrlLoading(WebView view, String url) {
                view.loadUrl(url);
                return true;
            }
        });
        homeActivity.t.loadUrl(string);
        homeActivity.u = true;
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

    static /* synthetic */ ApiServiceProvider f(HomeActivity homeActivity) {
        return homeActivity.d;
    }

    static /* synthetic */ String g(HomeActivity homeActivity) {
        return homeActivity.o();
    }

    static /* synthetic */ ApiServiceProvider h(HomeActivity homeActivity) {
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
                    new BaseAsyncTask<Void, Void, IKanshuUrlResult>() {

                        @Override
                        protected IKanshuUrlResult doInBackground(Void... params) {
                            ApiServiceProvider.getInstance();
                            return ApiServiceProvider.getApiService().t();
                        }

                        @Override
                        protected void onPostExecute(IKanshuUrlResult iKanshuUrlResult) {
                            super.onPostExecute(iKanshuUrlResult);
                            if (iKanshuUrlResult != null && iKanshuUrlResult.isOk()) {
                                HomeActivity.a(HomeActivity.this, iKanshuUrlResult.getLinks());
                                String string = HomeActivity.a(HomeActivity.this);
                                if (string != null) {
                                    HomeActivity.a(HomeActivity.this, string);
                                }
                            }
                        }
                    }.b();
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
            com.clilystudio.netbook.util.e.a(this, "\u5f88\u62b1\u6b49\uff0c\u6682\u4e0d\u652f\u6301\u6b64\u683c\u5f0f\u7684\u56fe\u4e66");
            return;
        }
        Intent intent2 = new Intent("com.clilystudio.netbook.ACTION_READ_TXT");
        intent2.putExtra("file_name", string);
        this.startActivity(intent2);
    }

    private void a(Account account) {
        UserNotificationManager.getInstance(this).getUserNotificationCount(account);
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
            case R.id.home_action_menu_search:
                this.startActivity(SearchActivity.a(this));
                break;
            case R.id.home_action_menu_more:
                this.l();
                break;
        }
    }

    private void h() {
        for (BookSubRecord bookSubRecord : BookSubRecord.getAll()) {
            MiPushClient.subscribe(this.getApplicationContext(), bookSubRecord.pushId, null);
        }
    }

    private void i() {
        for (BookUnSubRecord bookUnSubRecord : BookUnSubRecord.getAll()) {
            MiPushClient.unsubscribe(this.getApplicationContext(), bookUnSubRecord.pushId, null);
        }
    }

    private float j() {
        String string = OnlineConfigAgent.getInstance().getConfigParams(this, "rate_17kflow");
        try {
            return Float.parseFloat(string);
        } catch (Exception var2_3) {
            return 0.0f;
        }
    }

    private void k() {
        if (this.k != null) {
            this.l.setImageResource(R.drawable.home_menu_0);
            this.m.setText("\u8bf7\u767b\u5f55");
        }
    }

    private void l() {
        try {
            if (this.j == null || !this.j.isShowing()) {
                this.j = new PopupWindow(this.getLayoutInflater().inflate(R.layout.home_menu_bg_popup, (ViewGroup) getWindow().getDecorView(), false), -1, com.clilystudio.netbook.hpay100.a.a.L(this));
                this.j.setAnimationStyle(R.style.home_menu_bg_anim);
                this.j.showAtLocation(this.getActionBar().getCustomView(), 0, 0, 0);
            }
            View view = this.findViewById(R.id.host);
            if (this.i == null) {
                this.i = new PopupWindow(this.k, this.getResources().getDimensionPixelSize(R.dimen.home_popup_width), -2);
                this.i.setFocusable(true);
                this.i.setOutsideTouchable(true);
                this.i.setBackgroundDrawable(new ColorDrawable(0));
                this.i.getContentView().setFocusableInTouchMode(true);
                this.i.getContentView().setFocusable(true);
                this.i.getContentView().setOnKeyListener(new View.OnKeyListener() {
                    @Override
                    public boolean onKey(View v, int keyCode, KeyEvent event) {
                        if (event.getAction() == 0 && keyCode == KeyEvent.KEYCODE_MENU && event.getRepeatCount() == 0) {
                            HomeActivity.this.m();
                            return true;
                        }
                        return false;
                    }
                });
            }
            this.i.setAnimationStyle(R.style.home_menu_anim);
            this.i.showAtLocation(view, 53, com.clilystudio.netbook.hpay100.a.a.a(this, 5.0f), am.l(this) + am.k(this));
            this.i.setOnDismissListener(new PopupWindow.OnDismissListener() {
                @Override
                public void onDismiss() {
                    HomeActivity.this.n();
                }
            });
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
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
        ZipFile var2_2;
        try {
            var2_2 = new ZipFile(getApplicationInfo().sourceDir);
            Enumeration<? extends ZipEntry> entries = var2_2.entries();
            do {
                ZipEntry var9_4 = entries.nextElement();
                if (var9_4.getName().equals("META-INF/DATA")) {
                    BufferedReader var10_5 = new BufferedReader(new InputStreamReader(var2_2.getInputStream(var9_4)));
                    StringBuilder var11_6 = new StringBuilder();
                    String var12_7;
                    while ((var12_7 = var10_5.readLine()) != null) {
                        var11_6.append(var12_7);
                    }
                    var10_5.close();
                    return var11_6.toString();
                }
            } while (entries.hasMoreElements());
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return null;
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

    @Subscribe
    public void onAccountUpdated(AccountUpdatedEvent a2) {
        Account account = am.getAccount();
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
        if (l2 - this.b > 2000) {
            this.b = l2;
            Toast.makeText(this, R.string.exit_hint, Toast.LENGTH_SHORT).show();
            return;
        }
        super.onBackPressed();
    }

    @Subscribe
    public void onBookShelfRefresh(BookShelfRefreshEvent bookShelfRefreshEvent) {
        if (this.mAccount != null) {
            UserNotificationManager.getInstance(this).getUserNotificationCount(mAccount);
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
            case R.id.home_menu_user: {
                if (this.mAccount != null) {
                    this.m();
                    this.startActivity(UserInfoActivity.a(this, this.mAccount.getToken()));
                    return;
                }
                Intent intent = AuthLoginActivity.a(this);
                intent.putExtra("KEY_SOURCE", AuthLoginActivity.Source.HOME);
                this.startActivityForResult(intent, 100);
                return;
            }
            case R.id.home_menu_msg: {
                if (this.mAccount != null) {
                    this.m();
                    com.clilystudio.netbook.hpay100.a.a.b(this, "key_enter_msg_time", System.currentTimeMillis());
                    AccountInfo accountInfo = AccountInfo.getOrCreate(this.mAccount.getToken());
                    accountInfo.setPrevUnimpNotif(UserNotificationManager.getInstance(this).getUnimportant());
                    accountInfo.save();
                    BusProvider.getInstance().post(new NotifEvent());
                    this.startActivity(new Intent(this, MyMessageActivity.class));
                    return;
                }
                this.startActivityForResult(AuthLoginActivity.a(this), 100);
                return;
            }
            case R.id.home_menu_sync: {
                if (this.mAccount != null) {
                    this.m();
                    new Z(this, this.mAccount.getToken()).a(false);
                    return;
                }
                this.startActivityForResult(AuthLoginActivity.a(this), 100);
                return;
            }
            case R.id.home_menu_theme: {
                Intent intent = new Intent(this, HomeTransparentActivity.class);
                if (com.clilystudio.netbook.hpay100.a.a.a(this, "customer_night_theme", false)) {
                    this.n.setText(R.string.custom_theme_night);
                    this.o.setImageResource(R.drawable.theme_night);
                    com.clilystudio.netbook.hpay100.a.a.b(this, "customer_night_theme", false);
                    com.clilystudio.netbook.hpay100.a.a.b(this, "night_mode", false);
                    com.clilystudio.netbook.hpay100.a.a.C(this);
                    intent.putExtra("onThemeChange", 0);
                } else {
                    this.n.setText(R.string.custom_theme_day);
                    this.o.setImageResource(R.drawable.theme_day);
                    com.clilystudio.netbook.hpay100.a.a.b(this, "customer_night_theme", true);
                    com.clilystudio.netbook.hpay100.a.a.b(this, "night_mode", true);
                    intent.putExtra("onThemeChange", 1);
                }
                this.startActivity(intent);
                this.overridePendingTransition(R.anim.shade_alpha_in, R.anim.shade_alpha_out);
                return;
            }
            case R.id.home_menu_settings: {
                this.startActivity(new Intent(this, SettingsActivity.class));
                return;
            }
            case R.id.home_action_menu_game: {
                this.e(view.getId());
                return;
            }
            case R.id.home_action_menu_search: {
                this.e(view.getId());
                return;
            }
            case R.id.home_action_menu_more:
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
        this.setContentView(R.layout.activity_home_tabhost);
        w = this;
        ActionBar a2 = this.getActionBar();
        a2.setDisplayUseLogoEnabled(false);
        a2.setDisplayShowHomeEnabled(false);
        a2.setCustomView(R.layout.home_ab_custom_view);
        a2.setDisplayShowCustomEnabled(true);
        this.q = (ImageView) a2.getCustomView().findViewById(R.id.home_action_menu_more);
        ImageView imageView = (ImageView) a2.getCustomView().findViewById(R.id.home_action_menu_search);
        ImageView r = (ImageView) a2.getCustomView().findViewById(R.id.home_action_menu_game);
        this.q.setOnClickListener(this);
        imageView.setOnClickListener(this);
        this.c = com.clilystudio.netbook.hpay100.a.a.x(this);
        if (!this.c) {
            r.setVisibility(View.GONE);
        }
        BusProvider.getInstance().register(this);
        this.f = (TabHost) this.findViewById(R.id.host);
        TabWidgetV2 tabWidgetV2 = (TabWidgetV2) this.findViewById(android.R.id.content);
        this.g = (ViewPager) this.findViewById(R.id.pager);
        this.h = new i(this, this.getSupportFragmentManager());
        this.g.setOffscreenPageLimit(3);
        this.g.setAdapter(this.h);
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
            if (i2 == 1 && com.clilystudio.netbook.hpay100.a.a.a(this, "FRIST_RUN_POST", true) && com.clilystudio.netbook.hpay100.a.a.r(this, "switch_news")) {
                View view2 = layoutInflater.inflate(R.layout.home_tabhost_notify_item, (ViewGroup) getWindow().getDecorView(), false);
                this.s = (ViewGroup) view2;
                view = view2;
            } else {
                view = layoutInflater.inflate(R.layout.home_tabhost_item, (ViewGroup) getWindow().getDecorView(), false);
            }
            ((TextView) view.findViewById(R.id.text)).setText(this.h.getPageTitle(i2));
            tabSpec.setIndicator(view);
            this.f.addTab(tabSpec);
        }
        this.mAccount = am.getAccount();
        this.k = this.getLayoutInflater().inflate(R.layout.home_popupwindow_layout, (ViewGroup) getWindow().getDecorView(), false);
        View view = this.k.findViewById(R.id.home_menu_user);
        View view3 = this.k.findViewById(R.id.home_menu_msg);
        View view4 = this.k.findViewById(R.id.home_menu_sync);
        View view5 = this.k.findViewById(R.id.home_menu_feedback);
        View view6 = this.k.findViewById(R.id.home_menu_settings);
        View view7 = this.k.findViewById(R.id.home_menu_theme);
        this.k.findViewById(R.id.home_menu_scan).setOnClickListener(this);
        this.k.findViewById(R.id.home_menu_wifi_transfer).setOnClickListener(this);
        view.setOnClickListener(this);
        view3.setOnClickListener(this);
        view4.setOnClickListener(this);
        view5.setOnClickListener(this);
        view6.setOnClickListener(this);
        view7.setOnClickListener(this);
        this.l = (SmartImageView) view.findViewById(R.id.home_menu_user_avatar);
        this.m = (TextView) view.findViewById(R.id.home_menu_user_name);
        if (this.mAccount != null) {
            this.a(this.mAccount.getUser());
        } else {
            this.k();
        }
        this.n = (TextView) this.k.findViewById(R.id.text_theme);
        this.o = (ImageView) this.k.findViewById(R.id.icon_theme);
        if (com.clilystudio.netbook.hpay100.a.a.a(this, "customer_night_theme", false)) {
            this.n.setText(R.string.custom_theme_day);
            this.o.setImageResource(R.drawable.theme_day);
        } else {
            this.n.setText(R.string.custom_theme_night);
            this.o.setImageResource(R.drawable.theme_night);
        }
        if (!com.clilystudio.netbook.hpay100.a.a.a(this, "bookPushRecords", false)) {
            List<BookReadRecord> list = BookReadRecord.getAll();
            if (list != null && !list.isEmpty()) {
                HomeActivity.a(list);
            }
            com.clilystudio.netbook.hpay100.a.a.b(this, "bookPushRecords", true);
        }
        this.h();
        this.i();
        new Handler().postDelayed(new Runnable() {
            @Override
            public void run() {
                new BaseAsyncTask<Void, Void, UshaqiOnlineConfig>() {

                    @Override
                    protected UshaqiOnlineConfig doInBackground(Void... params) {
                        return ApiServiceProvider.getApiService().a();
                    }

                    @Override
                    protected void onPostExecute(UshaqiOnlineConfig ushaqiOnlineConfig) {
                        super.onPostExecute(ushaqiOnlineConfig);
                        if (ushaqiOnlineConfig != null && ushaqiOnlineConfig.isServerError()) {
                            HomeParentActivity.a(HomeActivity.this, ushaqiOnlineConfig.getServerError());
                        }
                    }
                }.b();
            }
        }, 3000);
        if (this.mAccount != null) {
            com.clilystudio.netbook.util.e.c("launch");
        }
        if (bundle != null) {
            tabWidgetV2.setIndex(bundle.getInt("extra_index"));
        }
        this.findViewById(R.id.home_action_menu_more).setOnClickListener(this);
        this.findViewById(R.id.home_action_menu_search).setOnClickListener(this);
        if (this != null && (account = am.getAccount()) != null) {
            new Z(this, account.getToken()).a(true);
        }
        this.a(this.getIntent());
        new BaseAsyncTask<String, Void, ResultServer>() {

            @Override
            protected ResultServer doInBackground(String... params) {
                if ("000000000000000".equals(am.t(HomeActivity.this))) {
                    return null;
                }
                boolean bl = false;
                if (bl) {
                    return null;
                }
                RecommendInfo recommendInfo = RecommendInfo.getInfoFromJson(HomeActivity.g(HomeActivity.this));
                String string = "";
                String string2 = "";
                if (recommendInfo != null) {
                    string = recommendInfo.getRecommended();
                    string2 = recommendInfo.getOp();
                }
                String string3 = am.t(HomeActivity.this);
                HomeActivity.h(HomeActivity.this);
                return ApiServiceProvider.getApiService().p(string3, string, string2);
            }
        }.b();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        ShareSDK.stopSDK(this);
        BusProvider.getInstance().unregister(this);
        this.mAccount = null;
        if (this.t != null) {
            this.t.clearHistory();
            this.t.clearCache(true);
            this.t.freeMemory();
            this.t.pauseTimers();
            this.t.destroy();
        }
        this.u = false;
        com.clilystudio.netbook.hpay100.a.a.b(this, "search_hot_words_date", 0);
    }

    @Override
    public boolean onKeyDown(int n2, KeyEvent keyEvent) {
        if (n2 == KeyEvent.KEYCODE_MENU && keyEvent.getRepeatCount() == 0) {
            this.l();
            return true;
        }
        return super.onKeyDown(n2, keyEvent);
    }

    @Subscribe
    public void onLoginEvent(LoginEvent t2) {
        this.mAccount = t2.getAccount();
        if (this.mAccount != null) {
            this.a(this.mAccount.getUser());
            boolean bl = t2.getSource() != AuthLoginActivity.Source.HOME;
            new Z(this, this.mAccount.getToken()).a(bl);
            UserNotificationManager.getInstance(this).getUserNotificationCount(mAccount);
        }
    }

    private void refreshUserVipInfo() {
    }

    @Override
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        this.a(intent);
    }

    @Subscribe
    public void onNotifEvent(NotifEvent w2) {
        int n2 = UserNotificationManager.getInstance(this).getNotificationCount();
        View view = this.k.findViewById(R.id.msg_dot);
        TextView textView = (TextView) this.k.findViewById(R.id.msg_count);
        if (n2 > 0) {
            textView.setVisibility(View.VISIBLE);
            view.setVisibility(View.GONE);
            textView.setText(String.valueOf(n2));
            if (this.q != null) {
                this.q.setImageResource(R.drawable.ic_action_home_overflow_dot);
            }
        } else if (n2 == -1) {
            textView.setVisibility(View.GONE);
            view.setVisibility(View.VISIBLE);
            if (this.q != null) {
                this.q.setImageResource(R.drawable.ic_action_home_overflow_dot);
            }
        } else {
            textView.setVisibility(View.GONE);
            view.setVisibility(View.GONE);
            if (this.q != null) {
                this.q.setImageResource(R.drawable.ic_action_overflow);
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
        tabWidget.setDescendantFocusability(ViewGroup.FOCUS_BLOCK_DESCENDANTS);
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
        DnsManager.setUseDns("1".equals(OnlineConfigAgent.getInstance().getConfigParams(this, "use_http_dns")));
        if (com.clilystudio.netbook.hpay100.a.a.l()) {
            new BaseAsyncTask<Void, Void, BookTopRoot>() {

                @Override
                protected BookTopRoot doInBackground(Void... params) {
                    ApiServiceProvider.getInstance();
                    return ApiServiceProvider.getApiService().u();
                }

                @Override
                protected void onPostExecute(BookTopRoot bookTopRoot) {
                    super.onPostExecute(bookTopRoot);
                    BookTopRoot.Favorite favorite;
                    if (bookTopRoot != null && (favorite = bookTopRoot.getFavorite()) != null) {
                        com.clilystudio.netbook.hpay100.a.a.b(HomeActivity.this, favorite.getBookID(), favorite.getTocID(), favorite.getChecksum());
                    }
                }
            }.b();
        }
        if ((account = am.getAccount()) != null) {
            this.mAccount = account;
            this.a(account.getUser());
            return;
        }
        this.mAccount = null;
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

    final class i extends ZssqFragmentPagerAdapter {
        private String[] a;
        private /* synthetic */ HomeActivity b;

        public i(HomeActivity homeActivity, FragmentManager fragmentManager) {
            super(fragmentManager);
            int n2 = 0;
            this.b = homeActivity;
            this.a = new String[]{"homeTag0", "homeTag1"};
            homeActivity.e.add(homeActivity.a(this.a[0]));
            homeActivity.e.add(homeActivity.g(this.a[1]));
            FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
            while (n2 < 2) {
                Fragment fragment = (Fragment) HomeActivity.b(homeActivity).get(n2);
                if (!fragment.isAdded()) {
                    fragmentTransaction.add(HomeActivity.c(homeActivity).getId(), fragment, this.a[n2]);
                }
                ++n2;
            }
            if (!fragmentTransaction.isEmpty()) {
                fragmentTransaction.commit();
                fragmentManager.executePendingTransactions();
            }
        }

        @Override
        public final Fragment a(int n2) {
            return (Fragment) HomeActivity.b(this.b).get(n2);
        }

        @Override
        protected final String b(int n2) {
            return this.a[n2];
        }

        @Override
        public final int getCount() {
            return 3;
        }

        @Override
        public final CharSequence getPageTitle(int n2) {
            return this.b.getResources().getStringArray(R.array.home_tabs)[n2];
        }
    }
}
