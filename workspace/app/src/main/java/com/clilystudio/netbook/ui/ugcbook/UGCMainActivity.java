package com.clilystudio.netbook.ui.ugcbook;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager$OnPageChangeListener;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.View$OnKeyListener;
import android.widget.PopupWindow;
import android.widget.PopupWindow$OnDismissListener;
import android.widget.TabHost;
import android.widget.TabHost$OnTabChangeListener;
import android.widget.TabHost$TabContentFactory;
import android.widget.TabHost$TabSpec;
import android.widget.TabWidget;
import android.widget.TextView;

import com.clilystudio.netbook.model.UgcFilterRoot$FilterGroup;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.BaseTabActivity;
import com.clilystudio.netbook.util.D;

import java.util.ArrayList;
import java.util.List;

public class UGCMainActivity extends BaseTabActivity implements ViewPager$OnPageChangeListener, TabHost$OnTabChangeListener, TabHost$TabContentFactory {

    private ViewPager c;
    private aj e;
    private PopupWindow f;
    private PopupWindow g;
    private PopupWindow h;
    private String i;
    private RecyclerView j;
    private ak k;
    private List b = new ArrayList();

    static ak a(UGCMainActivity UGCMainActivity1, ak ak2) {
        UGCMainActivity1.k = ak2;
        return ak2;
    }

    static void a(UGCMainActivity UGCMainActivity1) {
        if (UGCMainActivity1.h != null && !UGCMainActivity1.h.isShowing()) {
            Object Object2 = (TextView) ((BaseActivity) UGCMainActivity1).a().a().findViewById(2131493008);

            UGCMainActivity1.h.showAsDropDown((View) Object2);
        }
        UGCMainActivity1.e("\u6536\u8D77");
    }

    static void a(UGCMainActivity UGCMainActivity1, String String2) {
        com.umeng.a.b.a((Context) UGCMainActivity1, "ugc_filter", String2);
        if (!UGCMainActivity1.i.equals(String2)) {
            UGCMainActivity1.i = String2;
            UGCMainActivity1.d(String2);
            UGCMainActivity1.k.b();
            ((UGCMainListFragment) UGCMainActivity1.b.get(UGCMainActivity1.c.getCurrentItem())).a();
            ((UGCMainListFragment) UGCMainActivity1.b.get(UGCMainActivity1.c.getCurrentItem())).a(UGCMainActivity1.i);
        }
        UGCMainActivity1.h();
    }

    static void b(UGCMainActivity UGCMainActivity1) {
        if (UGCMainActivity1.g != null && !UGCMainActivity1.g.isShowing()) {
            View View2;

            if (UGCMainActivity1.f == null || !UGCMainActivity1.f.isShowing()) {
                UGCMainActivity1.f = new PopupWindow(UGCMainActivity1.getLayoutInflater().inflate(2130903227, null, false), -1, com.clilystudio.netbook.hpay100.a.a.L((Context) UGCMainActivity1));
                UGCMainActivity1.f.setAnimationStyle(2131165629);
                UGCMainActivity1.f.showAtLocation(UGCMainActivity1.a().a(), 0, 0, 0);
            }
            View2 = ((BaseActivity) UGCMainActivity1).a().a().findViewById(2131493009);
            UGCMainActivity1.g.setAnimationStyle(2131165628);
            UGCMainActivity1.g.showAsDropDown(View2);
        }
    }

    static RecyclerView c(UGCMainActivity UGCMainActivity1) {
        return UGCMainActivity1.j;
    }

    static ak d(UGCMainActivity UGCMainActivity1) {
        return UGCMainActivity1.k;
    }

    static List e(UGCMainActivity UGCMainActivity1) {
        return UGCMainActivity1.b;
    }

    static ViewPager f(UGCMainActivity UGCMainActivity1) {
        return UGCMainActivity1.c;
    }

    static void g(UGCMainActivity UGCMainActivity1) {
        UGCMainActivity1.g();
    }

    static void h(UGCMainActivity UGCMainActivity1) {
        UGCMainActivity1.f();
    }

    static void i(UGCMainActivity UGCMainActivity1) {
        UGCMainActivity1.h();
    }

    static String j(UGCMainActivity UGCMainActivity1) {
        return UGCMainActivity1.i;
    }

