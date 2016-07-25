package com.clilystudio.netbook.ui;

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
import com.clilystudio.netbook.adapter.BasePagerAdapter;
import com.clilystudio.netbook.widget.TabWidgetV2;

import java.util.ArrayList;
import java.util.List;

public abstract class SimpleTabActivity extends BaseTabActivity implements ViewPager.OnPageChangeListener,
        TabHost.OnTabChangeListener,
        TabHost.TabContentFactory {
    protected int b = 2;
    protected String[] c = new String[]{"fragmentTag0", "fragmentTag1"};
    private ViewPager e;
    private ch f;
    private List<Fragment> g = new ArrayList<>();

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

    public final boolean g() {
        return "tab0".equals(this.a.getCurrentTabTag());
    }

    public abstract String[] h();

    public abstract Fragment[] i();

    @Override
    protected void onCreate(Bundle bundle) {
        int n = 0;
        super.onCreate(bundle);
        this.setContentView(R.layout.activity_tabhost);
        this.b();
        this.a = (TabHost) this.findViewById(R.id.host);
        TabWidgetV2 tabWidgetV2 = (TabWidgetV2) this.findViewById(android.R.id.tabs);
        assert tabWidgetV2 != null;
        tabWidgetV2.setItemCount(this, this.b);
        this.e = (ViewPager) this.findViewById(R.id.pager);
        this.f = new ch(this.getSupportFragmentManager());
        this.e.setOffscreenPageLimit(this.b);
        this.e.setAdapter(this.f);
        this.e.addOnPageChangeListener(this);
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
            View view = layoutInflater.inflate(R.layout.home_tabhost_item, (ViewGroup)getWindow().getDecorView(), false);
            ((TextView) view.findViewById(R.id.text)).setText(this.h()[n]);
            tabSpec.setIndicator(view);
            this.a.addTab(tabSpec);
            ++n;
        }
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
        tabWidget.setDescendantFocusability(ViewGroup.FOCUS_BLOCK_DESCENDANTS);
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

    final class ch extends BasePagerAdapter {

        public ch(FragmentManager fragmentManager) {
            super(fragmentManager);
            int n = 0;
            for (int i = 0; i < SimpleTabActivity.this.b; ++i) {
                SimpleTabActivity.this.g.add(i, SimpleTabActivity.this.e(i));
            }
            FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
            while (n < SimpleTabActivity.this.b) {
                Fragment fragment = SimpleTabActivity.this.g.get(n);
                if (!fragment.isAdded()) {
                    fragmentTransaction.add(SimpleTabActivity.this.e.getId(), fragment, SimpleTabActivity.this.c[n]);
                }
                ++n;
            }
            if (!fragmentTransaction.isEmpty()) {
                fragmentTransaction.commit();
                fragmentManager.executePendingTransactions();
            }
        }

        @Override
        public final Fragment getFragment(int position) {
            return SimpleTabActivity.this.g.get(position);
        }

        @Override
        protected final String getTag(int position) {
            return SimpleTabActivity.this.c[position];
        }

        @Override
        public final int getCount() {
            return SimpleTabActivity.this.b;
        }

        @Override
        public final CharSequence getPageTitle(int n) {
            return SimpleTabActivity.this.getResources().getStringArray(R.array.my_msg_tabs)[n];
        }
    }
}
