package com.clilystudio.netbook.ui.home;

import android.app.ActionBar;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import android.widget.Toast;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.adapter.BasePagerAdapter;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.api.DnsManager;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.AccountUpdatedEvent;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.event.NotifEvent;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.push.BookSubRecord;
import com.clilystudio.netbook.push.BookUnSubRecord;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.SearchActivity;
import com.clilystudio.netbook.ui.SettingsActivity;
import com.clilystudio.netbook.widget.SmartImageView;
import com.clilystudio.netbook.util.BookShelfSyncManager;
import com.clilystudio.netbook.util.CommonUtil;
import com.clilystudio.netbook.util.UserNotificationManager;
import com.clilystudio.netbook.widget.TabWidgetV2;
import com.squareup.otto.Subscribe;
import com.umeng.onlineconfig.OnlineConfigAgent;
import com.xiaomi.mipush.sdk.MiPushClient;

import java.util.ArrayList;
import java.util.List;

import cn.sharesdk.framework.ShareSDK;

public class HomeActivity extends BaseActivity implements ViewPager.OnPageChangeListener, View.OnClickListener, TabHost.OnTabChangeListener, TabHost.TabContentFactory {
    private static final String TAG = HomeActivity.class.getSimpleName();
    private long mBackPressTime = 0;
    private List<Fragment> mFragmentList = new ArrayList<>();
    private TabHost mTabHost;
    private ViewPager mViewPager;
    private HomeAdapter mAdapter;
    private PopupWindow mPopMenu;
    private PopupWindow mPopMenuBg;
    private View mHomeMenu;
    private SmartImageView l;
    private TextView m;
    private TextView n;
    private ImageView o;
    private Account mAccount;
    private ImageView q;

    private void setUserMenuItem() {
        if (this.mHomeMenu != null) {
            if (this.mAccount == null || this.mAccount.getUser() == null) {
                this.l.setImageResource(R.drawable.home_menu_0);
                this.m.setText("请登录");
            } else {
                User user = this.mAccount.getUser();
                this.l.setImageUrl(user.getFullAvatar());
                this.m.setText(user.getNickname());
            }
        }
    }

    private void showPopMenu() {
        if (this.mPopMenuBg == null || !this.mPopMenuBg.isShowing()) {
            this.mPopMenuBg = new PopupWindow(this.getLayoutInflater().inflate(R.layout.home_menu_bg_popup, (ViewGroup) getWindow().getDecorView(), false), -1, CommonUtil.getWindowHeight(this));
            this.mPopMenuBg.setAnimationStyle(R.style.home_menu_bg_anim);
            this.mPopMenuBg.showAtLocation(this.getActionBar().getCustomView(), 0, 0, 0);
        }
        View view = this.findViewById(R.id.host);
        if (this.mPopMenu == null) {
            this.mPopMenu = new PopupWindow(this.mHomeMenu, this.getResources().getDimensionPixelSize(R.dimen.home_popup_width), -2);
            this.mPopMenu.setFocusable(true);
            this.mPopMenu.setOutsideTouchable(true);
            this.mPopMenu.setBackgroundDrawable(new ColorDrawable(0));
            this.mPopMenu.getContentView().setFocusableInTouchMode(true);
            this.mPopMenu.getContentView().setFocusable(true);
            this.mPopMenu.getContentView().setOnKeyListener(new View.OnKeyListener() {
                @Override
                public boolean onKey(View v, int keyCode, KeyEvent event) {
                    if (event.getAction() == 0 && keyCode == KeyEvent.KEYCODE_MENU && event.getRepeatCount() == 0) {
                        HomeActivity.this.dismissPopMenu();
                        return true;
                    }
                    return false;
                }
            });
        }
        this.mPopMenu.setAnimationStyle(R.style.home_menu_anim);
        this.mPopMenu.showAtLocation(view, 53, CommonUtil.getDipSize(this, 5.0f), CommonUtil.getActionBarHeight(this) + CommonUtil.getStatusBarHeight(this));
        this.mPopMenu.setOnDismissListener(new PopupWindow.OnDismissListener() {
            @Override
            public void onDismiss() {
                if (mPopMenuBg != null && mPopMenuBg.isShowing()) {
                    mPopMenuBg.dismiss();
                }
            }
        });
    }

