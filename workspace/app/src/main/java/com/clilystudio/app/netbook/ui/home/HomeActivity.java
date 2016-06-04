package com.clilystudio.app.netbook.ui.home;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import android.widget.Toast;

import com.clilystudio.app.netbook.AppProperties;
import com.clilystudio.app.netbook.R;
import com.clilystudio.app.netbook.db.AccountInfo;
import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.event.BookShelfRefreshEvent;
import com.clilystudio.app.netbook.event.o;
import com.clilystudio.app.netbook.event.t;
import com.clilystudio.app.netbook.event.w;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.User;
import com.clilystudio.app.netbook.push.BookSubRecord;
import com.clilystudio.app.netbook.push.BookUnSubRecord;
import com.clilystudio.app.netbook.reader.txt.ScanTxtFileActivity;
import com.clilystudio.app.netbook.ui.SearchActivity;
import com.clilystudio.app.netbook.ui.SettingsActivity;
import com.clilystudio.app.netbook.ui.SmartImageView;
import com.clilystudio.app.netbook.ui.WifiActivity;
import com.clilystudio.app.netbook.ui.game.GameTabActivity;
import com.clilystudio.app.netbook.ui.post.CommonPostListActivity;
import com.clilystudio.app.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.app.netbook.ui.user.MyMessageActivity;
import com.clilystudio.app.netbook.ui.user.UserInfoActivity;
import com.clilystudio.app.netbook.util.J;
import com.clilystudio.app.netbook.util.Z;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.clilystudio.app.netbook.util.s;
import com.clilystudio.app.netbook.widget.TabWidgetV2;
import com.xiaomi.mipush.sdk.MiPushClient;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;


