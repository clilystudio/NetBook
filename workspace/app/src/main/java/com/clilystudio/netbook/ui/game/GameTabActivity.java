package com.clilystudio.netbook.ui.game;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
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

public class GameTabActivity extends BaseTabActivity implements ViewPager$OnPageChangeListener,
        TabHost.OnTabChangeListener,
        TabHost.TabContentFactory {
    private final String[] b = new String[]{"recommend", "rank", "category", "micro"};
    private List<Fragment> c = new ArrayList<Fragment>();
    private ViewPager e;
    private an f;

    public static Intent a(Context context) {
        return new d().a(context, GameTabActivity.class).a();
    }

    static /* synthetic */ List a(GameTabActivity gameTabActivity) {
        return gameTabActivity.c;
    }

    static /* synthetic */ ViewPager b(GameTabActivity gameTabActivity) {
        return gameTabActivity.e;
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
        this.setContentView(2130903103);
        this.b(2131034214);
        this.a = (TabHost) this.findViewById(2131493096);
        this.e = (ViewPager) this.findViewById(2131493097);
        this.f = new an(this, this.getSupportFragmentManager());
        this.e.setOffscreenPageLimit(4);
        this.e.setAdapter(this.f);
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
        this.a.setCurrentTab(0);
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
        b.a(this, "game_center_tab_click", this.b[n]);
    }

    @Override
    public void onTabChanged(String string) {
        int n = this.a.getCurrentTab();
        if (n >= 0 && n < this.f.getCount()) {
            this.e.setCurrentItem(n, true);
        }
    }
}
