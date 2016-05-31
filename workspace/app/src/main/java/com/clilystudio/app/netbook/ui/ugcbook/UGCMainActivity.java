package com.clilystudio.app.netbook.ui.ugcbook;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;

import com.clilystudio.app.netbook.model.UgcFilterRoot.FilterGroup;
import com.clilystudio.app.netbook.ui.BaseTabActivity;
import com.clilystudio.app.netbook.util.D;

import java.util.ArrayList;
import java.util.List;

public class UGCMainActivity extends BaseTabActivity
        implements ViewPager.OnPageChangeListener, TabHost.OnTabChangeListener, TabHost.TabContentFactory {
    private List<UGCMainListFragment> b = new ArrayList();
    private ViewPager c;
    private aj e;
    private PopupWindow f;
    private PopupWindow g;
    private PopupWindow h;
    private String i;
    private RecyclerView j;
    private ak k;

    private PopupWindow a(PopupWindow paramPopupWindow, View paramView) {
        if (paramPopupWindow == null) {
            paramPopupWindow = new PopupWindow(paramView, -1, -1);
            paramPopupWindow.setFocusable(true);
            paramPopupWindow.setOutsideTouchable(true);
            paramPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
            paramPopupWindow.getContentView().setFocusableInTouchMode(true);
            paramPopupWindow.getContentView().setFocusable(true);
            paramPopupWindow.getContentView().setOnKeyListener(new af(this));
        }
        return paramPopupWindow;
    }

    private void f() {
        if ((this.g != null) && (this.g.isShowing()))
            this.g.dismiss();
        if ((this.h != null) && (this.h.isShowing()))
            this.h.dismiss();
        g();
    }

    private void g() {
        if ((this.f != null) && (this.f.isShowing()))
            this.f.dismiss();
    }

    private void h() {
        if ((this.h != null) && (this.h.isShowing()))
            this.h.dismiss();
        d_setRight("筛选");
    }

    public final UGCMainListFragment a(String paramString1, String paramString2, String paramString3) {
        UGCMainListFragment localUGCMainListFragment = (UGCMainListFragment) getSupportFragmentManager().findFragmentByTag(paramString1);
        if (localUGCMainListFragment == null)
            localUGCMainListFragment = UGCMainListFragment.a(paramString2, paramString3);
        localUGCMainListFragment.a(this.i);
        return localUGCMainListFragment;
    }

    public final String b() {
        return this.i;
    }

    public View createTabContent(String paramString) {
        View localView = new View(this);
        localView.setMinimumHeight(0);
        localView.setMinimumWidth(0);
        return localView;
    }

    protected void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setContentView(2130903136);
        View localView1 = getLayoutInflater().inflate(2130903410, null);
        this.g = a(this.g, localView1);
        this.g.setOnDismissListener(new ab(this));
        localView1.findViewById(2131494018).setOnClickListener(new ac(this));
        localView1.findViewById(2131494019).setOnClickListener(new ad(this));
        localView1.findViewById(2131493373).setOnClickListener(new ae(this));
        View localView2 = LayoutInflater.from(this).inflate(2130903405, null);
        this.h = a(this.h, localView2);
        localView2.findViewById(2131493373).setOnClickListener(new ag(this));
        this.i = getString(2131034561);
        this.j = ((RecyclerView) localView2.findViewById(2131494014));
        this.j.setLayoutManager(new D(this));
        this.k = new ak(this, this, new UgcFilterRoot.FilterGroup[0]);
        this.j.setAdapter(this.k);
        this.h.setOnDismissListener(new ah(this));
        a_initContentView(R.string.ugc_list, "筛选", 2130837871, new aa(this));
        this.a = ((TabHost) findViewById(2131493096));
        this.c = ((ViewPager) findViewById(2131493097));
        this.e = new aj(this, getSupportFragmentManager());
        this.c.setOffscreenPageLimit(3);
        this.c.setAdapter(this.e);
        this.c.setOnPageChangeListener(this);
        this.a.setup();
        this.a.setOnTabChangedListener(this);
        if (this.a.getTabWidget().getTabCount() > 0) {
            this.a.setCurrentTab(0);
            this.a.clearAllTabs();
        }
        LayoutInflater localLayoutInflater = getLayoutInflater();
        int m = this.e.getCount();
        for (int n = 0; n < m; n++) {
            TabHost.TabSpec localTabSpec = this.a.newTabSpec("tab" + n);
            localTabSpec.setContent(this);
            View localView3 = localLayoutInflater.inflate(2130903229, null);
            ((TextView) localView3.findViewById(2131493509)).setText((String) this.e.getPageTitle(n));
            localTabSpec.setIndicator(localView3);
            this.a.addTab(localTabSpec);
        }
        new ai(this, (byte) 0).b(new Void[0]);
    }

    public void onPageScrollStateChanged(int paramInt) {
    }

    public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {
        a(paramInt1, paramInt2);
    }

    public void onPageSelected(int paramInt) {
        TabWidget localTabWidget = this.a.getTabWidget();
        int m = localTabWidget.getDescendantFocusability();
        localTabWidget.setDescendantFocusability(393216);
        this.a.setCurrentTab(paramInt);
        localTabWidget.setDescendantFocusability(m);
    }

    public void onPause() {
        super.onPause();
        f();
    }

    public void onTabChanged(String paramString) {
        int m = this.a.getCurrentTab();
        if ((m >= 0) && (m < this.e.getCount()))
            this.c.setCurrentItem(m, true);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.UGCMainActivity
 * JD-Core Version:    0.6.2
 */