public class HomeActivity extends HomeParentActivity
        implements ViewPager.OnPageChangeListener, View.OnClickListener, TabHost.OnTabChangeListener, TabHost.TabContentFactory {
    private static final String TAG = HomeActivity.class.getSimpleName();
    private static HomeActivity mInstance;
    private long b = 0L;
    private List<Fragment> e = new ArrayList<>();
    private TabHost mTabHost;
    private ViewPager mViewPager;
    private i_HomePagerAdapter mHomePagerAdapter;
    private PopupWindow i;
    private PopupWindow j;
    private View mPopWin;
    private SmartImageView mUserAvatar;
    private TextView mUserName;
    private TextView n;
    private ImageView o;
    private Account mAccount;
    private ImageView moreImageView;
    private ImageView gameImageView;
    private ViewGroup mNotifyItem;
    private WebView mWebView;
    private boolean u;
    private String[] v;

    private void setUserInfo(int paramInt) {
        if ((paramInt >= 0) && (paramInt < this.mHomePagerAdapter.getCount())) {
            this.mViewPager.setCurrentItem(paramInt, true);
            if (paramInt == -1 + this.mHomePagerAdapter.getCount()) {
                boolean bool = com.arcsoft.hpay100.a.a.r(this, "switch_17kflow");
                float f1 = j();
                double d = Math.random();
                if ((bool) && (f1 > d) && (!this.u))
                    new g(this, (byte) 0).b(new Void[0]);
                this.u = true;
            }
        }
    }

    private void readTextFile(Intent intent) {
        String fileName = intent.getStringExtra("file_name");
        if (fileName != null) {
            if ("nonsupport".equals(fileName)) {
                com.clilystudio.app.netbook.util.e.a(this, "很抱歉，暂不支持此格式的图书");
            } else {
                Intent localIntent = new Intent("com.clilystudio.app.netbook.ACTION_READ_TXT");
                localIntent.putExtra("file_name", fileName);
                startActivity(localIntent);
            }
        }
    }

    private void a(Account paramAccount) {
        J.a(this).a(paramAccount);
    }

    private void setUserInfo(User user) {
        if (user != null && this.mPopWin != null) {
            this.mUserAvatar.setImageUrl(user.getFullAvatar());
            this.mUserName.setText(user.getNickname());
        }
    }

    private static void a(List<BookReadRecord> paramList) {
        Iterator localIterator = paramList.iterator();
        while (localIterator.hasNext()) {
            BookReadRecord localBookReadRecord = (BookReadRecord) localIterator.next();
            BookSubRecord.create("book:" + localBookReadRecord.getBookId());
        }
    }

    public static HomeActivity b_getInstance() {
        return mInstance;
    }

    public List<Fragment> getFragmentList() {
        return this.e;
    }

    public ViewPager getmViewPager() {
        return this.mViewPager;
    }

    private void e(int paramInt) {
        switch (paramInt) {
            default:
                return;
            case 2131493485:
                startActivity(GameTabActivity.a(this));
                com.arcsoft.hpay100.a.a.n(this, "home_ab_game");
                return;
            case 2131493486:
                startActivity(SearchActivity.a(this));
                com.arcsoft.hpay100.a.a.n(this, "home_ab_search");
                return;
            case 2131493487:
        }
        l();
        com.arcsoft.hpay100.a.a.n(this, "home_ab_more");
    }

    private void subscribeBook() {
        Iterator<BookSubRecord> iterator = BookSubRecord.getAll().iterator();
        while (iterator.hasNext()) {
            MiPushClient.subscribe(getApplicationContext(), iterator.next().pushId, null);
        }
    }

    private void unsubscribeBook() {
        Iterator<BookUnSubRecord> iterator = BookUnSubRecord.getAll().iterator();
        while (iterator.hasNext()) {
            MiPushClient.unsubscribe(getApplicationContext(), iterator.next().pushId, null);
        }
    }

    private float j() {
        String str = com.umeng.a.b.b(this, "rate_17kflow");
        try {
            float f1 = Float.parseFloat(str);
            return f1;
        } catch (Exception localException) {
        }
        return 0.0F;
    }

    private void setUnLogin() {
        if (this.mPopWin != null) {
            this.mUserAvatar.setImageResource(R.drawable.home_menu_0);
            this.mUserName.setText("请登录");
        }
    }

    private void l() {
        try {
            if ((this.j == null) || (!this.j.isShowing())) {
                this.j = new PopupWindow(getLayoutInflater().inflate(2130903227, null, false), -1, com.arcsoft.hpay100.a.a.L(this));
                this.j.setAnimationStyle(2131165629);
                this.j.showAtLocation(a().a(), 0, 0, 0);
            }
            View localView = findViewById(2131493096);
            if (this.i == null) {
                this.i = new PopupWindow(this.mPopWin, getResources().getDimensionPixelSize(2131099746), -2);
                this.i.setFocusable(true);
                this.i.setOutsideTouchable(true);
                this.i.setBackgroundDrawable(new ColorDrawable(0));
                this.i.getContentView().setFocusableInTouchMode(true);
                this.i.getContentView().setFocusable(true);
                this.i.getContentView().setOnKeyListener(new c(this));
            }
            this.i = this.i;
            this.i.setAnimationStyle(2131165628);
            this.i.showAtLocation(localView, 53, com.arcsoft.hpay100.a.a.a(this, 5.0F), am_CommonUtils.l(this) + am_CommonUtils.k(this));
            this.i.setOnDismissListener(new d(this));
            return;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
    }

    private void m() {
        if ((this.i != null) && (this.i.isShowing()))
            this.i.dismiss();
        n();
    }

    private void n() {
        if ((this.j != null) && (this.j.isShowing()))
            this.j.dismiss();
    }

    // wrap by g()
    private String o() {
        ZipFile v2 = null;
        try {
            v2 = new ZipFile(getApplicationInfo().sourceDir);
            Enumeration<? extends ZipEntry> entries = v2.entries();
            StringBuilder v0 = new StringBuilder();
            while (entries.hasMoreElements()) {
                ZipEntry v01 = entries.nextElement();
                if (v01.getName().equals("META-INF/DATA")) {
                    BufferedReader v3 = new BufferedReader(new InputStreamReader(v2.getInputStream(v01)));
                    String v4 = v3.readLine();
                    while (v4 != null) {
                        v0.append(v4);
                        v4 = v3.readLine();
                    }
                }
            }
            return v0.toString();
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return null;
    }

    public View createTabContent(String paramString) {
        View localView = new View(this);
        localView.setMinimumHeight(0);
        localView.setMinimumWidth(0);
        return localView;
    }

    public final void f() {
        setUserInfo(0);
    }

    public final void g() {
        this.mViewPager.setCurrentItem(2, true);
    }

    public void onAccountUpdated(com.clilystudio.app.netbook.event.a parama) {
        Account account = am_CommonUtils.e_getAccount();
        if (account != null) {
            this.mUserAvatar.setImageUrl(account.getUser().getFullAvatar());
            this.mUserName.setText(account.getUser().getNickname());
        }
    }

    public void onBackPressed() {
        if (this.e != null && this.e.size() > 0 && (this.e.get(0) instanceof HomeShelfFragment) && ((HomeShelfFragment) this.e.get(0)).c()) {
            ((HomeShelfFragment) this.e.get(0)).e();
            return;
        }
        long l1 = System.currentTimeMillis();
        if (l1 - this.b > 2000L) {
            this.b = l1;
            Toast.makeText(this, 2131034373, 0).show();
            return;
        }
        super.onBackPressed();
    }

    public void onBookShelfRefresh(BookShelfRefreshEvent paramBookShelfRefreshEvent) {
        if (this.mAccount != null)
            a(this.mAccount);
    }

    public void onClick(View paramView) {
        m();
        switch (paramView.getId()) {
            case 2131493489:
            case 2131493490:
            case 2131493492:
            case 2131493493:
            case 2131493494:
            case 2131493495:
            case 2131493497:
            case 2131493499:
            case 2131493501:
            case 2131493503:
            case 2131493505:
            case 2131493506:
            default:
                return;
            case 2131493488:
                if (this.mAccount != null) {
                    m();
                    startActivity(UserInfoActivity.a(this, this.mAccount.getToken()));
                    return;
                }
                Intent localIntent2 = AuthLoginActivity.a(this);
                localIntent2.putExtra("KEY_SOURCE", AuthLoginActivity.Source.HOME);
                startActivityForResult(localIntent2, 100);
                return;
            case 2131493491:
                if (this.mAccount != null) {
                    m();
                    com.arcsoft.hpay100.a.a.b(this, "key_enter_msg_time", System.currentTimeMillis());
                    AccountInfo localAccountInfo = AccountInfo.getOrCreate(this.mAccount.getToken());
                    localAccountInfo.setPrevUnimpNotif(J.a(this).b());
                    localAccountInfo.save();
                    AppProperties.getInstance(this).setProperties("view_notification");
                    com.clilystudio.app.netbook.event.i.a().c(new w());
                    startActivity(new Intent(this, MyMessageActivity.class));
                    return;
                }
                startActivityForResult(AuthLoginActivity.a(this), 100);
                return;
            case 2131493496:
                if (this.mAccount != null) {
                    m();
                    new Z(this, this.mAccount.getToken()).a(false);
                    return;
                }
                startActivityForResult(AuthLoginActivity.a(this), 100);
                return;
            case 2131493502:
                startActivity(CommonPostListActivity.a(this, "android-feedback"));
                return;
            case 2131493504:
                Intent localIntent1 = new Intent(this, HomeTransparentActivity.class);
                if (com.arcsoft.hpay100.a.a.a(this, "customer_night_theme", false)) {
                    this.n.setText(2131034366);
                    this.o.setImageResource(2130838181);
                    com.arcsoft.hpay100.a.a.b(this, "customer_night_theme", false);
                    com.arcsoft.hpay100.a.a.b(this, "night_mode", false);
                    com.arcsoft.hpay100.a.a.C(this);
                    localIntent1.putExtra("onThemeChange", 0);
                }
                while (true) {
                    startActivity(localIntent1);
                    overridePendingTransition(2130968606, 2130968607);
                    return;
                    this.n.setText(2131034365);
                    this.o.setImageResource(2130838180);
                    com.arcsoft.hpay100.a.a.b(this, "customer_night_theme", true);
                    com.arcsoft.hpay100.a.a.b(this, "night_mode", true);
                    AppProperties.getInstance(this).setProperties("start_night_theme_home");
                    com.arcsoft.hpay100.a.a.B(this);
                    localIntent1.putExtra("onThemeChange", 1);
                }
            case 2131493507:
                startActivity(new Intent(this, SettingsActivity.class));
                return;
            case 2131493498:
                startActivity(new Intent(this, ScanTxtFileActivity.class));
                return;
            case 2131493500:
                if (!com.arcsoft.hpay100.a.a.d()) {
                    com.clilystudio.app.netbook.util.e.a(this, "无法使用，请检查SD卡是否挂载");
                    return;
                }
                if (com.arcsoft.hpay100.a.a.e() <= 20000L) {
                    com.clilystudio.app.netbook.util.e.a(this, "SD卡剩余容量不足");
                    return;
                }
                startActivity(new Intent(this, WifiActivity.class));
                return;
            case 2131493485:
                e(paramView.getId());
                return;
            case 2131493486:
                e(paramView.getId());
                return;
            case 2131493487:
        }
        e(paramView.getId());
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_home_tabhost);
        mInstance = this;

        ActionBar actionBar = getSupportActionBar();
        actionBar.setCustomView(R.layout.home_ab_custom_view);
        actionBar.setDisplayUseLogoEnabled(false);
        actionBar.setDisplayShowHomeEnabled(false);
        actionBar.setCustomView(R.layout.home_ab_custom_view);
        actionBar.setDisplayShowCustomEnabled(true);
        this.moreImageView = ((ImageView) actionBar.getCustomView().findViewById(R.id.home_action_menu_more));
        this.moreImageView.setOnClickListener(this);
        ImageView localImageView = (ImageView) actionBar.getCustomView().findViewById(R.id.home_action_menu_search);
        localImageView.setOnClickListener(this);
        this.gameImageView = ((ImageView) actionBar.getCustomView().findViewById(R.id.home_action_menu_game));
        this.gameImageView.setOnClickListener(this);
        this.gameImageView.setVisibility(View.GONE);
        this.mIsGameCenterShow = false;
        com.clilystudio.app.netbook.event.i.a().a(this);
        this.mTabHost = ((TabHost) findViewById(R.id.host));
        TabWidgetV2 localTabWidgetV2 = (TabWidgetV2) findViewById(android.R.id.tabs);
        this.mViewPager = ((ViewPager) findViewById(R.id.pager));
        this.mHomePagerAdapter = new i_HomePagerAdapter(this, getSupportFragmentManager());
        this.mViewPager.setOffscreenPageLimit(3);
        this.mViewPager.setAdapter(this.mHomePagerAdapter);
        this.mViewPager.setOnPageChangeListener(this);
        this.mTabHost.setup();
        this.mTabHost.setOnTabChangedListener(this);
        if (this.mTabHost.getTabWidget().getTabCount() > 0) {
            this.mTabHost.setCurrentTab(0);
            this.mTabHost.clearAllTabs();
        }
        LayoutInflater localLayoutInflater = getLayoutInflater();
        for (int i1 = 0; i1 < this.mHomePagerAdapter.getCount(); i1++) {
            TabHost.TabSpec localTabSpec = this.mTabHost.newTabSpec("tab" + i1);
            localTabSpec.setContent(this);
            View localView7;

            if (i1 != 1 || !AppProperties.getInstance(this).getProperty("FRIST_RUN_POST", true) || !com.arcsoft.hpay100.a.a.r(this, "switch_news")) {
                localView7 = localLayoutInflater.inflate(R.layout.home_tabhost_item, null);
            } else {
                localView7 = localLayoutInflater.inflate(R.layout.home_tabhost_notify_item, null);
                this.mNotifyItem = ((ViewGroup) localView7);
            }
            ((TextView) localView7.findViewById(R.id.text)).setText(this.mHomePagerAdapter.getPageTitle(i1));
            localTabSpec.setIndicator(localView7);
            this.mTabHost.addTab(localTabSpec);
        }
        this.mAccount = am_CommonUtils.e_getAccount();
        this.mPopWin = getLayoutInflater().inflate(R.layout.home_popupwindow_layout, null);

        View localView1 = this.mPopWin.findViewById(R.id.home_menu_user);
        View localView2 = this.mPopWin.findViewById(R.id.home_menu_msg);
        View localView3 = this.mPopWin.findViewById(R.id.home_menu_sync);
        View localView4 = this.mPopWin.findViewById(R.id.home_menu_feedback);
        View localView5 = this.mPopWin.findViewById(R.id.home_menu_settings);
        View localView6 = this.mPopWin.findViewById(R.id.home_menu_theme);
        this.mPopWin.findViewById(R.id.home_menu_scan).setOnClickListener(this);

        this.mPopWin.findViewById(R.id.home_menu_wifi_transfer).setOnClickListener(this);

        localView1.setOnClickListener(this);
        localView2.setOnClickListener(this);
        localView3.setOnClickListener(this);
        localView4.setOnClickListener(this);
        localView5.setOnClickListener(this);
        localView6.setOnClickListener(this);
        this.mUserAvatar = ((SmartImageView) localView1.findViewById(R.id.home_menu_user_avatar));
        this.mUserName = ((TextView) localView1.findViewById(R.id.home_menu_user_name));
        if (this.mAccount != null) {
            setUserInfo(this.mAccount.getUser());
        } else {
            setUnLogin();
        }

        this.n = ((TextView) this.mPopWin.findViewById(R.id.text_theme));
        this.o = ((ImageView) this.mPopWin.findViewById(R.id.icon_theme));
        if (!AppProperties.getInstance(this).getProperty("customer_night_theme", false)) {
            this.n.setText(R.string.custom_theme_night);
            this.o.setImageResource(R.drawable.theme_night);
        } else {
            this.n.setText(R.string.custom_theme_day);
            this.o.setImageResource(R.drawable.theme_day);
        }
        if (!AppProperties.getInstance(this).getProperty("bookPushRecords", false)) {
            List localList = BookReadRecord.getAll();
            if ((localList != null) && (!localList.isEmpty()))
                a(localList);
            AppProperties.getInstance(this).setProperties("bookPushRecords", "true");
        }
        subscribeBook();
        unsubscribeBook();
        new Handler().postDelayed(new l(this), 3000L);
        if (this.mAccount != null) {
            com.clilystudio.app.netbook.util.e.c("launch");
            h localh = new h(this);
            String[] arrayOfString = new String[1];
            arrayOfString[0] = this.mAccount.getToken();
            localh.b(arrayOfString);
        }
        if (localTabWidgetV2 != null && savedInstanceState != null) {
            localTabWidgetV2.setIndex(savedInstanceState.getInt("extra_index"));
        }
        findViewById(R.id.home_action_menu_more).setOnClickListener(this);
        findViewById(R.id.home_action_menu_search).setOnClickListener(this);
        if (this != null) {
            Account localAccount = am_CommonUtils.e_getAccount();
            if (localAccount != null)
                new Z(this, localAccount.getToken()).a(true);
        }
        readTextFile(getIntent());
        new j(this).b(new String[0]);
        new Handler().postDelayed(new a(this), 10000L);
    }

    protected void onDestroy() {
        super.onDestroy();
        com.clilystudio.app.netbook.event.i.a().b(this);
        this.mAccount = null;
        if (this.mWebView != null) {
            this.mWebView.clearHistory();
            this.mWebView.clearCache(true);
            this.mWebView.freeMemory();
            this.mWebView.pauseTimers();
            this.mWebView.destroy();
        }
        this.u = false;
        AppProperties.getInstance(this).setProperties("search_hot_words_date", "0");
    }

    public void onEnterTweet(o paramo) {
        this.mNotifyItem.getChildAt(1).setVisibility(View.GONE);
    }

    public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
        if ((paramInt == 82) && (paramKeyEvent.getRepeatCount() == 0)) {
            l();
            return true;
        }
        return super.onKeyDown(paramInt, paramKeyEvent);
    }

    public void onLoginEvent(t paramt) {
        this.mAccount = paramt.a();
        if (this.mAccount != null) {
            setUserInfo(this.mAccount.getUser());
            if (paramt.b() == AuthLoginActivity.Source.HOME)
                break label99;
        }
        label99:
        for (boolean bool = true; ; bool = false) {
            new Z(this, this.mAccount.getToken()).a(bool);
            a(this.mAccount);
            h localh = new h(this);
            String[] arrayOfString = new String[1];
            arrayOfString[0] = this.mAccount.getToken();
            localh.b(arrayOfString);
            return;
        }
    }

    protected void onNewIntent(Intent paramIntent) {
        super.onNewIntent(paramIntent);
        readTextFile(paramIntent);
    }

    public void onNotifEvent(w paramw) {
        int i1 = J.a(this).e();
        View localView = this.mPopWin.findViewById(2131493495);
        TextView localTextView = (TextView) this.mPopWin.findViewById(2131493494);
        if (i1 > 0) {
            localTextView.setVisibility(0);
            localView.setVisibility(8);
            localTextView.setText(String.valueOf(i1));
            if (this.moreImageView != null)
                this.moreImageView.setImageResource(2130837870);
        }
        do {
            do {
                return;
                if (i1 != -1)
                    break;
                localTextView.setVisibility(8);
                localView.setVisibility(0);
            }
            while (this.moreImageView == null);
            this.moreImageView.setImageResource(2130837870);
            return;
            localTextView.setVisibility(8);
            localView.setVisibility(8);
        }
        while (this.moreImageView == null);
        this.moreImageView.setImageResource(2130837871);
    }

    public void onPageScrollStateChanged(int paramInt) {
    }

    public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {
        ((TabWidgetV2) this.mTabHost.getTabWidget()).a(paramInt1, paramInt2);
    }

    public void onPageSelected(int paramInt) {
        TabWidget localTabWidget = this.mTabHost.getTabWidget();
        int i1 = localTabWidget.getDescendantFocusability();
        localTabWidget.setDescendantFocusability(393216);
        this.mTabHost.setCurrentTab(paramInt);
        localTabWidget.setDescendantFocusability(i1);
    }

    public void onPause() {
        super.onPause();
        if ((this.i != null) && (this.i.isShowing()) && (this.j != null) && (this.j.isShowing()))
            m();
    }

    public void onResume() {
        super.onResume();
        com.clilystudio.app.netbook.api.e.a("1".equals(com.umeng.a.b.b(this, "use_http_dns")));
        if (com.arcsoft.hpay100.a.a.l())
            new s(this).b(new Void[0]);
        this.mAccount = am_CommonUtils.e_getAccount();
        if (this.mAccount != null) {
            setUserInfo(this.mAccount.getUser());
        } else {
            setUnLogin();
        }
    }

    protected void onSaveInstanceState(Bundle paramBundle) {
        super.onSaveInstanceState(paramBundle);
        paramBundle.putInt("extra_index", this.mTabHost.getCurrentTab());
    }

    public void onTabChanged(String paramString) {
        setUserInfo(this.mTabHost.getCurrentTab());
    }
}
