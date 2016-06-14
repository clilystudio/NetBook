package com.clilystudio.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.ui.BaseTabActivity;

import java.util.ArrayList;
import java.util.List;

public class PayVoucherActivity extends BaseTabActivity implements ViewPager$OnPageChangeListener,
        TabHost.OnTabChangeListener,
        TabHost.TabContentFactory {
    String[] b;
    private List<PayVoucherFragment> c = new ArrayList<PayVoucherFragment>();
    private ViewPager e;
    private aa f;
    private String g;

    public static Intent a(Context context, String string) {
        return new d().a(context, PayVoucherActivity.class).a("token_key", string).a();
    }

    static /* synthetic */ List a(PayVoucherActivity payVoucherActivity) {
        return payVoucherActivity.c;
    }

    static /* synthetic */ ViewPager b(PayVoucherActivity payVoucherActivity) {
        return payVoucherActivity.e;
    }

    public final PayVoucherFragment a(int n) {
        PayVoucherFragment payVoucherFragment = (PayVoucherFragment) this.getSupportFragmentManager().findFragmentByTag(this.b[n]);
        if (payVoucherFragment == null) {
            payVoucherFragment = PayVoucherFragment.a(this.g, n);
        }
        return payVoucherFragment;
    }

    @Override
    public View createTabContent(String string) {
        View view = new View(this);
        view.setMinimumHeight(0);
        view.setMinimumWidth(0);
        return view;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130903119);
        this.g = this.getIntent().getStringExtra("token_key");
        this.b = this.getResources().getStringArray(2131361801);
        this.b("\u8ffd\u4e66\u5238");
        this.a = (TabHost) this.findViewById(2131493096);
        this.e = (ViewPager) this.findViewById(2131493097);
        this.f = new aa(this, this.getSupportFragmentManager());
        this.e.setOffscreenPageLimit(3);
        this.e.setAdapter((PagerAdapter) ((Object) this.f));
        this.e.setOnPageChangeListener(this);
        this.a.setup();
        this.a.setOnTabChangedListener(this);
        if (this.a.getTabWidget().getTabCount() > 0) {
            this.a.setCurrentTab(0);
            this.a.clearAllTabs();
        }
        LayoutInflater layoutInflater = this.getLayoutInflater();
        int n = this.f.getCount();
        for (int i = 0; i < n; ++i) {
            TabHost.TabSpec tabSpec = this.a.newTabSpec("tab" + i);
            tabSpec.setContent(this);
            View view = layoutInflater.inflate(2130903229, null);
            ((TextView) view.findViewById(2131493509)).setText((String) this.f.getPageTitle(i));
            tabSpec.setIndicator(view);
            this.a.addTab(tabSpec);
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
    public void onTabChanged(String string) {
        int n = this.a.getCurrentTab();
        if (n >= 0 && n < this.f.getCount()) {
            this.e.setCurrentItem(n, true);
        }
    }
}