    private void dismissPopMenu() {
        if (this.mPopMenu != null && this.mPopMenu.isShowing()) {
            this.mPopMenu.dismiss();
        }
    }

    public final HomeShelfFragment getHomeShelfFragment(String tag) {
        HomeShelfFragment homeShelfFragment = (HomeShelfFragment) this.getSupportFragmentManager().findFragmentByTag(tag);
        if (homeShelfFragment == null) {
            Log.i(TAG, "getHomeShelfFragment ");
            homeShelfFragment = new HomeShelfFragment();
        }
        return homeShelfFragment;
    }

    public final HomeFindFragment getHomeFindFragment(String tag) {
        HomeFindFragment homeFindFragment = (HomeFindFragment) this.getSupportFragmentManager().findFragmentByTag(tag);
        if (homeFindFragment == null) {
            homeFindFragment = HomeFindFragment.getHomeFindFragment(new Bundle());
        }
        return homeFindFragment;
    }

    @Override
    public View createTabContent(String string) {
        View view = new View(this);
        view.setMinimumHeight(0);
        view.setMinimumWidth(0);
        return view;
    }

    public final void gotoHomeFind() {
        this.mViewPager.setCurrentItem(1, true);
    }

    @Subscribe
    public void onAccountUpdated(AccountUpdatedEvent event) {
        Account account = CommonUtil.getAccount();
        if (account != null) {
            User user = account.getUser();
            this.l.setImageUrl(user.getFullAvatar());
            this.m.setText(user.getNickname());
        }
    }

    @Override
    public void onBackPressed() {
        if (this.mFragmentList != null && this.mFragmentList.size() > 0 && this.mFragmentList.get(0) instanceof HomeShelfFragment && ((HomeShelfFragment) this.mFragmentList.get(0)).isEditing()) {
            ((HomeShelfFragment) this.mFragmentList.get(0)).resetView();
            return;
        }
        long backPressTime = System.currentTimeMillis();
        if (backPressTime - this.mBackPressTime > 2000) {
            this.mBackPressTime = backPressTime;
            Toast.makeText(this, R.string.exit_hint, Toast.LENGTH_SHORT).show();
        } else {
            super.onBackPressed();
        }
    }

