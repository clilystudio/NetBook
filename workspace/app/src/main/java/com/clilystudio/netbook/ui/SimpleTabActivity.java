package com.clilystudio.netbook.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;

import com.clilystudio.netbook.widget.TabWidgetV2;

import java.util.ArrayList;
import java.util.List;

public abstract class SimpleTabActivity
        extends BaseTabActivity
        implements ViewPager$OnPageChangeListener,
        TabHost.OnTabChangeListener,
        TabHost.TabContentFactory {
    protected int b = 2;
    protected String[] c = new String[]{"fragmentTag0", "fragmentTag1"};
    private ViewPager e;
    private ch f;
    private List<Fragment> g = new ArrayList<Fragment>();

    static /* synthetic */ List a(SimpleTabActivity simpleTabActivity) {
        return simpleTabActivity.g;
    }

    static /* synthetic */ ViewPager b(SimpleTabActivity simpleTabActivity) {
        return simpleTabActivity.e;
    }

    public final void a(int n) {
        if (n < 0 || n >= this.b) {
            n = 0;
        }
        this.a.setCurrentTab(n);
    }

    protected void b() {
    }

    @Override
    public View createTabContent(String string) {
        View view = new View(this);
        view.setMinimumHeight(0);
        view.setMinimumWidth(0);
        return view;
    }

    public final Fragment e(int n) {
        Fragment fragment = this.getSupportFragmentManager().findFragmentByTag(this.c[n]);
        if (fragment == null) {
            fragment = this.i()[n];
        }
        return fragment;
    }

    protected void f() {
    }

    public final boolean g() {
        return "tab0".equals(this.a.getCurrentTabTag());
    }

    public abstract String[] h();

    public abstract Fragment[] i();

    @Override
    protected void onCreate(Bundle bundle) {
        int n = 0;
        super.onCreate(bundle);
        this.setContentView(2130903133);
        this.b();
        this.a = (TabHost) this.findViewById(2131493096);
        TabWidgetV2 tabWidgetV2 = (TabWidgetV2) this.findViewById(16908307);
        tabWidgetV2.setItemCount(this, this.b);
        this.e = (ViewPager) this.findViewById(2131493097);
        this.f = new ch(this, this.getSupportFragmentManager());
        this.e.setOffscreenPageLimit(this.b);
        this.e.setAdapter(this.f);
        this.e.setOnPageChangeListener(this);
        this.a.setup();
        this.a.setOnTabChangedListener(this);
        if (this.a.getTabWidget().getTabCount() > 0) {
            this.a.setCurrentTab(0);
            this.a.clearAllTabs();
        }
        LayoutInflater layoutInflater = this.getLayoutInflater();
        int n2 = this.f.getCount();
        while (n < n2) {
            TabHost.TabSpec tabSpec = this.a.newTabSpec("tab" + n);
            tabSpec.setContent(this);
            View view = layoutInflater.inflate(2130903229, null);
            ((TextView) view.findViewById(2131493509)).setText(this.h()[n]);
            tabSpec.setIndicator(view);
            this.a.addTab(tabSpec);
            ++n;
        }
        this.f();
        if (bundle != null) {
            tabWidgetV2.setIndex(bundle.getInt("extra_index"));
        }
    }

    @Override
    public void onPageScrollStateChanged(int n) {
    }

    @Override
    public void onPageScrolled(int n, float f, int n2) {
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
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("extra_index", this.a.getCurrentTab());
    }

    @Override
    public void onTabChanged(String string) {
        int n = this.a.getCurrentTab();
        if (n >= 0 && n < this.f.getCount()) {
            this.e.setCurrentItem(n, true);
        }
    }
}
