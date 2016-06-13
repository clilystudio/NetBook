package com.clilystudio.netbook.ui.ugcbook;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;

import com.clilystudio.netbook.model.UgcFilterRoot$FilterGroup;
import com.clilystudio.netbook.ui.BaseTabActivity;
import com.clilystudio.netbook.util.D;
import com.umeng.a.b;

import java.util.ArrayList;
import java.util.List;

public class UGCMainActivity
        extends BaseTabActivity
        implements ViewPager$OnPageChangeListener,
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
            TextView textView = (TextView) uGCMainActivity.a().a().findViewById(2131493008);
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
                uGCMainActivity.f = new PopupWindow(uGCMainActivity.getLayoutInflater().inflate(2130903227, null, false), -1, a.L(uGCMainActivity));
                uGCMainActivity.f.setAnimationStyle(2131165629);
                uGCMainActivity.f.showAtLocation(uGCMainActivity.a().a(), 0, 0, 0);
            }
            View view = uGCMainActivity.a().a().findViewById(2131493009);
            uGCMainActivity.g.setAnimationStyle(2131165628);
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
            popupWindow.getContentView().setOnKeyListener(new af(this));
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
        this.setContentView(2130903136);
        View view = this.getLayoutInflater().inflate(2130903410, null);
        this.g = this.a(this.g, view);
        this.g.setOnDismissListener(new ab(this));
        view.findViewById(2131494018).setOnClickListener(new ac(this));
        view.findViewById(2131494019).setOnClickListener(new ad(this));
        view.findViewById(2131493373).setOnClickListener(new ae(this));
        View view2 = LayoutInflater.from(this).inflate(2130903405, null);
        this.h = this.a(this.h, view2);
        view2.findViewById(2131493373).setOnClickListener(new ag(this));
        this.i = this.getString(2131034561);
        this.j = (RecyclerView) view2.findViewById(2131494014);
        this.j.setLayoutManager(new D(this));
        this.k = new ak(this, this, new UgcFilterRoot$FilterGroup[0]);
        this.j.setAdapter(this.k);
        this.h.setOnDismissListener(new ah(this));
        this.a(2131034565, "\u7b5b\u9009", 2130837871, (com.clilystudio.netbook.ui.ab) new aa(this));
        this.a = (TabHost) this.findViewById(2131493096);
        this.c = (ViewPager) this.findViewById(2131493097);
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
            View view3 = layoutInflater.inflate(2130903229, null);
            ((TextView) view3.findViewById(2131493509)).setText((String) this.e.getPageTitle(k));
            tabSpec.setIndicator(view3);
            this.a.addTab(tabSpec);
        }
        new ai(this, 0).b(new Void[0]);
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