    @Override
    public void onClick(View view) {
        this.dismissPopMenu();
        switch (view.getId()) {
            case R.id.home_menu_theme:
                Intent intent = new Intent(this, HomeTransparentActivity.class);
                if (CommonUtil.getBoolPref(this, "customer_night_theme", false)) {
                    this.n.setText(R.string.custom_theme_night);
                    this.o.setImageResource(R.drawable.theme_night);
                    CommonUtil.putBoolPref(this, "customer_night_theme", false);
                    CommonUtil.putBoolPref(this, "night_mode", false);
                    CommonUtil.putIntPref(this, "start_night_theme", 0);
                    intent.putExtra("onThemeChange", 0);
                } else {
                    this.n.setText(R.string.custom_theme_day);
                    this.o.setImageResource(R.drawable.theme_day);
                    CommonUtil.putBoolPref(this, "customer_night_theme", true);
                    CommonUtil.putBoolPref(this, "night_mode", true);
                    intent.putExtra("onThemeChange", 1);
                }
                this.startActivity(intent);
                this.overridePendingTransition(R.anim.shade_alpha_in, R.anim.shade_alpha_out);
                break;
            case R.id.home_menu_settings:
                this.startActivity(new Intent(this, SettingsActivity.class));
                break;
            case R.id.home_action_menu_search:
                this.startActivity(SearchActivity.a(this));
                break;
            case R.id.home_action_menu_more:
                this.showPopMenu();
                break;
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_home_tabhost);
        ActionBar a2 = this.getActionBar();
        a2.setDisplayUseLogoEnabled(false);
        a2.setDisplayShowHomeEnabled(false);
        a2.setCustomView(R.layout.home_ab_custom_view);
        a2.setDisplayShowCustomEnabled(true);
        this.q = (ImageView) a2.getCustomView().findViewById(R.id.home_action_menu_more);
        ImageView imageView = (ImageView) a2.getCustomView().findViewById(R.id.home_action_menu_search);
        this.q.setOnClickListener(this);
        imageView.setOnClickListener(this);
        BusProvider.getInstance().register(this);
        this.mTabHost = (TabHost) this.findViewById(R.id.host);
        TabWidgetV2 tabWidgetV2 = (TabWidgetV2) this.findViewById(android.R.id.content);
        this.mViewPager = (ViewPager) this.findViewById(R.id.pager);
        this.mAdapter = new HomeAdapter(this.getSupportFragmentManager());
        this.mViewPager.setOffscreenPageLimit(3);
        this.mViewPager.setAdapter(this.mAdapter);
        this.mViewPager.setOnPageChangeListener(this);
        this.mTabHost.setup();
        this.mTabHost.setOnTabChangedListener(this);
        if (this.mTabHost.getTabWidget().getTabCount() > 0) {
            this.mTabHost.setCurrentTab(0);
            this.mTabHost.clearAllTabs();
        }
        LayoutInflater layoutInflater = this.getLayoutInflater();
        for (int i2 = 0; i2 < this.mAdapter.getCount(); ++i2) {
            View view;
            TabHost.TabSpec tabSpec = this.mTabHost.newTabSpec("tab" + i2);
            tabSpec.setContent(this);
            view = layoutInflater.inflate(R.layout.home_tabhost_item, (ViewGroup) getWindow().getDecorView(), false);
            ((TextView) view.findViewById(R.id.text)).setText(this.mAdapter.getPageTitle(i2));
            tabSpec.setIndicator(view);
            this.mTabHost.addTab(tabSpec);
        }
        this.mAccount = CommonUtil.getAccount();
        this.mHomeMenu = this.getLayoutInflater().inflate(R.layout.home_popupwindow_layout, (ViewGroup) getWindow().getDecorView(), false);
        View view = this.mHomeMenu.findViewById(R.id.home_menu_user);
        View view3 = this.mHomeMenu.findViewById(R.id.home_menu_msg);
        View view4 = this.mHomeMenu.findViewById(R.id.home_menu_sync);
        View view5 = this.mHomeMenu.findViewById(R.id.home_menu_feedback);
        View view6 = this.mHomeMenu.findViewById(R.id.home_menu_settings);
        View view7 = this.mHomeMenu.findViewById(R.id.home_menu_theme);
        this.mHomeMenu.findViewById(R.id.home_menu_scan).setOnClickListener(this);
        this.mHomeMenu.findViewById(R.id.home_menu_wifi_transfer).setOnClickListener(this);
        view.setOnClickListener(this);
        view3.setOnClickListener(this);
        view4.setOnClickListener(this);
        view5.setOnClickListener(this);
        view6.setOnClickListener(this);
        view7.setOnClickListener(this);
        this.l = (SmartImageView) view.findViewById(R.id.home_menu_user_avatar);
        this.m = (TextView) view.findViewById(R.id.home_menu_user_name);
        if (this.mAccount != null) {
            this.setUserMenuItem();
        } else {
            this.setUserMenuItem();
        }
        this.n = (TextView) this.mHomeMenu.findViewById(R.id.text_theme);
        this.o = (ImageView) this.mHomeMenu.findViewById(R.id.icon_theme);
        if (CommonUtil.getBoolPref(this, "customer_night_theme", false)) {
            this.n.setText(R.string.custom_theme_day);
            this.o.setImageResource(R.drawable.theme_day);
        } else {
            this.n.setText(R.string.custom_theme_night);
            this.o.setImageResource(R.drawable.theme_night);
        }
        if (!CommonUtil.getBoolPref(this, "bookPushRecords", false)) {
            List<BookReadRecord> list = BookReadRecord.getAll();
            if (list != null && !list.isEmpty()) {
                for (BookReadRecord bookReadRecord : list) {
                    BookSubRecord.create("book:" + bookReadRecord.getBookId());
                }
            }
            CommonUtil.putBoolPref(this, "bookPushRecords", true);
        }
        for (BookSubRecord bookSubRecord : BookSubRecord.getAll()) {
            MiPushClient.subscribe(this.getApplicationContext(), bookSubRecord.pushId, null);
        }
        for (BookUnSubRecord bookUnSubRecord : BookUnSubRecord.getAll()) {
            MiPushClient.unsubscribe(this.getApplicationContext(), bookUnSubRecord.pushId, null);
        }
        if (mAccount != null) {
            new Thread() {
                @Override
                public void run() {
                    ApiServiceProvider.getInstance();
                    ApiServiceProvider.getApiService().addUserExp(mAccount.getToken(), "launch");
                }
            }.start();
        }
        if (bundle != null) {
            tabWidgetV2.setIndex(bundle.getInt("extra_index"));
        }
        this.findViewById(R.id.home_action_menu_more).setOnClickListener(this);
        this.findViewById(R.id.home_action_menu_search).setOnClickListener(this);
        Account account = CommonUtil.getAccount();
        if (account != null) {
            new BookShelfSyncManager(this, account.getToken()).a(true);
        }
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        ShareSDK.stopSDK(this);
        BusProvider.getInstance().unregister(this);
        this.mAccount = null;
        CommonUtil.putIntPref(this, "search_hot_words_date", 0);
    }

