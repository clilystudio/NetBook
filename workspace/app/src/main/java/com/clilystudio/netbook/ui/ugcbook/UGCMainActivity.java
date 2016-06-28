package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.support.v7.widget.RecyclerView;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UgcFilterRoot;
import com.clilystudio.netbook.ui.BaseTabActivity;
import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;
import com.clilystudio.netbook.ui.user.UserUGCActivity;
import com.clilystudio.netbook.util.D;
import com.umeng.a.b;
import com.xiaomi.mistatistic.sdk.MiStatInterface;

import java.util.ArrayList;
import java.util.List;

public class UGCMainActivity extends BaseTabActivity implements ViewPager.OnPageChangeListener,
        TabHost.OnTabChangeListener,
        TabHost.TabContentFactory {
    private List<UGCMainListFragment> b = new ArrayList<UGCMainListFragment>();
    private ViewPager c;
    private aj e;
    private PopupWindow f;
    private PopupWindow g;
    private PopupWindow h;
    private String i;
    private RecyclerView j;
    private ak k;

    static /* synthetic */ ak a(UGCMainActivity uGCMainActivity, ak ak2) {
        uGCMainActivity.k = ak2;
        return ak2;
    }

    static /* synthetic */ void a(UGCMainActivity uGCMainActivity) {
        if (uGCMainActivity.h != null && !uGCMainActivity.h.isShowing()) {
            TextView textView = (TextView) uGCMainActivity.a().a().findViewById(R.id.actionbar_custom_right_text);
            uGCMainActivity.h.showAsDropDown(textView);
        }
        uGCMainActivity.e("\u6536\u8d77");
    }

    static /* synthetic */ void a(UGCMainActivity uGCMainActivity, String string) {
        b.a(uGCMainActivity, "ugc_filter", string);
        if (!uGCMainActivity.i.equals(string)) {
            uGCMainActivity.i = string;
            uGCMainActivity.d(string);
            uGCMainActivity.k.b();
            uGCMainActivity.b.get(uGCMainActivity.c.getCurrentItem()).a();
            uGCMainActivity.b.get(uGCMainActivity.c.getCurrentItem()).a(uGCMainActivity.i);
        }
        uGCMainActivity.h();
    }

    static /* synthetic */ void b(UGCMainActivity uGCMainActivity) {
        if (uGCMainActivity.g != null && !uGCMainActivity.g.isShowing()) {
            if (uGCMainActivity.f == null || !uGCMainActivity.f.isShowing()) {
                uGCMainActivity.f = new PopupWindow(uGCMainActivity.getLayoutInflater().inflate(R.layout.home_menu_bg_popup, null, false), -1, a.L(uGCMainActivity));
                uGCMainActivity.f.setAnimationStyle(R.style.home_menu_bg_anim);
                uGCMainActivity.f.showAtLocation(uGCMainActivity.a().a(), 0, 0, 0);
            }
            View view = uGCMainActivity.a().a().findViewById(R.id.actionbar_custom_right_icon);
            uGCMainActivity.g.setAnimationStyle(R.style.home_menu_anim);
            uGCMainActivity.g.showAsDropDown(view);
        }
    }

    static /* synthetic */ RecyclerView c(UGCMainActivity uGCMainActivity) {
        return uGCMainActivity.j;
    }

    static /* synthetic */ ak d(UGCMainActivity uGCMainActivity) {
        return uGCMainActivity.k;
    }

    static /* synthetic */ List e(UGCMainActivity uGCMainActivity) {
        return uGCMainActivity.b;
    }

    static /* synthetic */ ViewPager f(UGCMainActivity uGCMainActivity) {
        return uGCMainActivity.c;
    }

    static /* synthetic */ void g(UGCMainActivity uGCMainActivity) {
        uGCMainActivity.g();
    }

    static /* synthetic */ void h(UGCMainActivity uGCMainActivity) {
        uGCMainActivity.f();
    }

    static /* synthetic */ void i(UGCMainActivity uGCMainActivity) {
        uGCMainActivity.h();
    }

    static /* synthetic */ String j(UGCMainActivity uGCMainActivity) {
        return uGCMainActivity.i;
    }

    private PopupWindow a(PopupWindow popupWindow, View view) {
        if (popupWindow == null) {
            popupWindow = new PopupWindow(view, -1, -1);
            popupWindow.setFocusable(true);
            popupWindow.setOutsideTouchable(true);
            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
            popupWindow.getContentView().setFocusableInTouchMode(true);
            popupWindow.getContentView().setFocusable(true);
            popupWindow.getContentView().setOnKeyListener(new View.OnKeyListener() {
                @Override
                public boolean onKey(View v, int keyCode, KeyEvent event) {
                    if (event.getAction() == 0 && keyCode == 82 && event.getRepeatCount() == 0) {
                        UGCMainActivity.h(UGCMainActivity.this);
                        return true;
                    }
                    return false;
                }
            });
        }
        return popupWindow;
    }

    private void f() {
        if (this.g != null && this.g.isShowing()) {
            this.g.dismiss();
        }
        if (this.h != null && this.h.isShowing()) {
            this.h.dismiss();
        }
        this.g();
    }

    private void g() {
        if (this.f != null && this.f.isShowing()) {
            this.f.dismiss();
        }
    }

    private void h() {
        if (this.h != null && this.h.isShowing()) {
            this.h.dismiss();
        }
        this.e("\u7b5b\u9009");
    }

    public final UGCMainListFragment a(String string, String string2, String string3) {
        UGCMainListFragment uGCMainListFragment = (UGCMainListFragment) this.getSupportFragmentManager().findFragmentByTag(string);
        if (uGCMainListFragment == null) {
            uGCMainListFragment = UGCMainListFragment.a(string2, string3);
        }
        uGCMainListFragment.a(this.i);
        return uGCMainListFragment;
    }

    public final String b() {
        return this.i;
    }

    @Override
    public View createTabContent(String string) {
        View view = new View(this);
        view.setMinimumHeight(0);
        view.setMinimumWidth(0);
        return view;
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_ugc_main_tabhost);
        View view = this.getLayoutInflater().inflate(R.layout.ugc_popupwindow_layout, null);
        this.g = this.a(this.g, view);
        this.g.setOnDismissListener(new PopupWindow.OnDismissListener() {
            @Override
            public void onDismiss() {
                UGCMainActivity.g(UGCMainActivity.this);
           }
        });
        view.findViewById(R.id.create_ugc).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (com.clilystudio.netbook.am.a((Activity) UGCMainActivity.this) != null) {
                    MiStatInterface.recordCountEvent("ugc_create", null);
                    Intent intent = new Intent(UGCMainActivity.this, UGCGuideAddCollectionActivity.class);
                    UGCMainActivity.this.startActivity(intent);
                    UGCMainActivity.h(UGCMainActivity.this);
                }
            }
        });
        view.findViewById(R.id.my_ugc).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (am.a((Activity) UGCMainActivity.this) != null) {
                    MiStatInterface.recordCountEvent("ugc_my_own", null);
                    Intent intent = new Intent(UGCMainActivity.this, UserUGCActivity.class);
                    UGCMainActivity.this.startActivity(intent);
                    UGCMainActivity.h(UGCMainActivity.this);
                }
            }
        });
        view.findViewById(R.id.back_view).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                UGCMainActivity.h(UGCMainActivity.this);
            }
        });
        View view2 = LayoutInflater.from(this).inflate(R.layout.ugc_filter_popupwindow, null);
        this.h = this.a(this.h, view2);
        view2.findViewById(R.id.back_view).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                UGCMainActivity.i(UGCMainActivity.this);
            }
        });
        this.i = this.getString(R.string.ugc_all);
        this.j = (RecyclerView) view2.findViewById(R.id.ugc_filter_list);
        this.j.setLayoutManager(new D(this));
        this.k = new ak(this, this, new UgcFilterRoot.FilterGroup[0]);
        this.j.setAdapter(this.k);
        this.h.setOnDismissListener(new PopupWindow.OnDismissListener() {
            @Override
            public void onDismiss() {
                UGCMainActivity.this.e("筛选");
            }
        });
        this.a(R.string.ugc_list, "筛选", R.drawable.ic_action_overflow, new com.clilystudio.netbook.ui.ab() {
            @Override
            public void a() {
                UGCMainActivity.a(UGCMainActivity.this);
            }

            @Override
            public void b() {
                UGCMainActivity.b(UGCMainActivity.this);
            }
        });
        this.a = (TabHost) this.findViewById(R.id.host);
        this.c = (ViewPager) this.findViewById(R.id.pager);
        this.e = new aj(this, this.getSupportFragmentManager());
        this.c.setOffscreenPageLimit(3);
        this.c.setAdapter(this.e);
        this.c.setOnPageChangeListener(this);
        this.a.setup();
        this.a.setOnTabChangedListener(this);
        if (this.a.getTabWidget().getTabCount() > 0) {
            this.a.setCurrentTab(0);
            this.a.clearAllTabs();
        }
        LayoutInflater layoutInflater = this.getLayoutInflater();
        int n = this.e.getCount();
        for (int k = 0; k < n; ++k) {
            TabHost.TabSpec tabSpec = this.a.newTabSpec("tab" + k);
            tabSpec.setContent(this);
            View view3 = layoutInflater.inflate(R.layout.home_tabhost_item, null);
            ((TextView) view3.findViewById(R.id.text)).setText((String) this.e.getPageTitle(k));
            tabSpec.setIndicator(view3);
            this.a.addTab(tabSpec);
        }
        new e<Void, Void, UgcFilterRoot>(){

            @Override
            protected UgcFilterRoot doInBackground(Void... params) {
                return com.clilystudio.netbook.api.b.b().o();
            }

            @Override
            protected void onPostExecute(UgcFilterRoot ugcFilterRoot) {
                super.onPostExecute(ugcFilterRoot);
                if (ugcFilterRoot != null && ugcFilterRoot.isOk() && ugcFilterRoot.getData() != null) {
                    UGCMainActivity.a(UGCMainActivity.this, new ak(UGCMainActivity.this, UGCMainActivity.this, ugcFilterRoot.getData()));
                    UGCMainActivity.c(UGCMainActivity.this).setLayoutManager(new D(UGCMainActivity.this));
                    UGCMainActivity.c(UGCMainActivity.this).setAdapter(UGCMainActivity.d(UGCMainActivity.this));
                }
            }
        }.b();
    }

    @Override
    public void onPageScrollStateChanged(int n) {
    }

    @Override
    public void onPageScrolled(int n, float f2, int n2) {
        this.a(n, n2);
    }

    @Override
    public void onPageSelected(int n) {
        TabWidget tabWidget = this.a.getTabWidget();
        int n2 = tabWidget.getDescendantFocusability();
        tabWidget.setDescendantFocusability(393216);
        this.a.setCurrentTab(n);
        tabWidget.setDescendantFocusability(n2);
    }

    @Override
    public void onPause() {
        super.onPause();
        this.f();
    }

    @Override
    public void onTabChanged(String string) {
        int n = this.a.getCurrentTab();
        if (n >= 0 && n < this.e.getCount()) {
            this.c.setCurrentItem(n, true);
        }
    }
}
