package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
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

import java.util.ArrayList;
import java.util.List;

public class BookRankMainActivity extends BaseTabActivity implements ViewPager$OnPageChangeListener, TabHost$OnTabChangeListener, TabHost$TabContentFactory {

    private ViewPager c;
    private aS e;
    private String[] f;
    private List b = new ArrayList();
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String[] String_1darray2, String String3, String String4) {
    }

    static BookRankListFragment a(BookRankMainActivity BookRankMainActivity1, String String2, String String3, String String4) {
        BookRankListFragment BookRankListFragment5 = (BookRankListFragment) BookRankMainActivity1.getSupportFragmentManager().findFragmentByTag(String3);

        if (BookRankListFragment5 == null)
            BookRankListFragment5 = BookRankListFragment.a(String2, String4);
        return BookRankListFragment5;
    }

    private static String a(int int1) {
        switch (int1) {
            default:
                return "\u603B\u699C";
            case 0:
                return "\u5468\u699C";
            case 1:
                return "\u6708\u699C";
        }
    }

    static String[] a(BookRankMainActivity BookRankMainActivity1) {
        return BookRankMainActivity1.f;
    }

    static List b(BookRankMainActivity BookRankMainActivity1) {
        return BookRankMainActivity1.b;
    }

    static ViewPager c(BookRankMainActivity BookRankMainActivity1) {
        return BookRankMainActivity1.c;
    }

    public View createTabContent(String String1) {
        View View2 = new View((Context) this);

        View2.setMinimumHeight(0);
        View2.setMinimumWidth(0);
        return View2;
    }

    protected void onCreate(Bundle Bundle1) {
        LayoutInflater LayoutInflater2;
        int int3;

        super.onCreate(Bundle1);
        setContentView(2130903089);
        b(getIntent().getStringExtra("book_list_title"));
        f = getIntent().getStringArrayExtra("book_list_ids");
        a = (TabHost) findViewById(2131493096);
        c = (ViewPager) findViewById(2131493097);
        e = new aS(this, getSupportFragmentManager());
        c.setOffscreenPageLimit(3);
        c.setAdapter((PagerAdapter) e);
        c.addOnPageChangeListener(this);
        a.setup();
        a.setOnTabChangedListener(this);
        if (a.getTabWidget().getTabCount() > 0)
            a.clearAllTabs();
        LayoutInflater2 = getLayoutInflater();
        for (int3 = 0; int3 < 3; ++int3) {
            TabHost$TabSpec TabSpec4 = a.newTabSpec(new StringBuilder("tab").append(int3).toString());
            View View6;

            TabSpec4.setContent(this);
            View6 = LayoutInflater2.inflate(2130903229, null);
            ((TextView) View6.findViewById(2131493509)).setText((CharSequence) a(int3));
            TabSpec4.setIndicator(View6);
            a.addTab(TabSpec4);
        }
    }

    public void onPageScrollStateChanged(int int1) {
    }

    public void onPageScrolled(int int1, float float2, int int3) {
        a(int1, int3);
    }

    public void onPageSelected(int int1) {
        TabWidget TabWidget2 = a.getTabWidget();
        int int3 = TabWidget2.getDescendantFocusability();
        Intent Intent4;
        String String5;
        String String6;
        String String7;

        TabWidget2.setDescendantFocusability(393216);
        a.setCurrentTab(int1);
        TabWidget2.setDescendantFocusability(int3);
        Intent4 = getIntent();
        String5 = Intent4.getStringExtra("book_list_title");
        String6 = new StringBuilder().append(String5).append(a(int1)).toString();
        String7 = Intent4.getStringExtra("rank_gender");
        com.umeng.a.b.a((Context) this, "book_rank_tab_click", new StringBuilder().append(String6).append("_").append(String7).toString());
    }

    public void onTabChanged(String String1) {
        int int2 = a.getCurrentTab();

        if (int2 >= 0 && int2 < e.getCount())
            c.setCurrentItem(int2, true);
    }
}