    @Override
    public boolean onKeyDown(int n2, KeyEvent keyEvent) {
        if (n2 == KeyEvent.KEYCODE_MENU && keyEvent.getRepeatCount() == 0) {
            this.showPopMenu();
            return true;
        }
        return super.onKeyDown(n2, keyEvent);
    }

    @Subscribe
    public void onNotifEvent(NotifEvent w2) {
        int n2 = UserNotificationManager.getInstance(this).getNotificationCount();
        View view = this.mHomeMenu.findViewById(R.id.msg_dot);
        TextView textView = (TextView) this.mHomeMenu.findViewById(R.id.msg_count);
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
        ((TabWidgetV2) this.mTabHost.getTabWidget()).a(n2, n3);
    }

    @Override
    public void onPageSelected(int n2) {
        TabWidget tabWidget = this.mTabHost.getTabWidget();
        int n3 = tabWidget.getDescendantFocusability();
        tabWidget.setDescendantFocusability(ViewGroup.FOCUS_BLOCK_DESCENDANTS);
        this.mTabHost.setCurrentTab(n2);
        tabWidget.setDescendantFocusability(n3);
    }

    @Override
    public void onPause() {
        super.onPause();
        if (this.mPopMenu != null && this.mPopMenu.isShowing() && this.mPopMenuBg != null && this.mPopMenuBg.isShowing()) {
            this.dismissPopMenu();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        DnsManager.setUseDns("1".equals(OnlineConfigAgent.getInstance().getConfigParams(this, "use_http_dns")));
        this.mAccount = CommonUtil.getAccount();
        if (this.mAccount != null) {
            this.setUserMenuItem();
        } else {
            this.setUserMenuItem();
        }
    }

    @Override
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("extra_index", this.mTabHost.getCurrentTab());
    }

    @Override
    public void onTabChanged(String string) {
        int currentTab = this.mTabHost.getCurrentTab();
        if (currentTab >= 0 && currentTab < this.mAdapter.getCount()) {
            this.mViewPager.setCurrentItem(currentTab, true);
        }
    }

    final class HomeAdapter extends BasePagerAdapter {
        private String[] mTags = {"homeTag0", "homeTag1"};

        public HomeAdapter(FragmentManager fragmentManager) {
            super(fragmentManager);
            mFragmentList.add(getHomeShelfFragment(this.mTags[0]));
            mFragmentList.add(getHomeFindFragment(this.mTags[1]));
            FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
            for (int i = 0; i < mTags.length; i++) {
                Fragment fragment = mFragmentList.get(i);
                if (!fragment.isAdded()) {
                    fragmentTransaction.add(mViewPager.getId(), fragment, this.mTags[i]);
                }
            }
            if (!fragmentTransaction.isEmpty()) {
                fragmentTransaction.commit();
                fragmentManager.executePendingTransactions();
            }
        }

        @Override
        public final Fragment getFragment(int position) {
            return mFragmentList.get(position);
        }

        @Override
        protected final String getTag(int position) {
            return mTags[position];
        }

        @Override
        public final int getCount() {
            return mTags.length;
        }

        @Override
        public final CharSequence getPageTitle(int position) {
            return getResources().getStringArray(R.array.home_tabs)[position];
        }
    }
}
