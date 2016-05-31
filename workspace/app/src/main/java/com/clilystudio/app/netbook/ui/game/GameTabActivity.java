package com.clilystudio.app.netbook.ui.game;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;

import com.clilystudio.app.netbook.d_IntentFactory;
import com.clilystudio.app.netbook.ui.BaseTabActivity;

import java.util.ArrayList;
import java.util.List;

public class GameTabActivity extends BaseTabActivity
        implements ViewPager.OnPageChangeListener, TabHost.OnTabChangeListener, TabHost.TabContentFactory {
    private final String[] b = {"recommend", "rank", "category", "micro"};
    private List<Fragment> c = new ArrayList();
    private ViewPager e;
    private an f;

    public static Intent a(Context paramContext) {
        return new d_IntentFactory().a_setClass(paramContext, GameTabActivity.class).a();
    }

    public View createTabContent(String paramString) {
        View localView = new View(this);
        localView.setMinimumHeight(0);
        localView.setMinimumWidth(0);
        return localView;
    }

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(2130903103);
        b_initContentView(2131034214);
        this.a = ((TabHost) findViewById(2131493096));
        this.e = ((ViewPager) findViewById(2131493097));
        this.f = new an(this, getSupportFragmentManager());
        this.e.setOffscreenPageLimit(4);
        this.e.setAdapter(this.f);
        this.e.setOnPageChangeListener(this);
        this.a.setup();
        this.a.setOnTabChangedListener(this);
        if (this.a.getTabWidget().getTabCount() > 0) {
            this.a.setCurrentTab(0);
            this.a.clearAllTabs();
        }
        LayoutInflater localLayoutInflater = getLayoutInflater();
        int i = this.f.getCount();
        for (int j = 0; j < i; j++) {
            TabHost.TabSpec localTabSpec = this.a.newTabSpec("tab" + j);
            localTabSpec.setContent(this);
            View localView = localLayoutInflater.inflate(2130903229, null);
            ((TextView) localView.findViewById(2131493509)).setText((String) this.f.getPageTitle(j));
            localTabSpec.setIndicator(localView);
            this.a.addTab(localTabSpec);
        }
        this.a.setCurrentTab(0);
    }

    public void onPageScrollStateChanged(int paramInt) {
    }

    public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {
        a(paramInt1, paramInt2);
    }

    public void onPageSelected(int paramInt) {
        TabWidget localTabWidget = this.a.getTabWidget();
        int i = localTabWidget.getDescendantFocusability();
        localTabWidget.setDescendantFocusability(393216);
        this.a.setCurrentTab(paramInt);
        localTabWidget.setDescendantFocusability(i);
        b.a(this, "game_center_tab_click", this.b[paramInt]);
    }

    public void onTabChanged(String paramString) {
        int i = this.a.getCurrentTab();
        if ((i >= 0) && (i < this.f.getCount()))
            this.e.setCurrentItem(i, true);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.GameTabActivity
 * JD-Core Version:    0.6.2
 */