    private PopupWindow a(PopupWindow PopupWindow1, View View2) {
        if (PopupWindow1 == null) {
            PopupWindow1 = new PopupWindow(View2, -1, -1);
            PopupWindow1.setFocusable(true);
            PopupWindow1.setOutsideTouchable(true);
            PopupWindow1.setBackgroundDrawable((Drawable) new ColorDrawable(0));
            PopupWindow1.getContentView().setFocusableInTouchMode(true);
            PopupWindow1.getContentView().setFocusable(true);
            PopupWindow1.getContentView().setOnKeyListener((View$OnKeyListener) new af(this));
        }
        return PopupWindow1;
    }

    private void f() {
        if (g != null && g.isShowing())
            g.dismiss();
        if (h != null && h.isShowing())
            h.dismiss();
        g();
    }

    private void g() {
        if (f != null && f.isShowing())
            f.dismiss();
    }

    private void h() {
        if (h != null && h.isShowing())
            h.dismiss();
        e("\u7B5B\u9009");
    }

    public final UGCMainListFragment a(String String1, String String2, String String3) {
        UGCMainListFragment UGCMainListFragment4 = (UGCMainListFragment) getSupportFragmentManager().findFragmentByTag(String1);

        if (UGCMainListFragment4 == null)
            UGCMainListFragment4 = UGCMainListFragment.a(String2, String3);
        UGCMainListFragment4.a(i);
        return UGCMainListFragment4;
    }

    public final String b() {
        return i;
    }

    public View createTabContent(String String1) {
        View View2 = new View((Context) this);

        View2.setMinimumHeight(0);
        View2.setMinimumWidth(0);
        return View2;
    }

    protected void onCreate(Bundle Bundle1) {
        View View2;
        View View3;
        LayoutInflater LayoutInflater4;
        int int5;
        int int6;

        super.onCreate(Bundle1);
        setContentView(2130903136);
        View2 = getLayoutInflater().inflate(2130903410, null);
        g = a(g, View2);
        g.setOnDismissListener((PopupWindow$OnDismissListener) new ab(this));
        View2.findViewById(2131494018).setOnClickListener((View$OnClickListener) new ac(this));
        View2.findViewById(2131494019).setOnClickListener((View$OnClickListener) new ad(this));
        View2.findViewById(2131493373).setOnClickListener((View$OnClickListener) new ae(this));
        View3 = LayoutInflater.from((Context) this).inflate(2130903405, null);
        h = a(h, View3);
        View3.findViewById(2131493373).setOnClickListener((View$OnClickListener) new ag(this));
        i = getString(2131034561);
        j = (RecyclerView) View3.findViewById(2131494014);
        j.setLayoutManager((ao) new D((Context) this));
        k = new ak(this, (Context) this, new UgcFilterRoot$FilterGroup[0]);
        j.setAdapter((android.support.v7.widget.ah) k);
        h.setOnDismissListener((PopupWindow$OnDismissListener) new ah(this));
        a(2131034565, "\u7B5B\u9009", 2130837871, (com.clilystudio.netbook.ui.ab) new aa(this));
        a = (TabHost) findViewById(2131493096);
        c = (ViewPager) findViewById(2131493097);
        e = new aj(this, getSupportFragmentManager());
        c.setOffscreenPageLimit(3);
        c.setAdapter((PagerAdapter) e);
        c.setOnPageChangeListener(this);
        a.setup();
        a.setOnTabChangedListener(this);
        if (a.getTabWidget().getTabCount() > 0) {
            a.setCurrentTab(0);
            a.clearAllTabs();
        }
        LayoutInflater4 = getLayoutInflater();
        int5 = e.getCount();
        for (int6 = 0; int6 < int5; ++int6) {
            TabHost$TabSpec TabSpec8 = a.newTabSpec(new StringBuilder("tab").append(int6).toString());
            View View10;

            TabSpec8.setContent(this);
            View10 = LayoutInflater4.inflate(2130903229, null);
            ((TextView) View10.findViewById(2131493509)).setText((CharSequence) (String) e.getPageTitle(int6));
            TabSpec8.setIndicator(View10);
            a.addTab(TabSpec8);
        }
        new ai(this, (byte) 0).b(new Void[0]);
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

    public void onPause() {
        super.onPause();
        f();
    }

    public void onTabChanged(String String1) {
        int int2 = a.getCurrentTab();

        if (int2 >= 0 && int2 < e.getCount())
            c.setCurrentItem(int2, true);
    }
}
