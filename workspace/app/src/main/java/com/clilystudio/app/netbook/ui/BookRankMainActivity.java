package com.clilystudio.app.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;

import com.clilystudio.app.netbook.d_IntentFactory;

import java.util.ArrayList;
import java.util.List;

public class BookRankMainActivity extends BaseTabActivity
        implements ViewPager.OnPageChangeListener, TabHost.OnTabChangeListener, TabHost.TabContentFactory {
    private List<BookRankListFragment> b = new ArrayList();
    private ViewPager c;
    private aS e;
    private String[] f;

    public static Intent a(Context paramContext, String[] paramArrayOfString, String paramString1, String paramString2) {
        return new d_IntentFactory().a_setClass(paramContext, BookRankMainActivity.class).a_putExtra("book_list_ids", paramArrayOfString).a_putExtra("book_list_title", paramString1).a_putExtra("rank_gender", paramString2).a();
    }

    private static String a(int paramInt) {
        switch (paramInt) {
            default:
                return "总榜";
            case 0:
                return "周榜";
            case 1:
        }
        return "月榜";
    }

    public View createTabContent(String paramString) {
        View localView = new View(this);
        localView.setMinimumHeight(0);
        localView.setMinimumWidth(0);
        return localView;
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903089);
        b_initContentView(getIntent().getStringExtra("book_list_title"));
        this.f = getIntent().getStringArrayExtra("book_list_ids");
        this.a = ((TabHost) findViewById(2131493096));
        this.c = ((ViewPager) findViewById(2131493097));
        this.e = new aS(this, getSupportFragmentManager());
        this.c.setOffscreenPageLimit(3);
        this.c.setAdapter(this.e);
        this.c.addOnPageChangeListener(this);
        this.a.setup();
        this.a.setOnTabChangedListener(this);
        if (this.a.getTabWidget().getTabCount() > 0)
            this.a.clearAllTabs();
        LayoutInflater localLayoutInflater = getLayoutInflater();
        for (int i = 0; i < 3; i++) {
            TabHost.TabSpec localTabSpec = this.a.newTabSpec("tab" + i);
            localTabSpec.setContent(this);
            View localView = localLayoutInflater.inflate(2130903229, null);
            ((TextView) localView.findViewById(2131493509)).setText(a(i));
            localTabSpec.setIndicator(localView);
            this.a.addTab(localTabSpec);
        }
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
        Intent localIntent = getIntent();
        String str1 = localIntent.getStringExtra("book_list_title");
        String str2 = str1 + a(paramInt);
        String str3 = localIntent.getStringExtra("rank_gender");
        b.a(this, "book_rank_tab_click", str2 + "_" + str3);
    }

    public void onTabChanged(String paramString) {
        int i = this.a.getCurrentTab();
        if ((i >= 0) && (i < this.e.getCount()))
            this.c.setCurrentItem(i, true);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.BookRankMainActivity
 * JD-Core Version:    0.6.2
 */