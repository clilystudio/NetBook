package com.clilystudio.netbook.ui;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TabHost;
import android.widget.TabHost$OnTabChangeListener;
import android.widget.TabHost$TabContentFactory;
import android.widget.TabHost$TabSpec;
import android.widget.TabWidget;
import android.widget.TextView;

import com.clilystudio.netbook.widget.TabWidgetV2;

import java.util.ArrayList;
import java.util.List;

public abstract class SimpleTabActivity extends BaseTabActivity implements ViewPager$OnPageChangeListener, TabHost$OnTabChangeListener, TabHost$TabContentFactory {

    protected int b = 2;
    protected String[] c = {"fragmentTag0", "fragmentTag1"};
    private ViewPager e;
    private ch f;
    private List g = new ArrayList();

    static List a(SimpleTabActivity SimpleTabActivity1) {
        return SimpleTabActivity1.g;
    }

    static ViewPager b(SimpleTabActivity SimpleTabActivity1) {
        return SimpleTabActivity1.e;
    }

    public final void a(int int1) {
        if (int1 < 0 || int1 >= b)
            int1 = 0;
        a.setCurrentTab(int1);
    }

    protected void b() {
    }

    public View createTabContent(String String1) {
        View View2 = new View((Context) this);

        View2.setMinimumHeight(0);
        View2.setMinimumWidth(0);
        return View2;
    }

    public final Fragment e(int int1) {
        Fragment Fragment2 = getSupportFragmentManager().findFragmentByTag(c[int1]);

        if (Fragment2 == null)
            Fragment2 = i()[int1];
        return Fragment2;
    }

    protected void f() {
    }

    public final boolean g() {
        return "tab0".equals(a.getCurrentTabTag());
    }

    public abstract String[] h();

    public abstract Fragment[] i();

    protected void onCreate(Bundle Bundle1) {
        int int2 = 0;
        TabWidgetV2 TabWidgetV2_3;
        LayoutInflater LayoutInflater4;
        int int5;

        super.onCreate(Bundle1);
        setContentView(2130903133);
        b();
        a = (TabHost) findViewById(2131493096);
        TabWidgetV2_3 = (TabWidgetV2) findViewById(16908307);
        TabWidgetV2_3.setItemCount((Context) this, b);
        e = (ViewPager) findViewById(2131493097);
        f = new ch(this, getSupportFragmentManager());
        e.setOffscreenPageLimit(b);
        e.setAdapter((PagerAdapter) f);
        e.setOnPageChangeListener(this);
        a.setup();
        a.setOnTabChangedListener(this);
        if (a.getTabWidget().getTabCount() > 0) {
            a.setCurrentTab(0);
            a.clearAllTabs();
        }
        LayoutInflater4 = getLayoutInflater();
        int5 = f.getCount();
        while (int2 < int5) {
            TabHost$TabSpec TabSpec6 = a.newTabSpec(new StringBuilder("tab").append(int2).toString());
            View View8;

            TabSpec6.setContent(this);
            View8 = LayoutInflater4.inflate(2130903229, null);
            ((TextView) View8.findViewById(2131493509)).setText((CharSequence) h()[int2]);
            TabSpec6.setIndicator(View8);
            a.addTab(TabSpec6);
            ++int2;
        }
        f();
        if (Bundle1 != null)
            TabWidgetV2_3.setIndex(Bundle1.getInt("extra_index"));
    }

    public void onPageScrollStateChanged(int int1) {
    }

    public void onPageScrolled(int int1, float float2, int int3) {
        a(int1, int3);
    }

    public void onPageSelected(int int1) {
        TabWidget TabWidget2 = a.getTabWidget();
        int int3 = TabWidget2.getDescendantFocusability();

        TabWidget2.setDescendantFocusability(393216);
        a.setCurrentTab(int1);
        TabWidget2.setDescendantFocusability(int3);
    }

    protected void onSaveInstanceState(Bundle Bundle1) {
        super.onSaveInstanceState(Bundle1);
        Bundle1.putInt("extra_index", a.getCurrentTab());
    }

    public void onTabChanged(String String1) {
        int int2 = a.getCurrentTab();

        if (int2 >= 0 && int2 < f.getCount())
            e.setCurrentItem(int2, true);
    }
}
