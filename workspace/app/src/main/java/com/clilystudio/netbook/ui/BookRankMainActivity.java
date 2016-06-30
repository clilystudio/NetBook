package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;
import com.xiaomi.mistatistic.sdk.MiStatInterfaceImpl;

import java.util.ArrayList;
import java.util.List;

public class BookRankMainActivity extends BaseTabActivity implements ViewPager.OnPageChangeListener,
        TabHost.OnTabChangeListener,
        TabHost.TabContentFactory {
    private List<BookRankListFragment> b = new ArrayList<>();
    private ViewPager c;
    private aS e;
    private String[] f;

    public static Intent a(Context context, String[] arrstring, String string, String string2) {
        return new d().a(context, BookRankMainActivity.class).a("book_list_ids", arrstring).a("book_list_title", string).a("rank_gender", string2).a();
    }

    static /* synthetic */ BookRankListFragment a(BookRankMainActivity bookRankMainActivity, String string, String string2, String string3) {
        BookRankListFragment bookRankListFragment = (BookRankListFragment) bookRankMainActivity.getSupportFragmentManager().findFragmentByTag(string2);
        if (bookRankListFragment == null) {
            bookRankListFragment = BookRankListFragment.a(string, string3);
        }
        return bookRankListFragment;
    }

    private static String a(int n) {
        switch (n) {
            default: {
                return "\u603b\u699c";
            }
            case 0: {
                return "\u5468\u699c";
            }
            case 1:
        }
        return "\u6708\u699c";
    }

    static /* synthetic */ String[] a(BookRankMainActivity bookRankMainActivity) {
        return bookRankMainActivity.f;
    }

    static /* synthetic */ List b(BookRankMainActivity bookRankMainActivity) {
        return bookRankMainActivity.b;
    }

    static /* synthetic */ ViewPager c(BookRankMainActivity bookRankMainActivity) {
        return bookRankMainActivity.c;
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
        this.setContentView(R.layout.activity_book_rank_main);
        this.b(this.getIntent().getStringExtra("book_list_title"));
        this.f = this.getIntent().getStringArrayExtra("book_list_ids");
        this.a = (TabHost) this.findViewById(R.id.host);
        this.c = (ViewPager) this.findViewById(R.id.pager);
        this.e = new aS(this.getSupportFragmentManager());
        this.c.setOffscreenPageLimit(3);
        this.c.setAdapter(this.e);
        this.c.addOnPageChangeListener(this);
        this.a.setup();
        this.a.setOnTabChangedListener(this);
        if (this.a.getTabWidget().getTabCount() > 0) {
            this.a.clearAllTabs();
        }
        LayoutInflater layoutInflater = this.getLayoutInflater();
        for (int i = 0; i < 3; ++i) {
            TabHost.TabSpec tabSpec = this.a.newTabSpec("tab" + i);
            tabSpec.setContent(this);
            View view = layoutInflater.inflate(R.layout.home_tabhost_item, (ViewGroup)getWindow().getDecorView(), false);
            ((TextView) view.findViewById(R.id.text)).setText(BookRankMainActivity.a(i));
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
        tabWidget.setDescendantFocusability(ViewGroup.FOCUS_BLOCK_DESCENDANTS);
        this.a.setCurrentTab(n);
        tabWidget.setDescendantFocusability(n2);
        Intent intent = this.getIntent();
        String string = intent.getStringExtra("book_list_title");
        String string2 = string + BookRankMainActivity.a(n);
        String string3 = intent.getStringExtra("rank_gender");
        MiStatInterfaceImpl.recordCountEvent("book_rank_tab_click", string2 + "_" + string3);
    }

    @Override
    public void onTabChanged(String string) {
        int n = this.a.getCurrentTab();
        if (n >= 0 && n < this.e.getCount()) {
            this.c.setCurrentItem(n, true);
        }
    }

    final class aS extends ZssqFragmentPagerAdapter {
        private String[] a;

        public aS(FragmentManager fragmentManager) {
            super(fragmentManager);
            this.a = new String[]{"weekly", "monthly", "all"};
            for (int i = 0; i < 3; ++i) {
                BookRankMainActivity.this.b.add(i, BookRankMainActivity.a(BookRankMainActivity.this, BookRankMainActivity.a(BookRankMainActivity.this)[i], this.a[i], this.a[i]));
            }
            FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
            for (int j = 0; j < 3; ++j) {
                Fragment fragment = (Fragment) BookRankMainActivity.b(BookRankMainActivity.this).get(j);
                if (fragment.isAdded()) continue;
                fragmentTransaction.add(BookRankMainActivity.c(BookRankMainActivity.this).getId(), fragment, this.a[j]);
            }
            if (!fragmentTransaction.isEmpty()) {
                fragmentTransaction.commit();
                fragmentManager.executePendingTransactions();
            }
        }

        @Override
        public final Fragment a(int n) {
            return (Fragment) BookRankMainActivity.b(BookRankMainActivity.this).get(n);
        }

        @Override
        protected final String b(int n) {
            return this.a[n];
        }

        @Override
        public final int getCount() {
            return 3;
        }
    }
}
