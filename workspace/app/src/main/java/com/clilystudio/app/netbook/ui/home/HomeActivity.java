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
import com.clilystudio.app.netbook.MyApplication;
import com.clilystudio.app.netbook.R;
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
import com.clilystudio.app.netbook.ui.post.CommonPostListActivity;
import com.clilystudio.app.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.app.netbook.ui.user.UserInfoActivity;
import com.clilystudio.app.netbook.util.J;
import com.clilystudio.app.netbook.util.Z;
import com.clilystudio.app.netbook.util.am_CommonUtils;
import com.clilystudio.app.netbook.util.s;
import com.clilystudio.app.netbook.widget.TabWidgetV2;
import com.squareup.otto.Bus;
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
    private PopupWindow mMoreMenuPopup;
    private PopupWindow mPopupMask;
    private View mMoreMenuView;
    private SmartImageView mUserAvatar;
    private TextView mUserName;
    private TextView mThemeTV;
    private ImageView mThemeIV;
    private Account mAccount;
    private ImageView moreImageView;
    private ImageView gameImageView;
    private ViewGroup mNotifyItem;
    private WebView mWebView;
    private boolean u;
    private String[] v;

    private void setUserInfo(int item) {
        if (item >= 0 && item < this.mHomePagerAdapter.getCount()) {
            this.mViewPager.setCurrentItem(item, true);
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
        if (user != null && this.mMoreMenuView != null) {
            this.mUserAvatar.setImageUrl(user.getFullAvatar());
            this.mUserName.setText(user.getNickname());
        }
    }

    private static void createBookSubRecord(List<BookReadRecord> readRecords) {
        Iterator<BookReadRecord> iterator = readRecords.iterator();
        while (iterator.hasNext()) {
            BookSubRecord.create("book:" + iterator.next().getBookId());
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

    private void setUnLogin() {
        if (this.mMoreMenuView != null) {
            this.mUserAvatar.setImageResource(R.drawable.home_menu_0);
            this.mUserName.setText("请登录");
        }
    }

    private void showMorePopupMenu() {
        if (this.mPopupMask == null || !this.mPopupMask.isShowing()) {
            this.mPopupMask = new PopupWindow(getLayoutInflater().inflate(R.layout.home_menu_bg_popup, null, false), ActionBar.LayoutParams.MATCH_PARENT, am_CommonUtils.getWindowHeight(this));
            this.mPopupMask.setAnimationStyle(R.style.home_menu_bg_anim);
            this.mPopupMask.showAtLocation(getSupportActionBar().getCustomView(), 0, 0, 0);
        }
        if (this.mMoreMenuPopup == null) {
            this.mMoreMenuPopup = new PopupWindow(this.mMoreMenuView, getResources().getDimensionPixelSize(R.dimen.home_popup_width), ActionBar.LayoutParams.WRAP_CONTENT);
            this.mMoreMenuPopup.setFocusable(true);
            this.mMoreMenuPopup.setOutsideTouchable(true);
            this.mMoreMenuPopup.setBackgroundDrawable(new ColorDrawable(0));
            this.mMoreMenuPopup.getContentView().setFocusableInTouchMode(true);
            this.mMoreMenuPopup.getContentView().setFocusable(true);
            this.mMoreMenuPopup.getContentView().setOnKeyListener(new c(this));
        }
        this.mMoreMenuPopup.setAnimationStyle(R.style.home_menu_anim);
        this.mMoreMenuPopup.showAtLocation(findViewById(R.id.host), 53, am_CommonUtils.getPixelToDp(this, 5.0F), am_CommonUtils.l_getActionBarSize(this) + am_CommonUtils.k_getStatusBarHeight(this));
        this.mMoreMenuPopup.setOnDismissListener(new PopupWindow.OnDismissListener() {
            @Override
            public void onDismiss() {
                dismissPopupMask();
            }
        });
    }

    private void dismissMorePopupMenu() {
        if (this.mMoreMenuPopup != null && this.mMoreMenuPopup.isShowing()) {
            this.mMoreMenuPopup.dismiss();
        }
        dismissPopupMask();
    }

    private void dismissPopupMask() {
        if (this.mPopupMask != null && this.mPopupMask.isShowing()) {
            this.mPopupMask.dismiss();
        }
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
            Toast.makeText(this, R.string.exit_hint, Toast.LENGTH_SHORT).show();
            return;
        }
        super.onBackPressed();
    }

    public void onBookShelfRefresh(BookShelfRefreshEvent paramBookShelfRefreshEvent) {
        if (this.mAccount != null)
            a(this.mAccount);
    }

    public void onClick(View paramView) {
        dismissMorePopupMenu();
        switch (paramView.getId()) {
            case R.id.home_menu_user:
                if (this.mAccount != null) {
                    dismissMorePopupMenu();
                    startActivity(UserInfoActivity.a(this, this.mAccount.getToken()));
                    return;
                }
                Intent localIntent2 = AuthLoginActivity.a(this);
                localIntent2.putExtra("KEY_SOURCE", AuthLoginActivity.Source.HOME);
                startActivityForResult(localIntent2, 100);
                return;
//            case R.id.home_menu_msg:
//                if (this.mAccount != null) {
//                    m();
//                    com.arcsoft.hpay100.a.a.b(this, "key_enter_msg_time", System.currentTimeMillis());
//                    AccountInfo localAccountInfo = AccountInfo.getOrCreate(this.mAccount.getToken());
//                    localAccountInfo.setPrevUnimpNotif(J.a(this).b());
//                    localAccountInfo.save();
//                    AppProperties.getInstance(this).setProperties("view_notification");
//                    com.clilystudio.app.netbook.event.i.a().c(new w());
//                    startActivity(new Intent(this, MyMessageActivity.class));
//                    return;
//                }
//                startActivityForResult(AuthLoginActivity.a(this), 100);
//                return;
            case R.id.home_menu_sync:
                if (this.mAccount != null) {
                    dismissMorePopupMenu();
                    new Z(this, this.mAccount.getToken()).a(false);
                    return;
                }
                startActivityForResult(AuthLoginActivity.a(this), 100);
                return;
            case R.id.home_menu_feedback:
                startActivity(CommonPostListActivity.a(this, "android-feedback"));
                return;
            case R.id.home_menu_theme:
                Intent localIntent1 = new Intent(this, HomeTransparentActivity.class);
                if (AppProperties.getInstance(this).getProperty("customer_night_theme", false)) {
                    this.mThemeTV.setText(R.string.custom_theme_night);
                    this.mThemeIV.setImageResource(R.drawable.theme_night);
                    AppProperties.getInstance(this).setProperties("customer_night_theme", "false");
                    AppProperties.getInstance(this).setProperties("night_mode", "false");
                    localIntent1.putExtra("onThemeChange", 0);
                } else {
                    this.mThemeTV.setText(R.string.custom_theme_day);
                    this.mThemeIV.setImageResource(R.drawable.theme_day);
                    AppProperties.getInstance(this).setProperties("customer_night_theme", "true");
                    AppProperties.getInstance(this).setProperties("night_mode", "true");
                    localIntent1.putExtra("onThemeChange", 1);
                }
                startActivity(localIntent1);
                overridePendingTransition(R.anim.shade_alpha_in, R.anim.shade_alpha_out);
                return;
            case R.id.home_menu_settings:
                startActivity(new Intent(this, SettingsActivity.class));
                return;
            case R.id.home_menu_scan:
                startActivity(new Intent(this, ScanTxtFileActivity.class));
                return;
//            case R.id.home_menu_wifi_transfer:
//                if (!com.arcsoft.hpay100.a.a.d()) {
//                    com.clilystudio.app.netbook.util.e.a(this, "无法使用，请检查SD卡是否挂载");
//                    return;
//                }
//                if (com.arcsoft.hpay100.a.a.e() <= 20000L) {
//                    com.clilystudio.app.netbook.util.e.a(this, "SD卡剩余容量不足");
//                    return;
//                }
//                startActivity(new Intent(this, WifiActivity.class));
//                return;
//            case R.id.home_action_menu_game:
//                startActivity(GameTabActivity.a(this));
//                com.arcsoft.hpay100.a.a.n(this, "home_ab_game");
//                return;
            case R.id.home_action_menu_search:
                startActivity(SearchActivity.a(this));
                return;
            case R.id.home_action_menu_more:
                showMorePopupMenu();
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
        }
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
        new Bus().register(this);
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

            if (i1 != 1 || !AppProperties.getInstance(this).getProperty("FRIST_RUN_POST", true)) {
//            || !com.arcsoft.hpay100.a.a.r(this, "switch_news"){
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
        this.mMoreMenuView = getLayoutInflater().inflate(R.layout.home_popupwindow_layout, null);

        View localView1 = this.mMoreMenuView.findViewById(R.id.home_menu_user);
        View localView2 = this.mMoreMenuView.findViewById(R.id.home_menu_msg);
        View localView3 = this.mMoreMenuView.findViewById(R.id.home_menu_sync);
        View localView4 = this.mMoreMenuView.findViewById(R.id.home_menu_feedback);
        View localView5 = this.mMoreMenuView.findViewById(R.id.home_menu_settings);
        View localView6 = this.mMoreMenuView.findViewById(R.id.home_menu_theme);
        this.mMoreMenuView.findViewById(R.id.home_menu_scan).setOnClickListener(this);

        this.mMoreMenuView.findViewById(R.id.home_menu_wifi_transfer).setOnClickListener(this);

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

        this.mThemeTV = ((TextView) this.mMoreMenuView.findViewById(R.id.text_theme));
        this.mThemeIV = ((ImageView) this.mMoreMenuView.findViewById(R.id.icon_theme));
        if (!AppProperties.getInstance(this).getProperty("customer_night_theme", false)) {
            this.mThemeTV.setText(R.string.custom_theme_night);
            this.mThemeIV.setImageResource(R.drawable.theme_night);
        } else {
            this.mThemeTV.setText(R.string.custom_theme_day);
            this.mThemeIV.setImageResource(R.drawable.theme_day);
        }
        if (!AppProperties.getInstance(this).getProperty("bookPushRecords", false)) {
            List<BookReadRecord> readRecords = BookReadRecord.getAll();
            if (readRecords != null && !readRecords.isEmpty()) {
                createBookSubRecord(readRecords);
            }
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
        new Bus().unregister(this);
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
            showMorePopupMenu();
            return true;
        }
        return super.onKeyDown(paramInt, paramKeyEvent);
    }

    public void onLoginEvent(t paramt) {
        this.mAccount = paramt.a();
        if (this.mAccount != null) {
            setUserInfo(this.mAccount.getUser());
             new Z(this, this.mAccount.getToken()).a(paramt.b() != AuthLoginActivity.Source.HOME);
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
        View localView = this.mMoreMenuView.findViewById(R.id.msg_dot);
        TextView localTextView = (TextView) this.mMoreMenuView.findViewById(R.id.msg_count);
        if (i1 > 0) {
            localTextView.setVisibility(View.VISIBLE);
            localView.setVisibility(View.GONE);
            localTextView.setText(String.valueOf(i1));
            if (this.moreImageView != null) {
                this.moreImageView.setImageResource(R.drawable.ic_action_home_overflow_dot);
            }
        } else if (i1 == -1) {
            localTextView.setVisibility(View.GONE);
            localView.setVisibility(View.VISIBLE);
            if (this.moreImageView != null) {
                this.moreImageView.setImageResource(R.drawable.ic_action_home_overflow_dot);
            }
        } else {
            localTextView.setVisibility(View.GONE);
            localView.setVisibility(View.GONE);
            if (this.moreImageView != null) {
                this.moreImageView.setImageResource(R.drawable.ic_action_overflow);
            }
        }
    }

    public void onPageScrollStateChanged(int paramInt) {
    }

    public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {
        ((TabWidgetV2) this.mTabHost.getTabWidget()).a(paramInt1, paramInt2);
    }

    public void onPageSelected(int paramInt) {
        TabWidget localTabWidget = this.mTabHost.getTabWidget();
        int i1 = localTabWidget.getDescendantFocusability();
        localTabWidget.setDescendantFocusability(ViewGroup.FOCUS_BLOCK_DESCENDANTS);
        this.mTabHost.setCurrentTab(paramInt);
        localTabWidget.setDescendantFocusability(i1);
    }

    public void onPause() {
        super.onPause();
        if ((this.mMoreMenuPopup != null) && (this.mMoreMenuPopup.isShowing()) && (this.mPopupMask != null) && (this.mPopupMask.isShowing()))
            dismissMorePopupMenu();
    }

    public void onResume() {
        super.onResume();
        com.clilystudio.app.netbook.api.e.a("1".equals(AppProperties.getSetting("use_http_dns")));
        if (!AppProperties.getSetting("force_encrypt_chapter").equals("0")) {
            new s(this).b(new Void[0]);
        }
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
