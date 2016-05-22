package com.clilystudio.app.netbook.ui.post;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.design.widget.FloatingActionButton;
import com.clilystudio.app.netbook.am_CommonUtils;
import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabContentFactory;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import android.widget.TextView;
import com.clilystudio.app.netbook.d;
import com.clilystudio.app.netbook.ui.BaseTabActivity;
import com.clilystudio.app.netbook.util.am_CommonUtils;

import java.util.ArrayList;
import java.util.List;

public class TweetTabActivity extends BaseTabActivity
  implements ViewPager.OnPageChangeListener, TabHost.OnTabChangeListener, TabHost.TabContentFactory
{
  private List<Fragment> b = new ArrayList();
  private ViewPager c;
  private dV e;
  private RelativeLayout f;
  private RelativeLayout g;
  private LinearLayout h;
  private LinearLayout i;
  private FloatingActionButton j;
  private FloatingActionButton k;
  private FloatingActionButton l;
  private FloatingActionButton m;
  private View n;
  private boolean o = false;

  public static Intent a(Context paramContext)
  {
    return new d().a(paramContext, TweetTabActivity.class).a();
  }

  private void b()
  {
    this.f.setOnClickListener(new dT(this));
  }

  private void f()
  {
    int i1 = com.arcsoft.hpay100.a.a.a(this, 18.0F);
    int i2 = com.arcsoft.hpay100.a.a.a(this, 36.0F);
    this.f.setVisibility(4);
    this.n.setVisibility(4);
    com.c.b.a.a(this.i).c(0.0F).b(i1).a(150L).a(new DecelerateInterpolator()).a();
    com.c.b.a.a(this.h).c(0.0F).b(i2).a(150L).a(new DecelerateInterpolator()).b(100L).a();
    com.c.b.a.a(this.j).a(0.0F).a(150L).a(new AccelerateDecelerateInterpolator()).a();
    new Handler().postDelayed(new dU(this), 150L);
  }

  public View createTabContent(String paramString)
  {
    View localView = new View(this);
    localView.setMinimumHeight(0);
    localView.setMinimumWidth(0);
    return localView;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903134);
    b(2131034546);
    this.n = a().a().findViewById(2131493017);
    this.f = ((RelativeLayout)findViewById(2131493222));
    this.g = ((RelativeLayout)findViewById(2131493223));
    findViewById(2131493579);
    this.h = ((LinearLayout)findViewById(2131493583));
    findViewById(2131493585);
    this.i = ((LinearLayout)findViewById(2131493581));
    this.j = ((FloatingActionButton)findViewById(2131493580));
    this.k = ((FloatingActionButton)findViewById(2131493584));
    this.l = ((FloatingActionButton)findViewById(2131493586));
    this.m = ((FloatingActionButton)findViewById(2131493582));
    this.j.setOnClickListener(new dP(this));
    this.m.setOnClickListener(new dQ(this));
    this.k.setOnClickListener(new dR(this));
    this.l.setOnClickListener(new dS(this));
    b();
    f();
    this.a = ((TabHost)findViewById(2131493096));
    this.c = ((ViewPager)findViewById(2131493097));
    this.e = new dV(this, getSupportFragmentManager());
    this.c.setOffscreenPageLimit(3);
    this.c.setAdapter(this.e);
    this.c.addOnPageChangeListener(this);
    this.a.setup();
    this.a.setOnTabChangedListener(this);
    if (this.a.getTabWidget().getTabCount() > 0)
    {
      this.a.setCurrentTab(0);
      this.a.clearAllTabs();
    }
    LayoutInflater localLayoutInflater = getLayoutInflater();
    int i1 = this.e.getCount();
    for (int i2 = 0; i2 < i1; i2++)
    {
      TabHost.TabSpec localTabSpec = this.a.newTabSpec("tab" + i2);
      localTabSpec.setContent(this);
      View localView = localLayoutInflater.inflate(2130903229, null);
      ((TextView)localView.findViewById(2131493509)).setText((String)this.e.getPageTitle(i2));
      localTabSpec.setIndicator(localView);
      this.a.addTab(localTabSpec);
    }
    if (am_CommonUtils.e() == null)
      this.a.setCurrentTab(1);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
  }

  public void onPageScrollStateChanged(int paramInt)
  {
  }

  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    a(paramInt1, paramInt2);
  }

  public void onPageSelected(int paramInt)
  {
    TabWidget localTabWidget = this.a.getTabWidget();
    int i1 = localTabWidget.getDescendantFocusability();
    localTabWidget.setDescendantFocusability(393216);
    this.a.setCurrentTab(paramInt);
    localTabWidget.setDescendantFocusability(i1);
  }

  public void onTabChanged(String paramString)
  {
    int i1 = this.a.getCurrentTab();
    if ((i1 >= 0) && (i1 < this.e.getCount()))
      this.c.setCurrentItem(i1, true);
    if (i1 != 0)
    {
      this.g.setVisibility(4);
      return;
    }
    this.g.setVisibility(0);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.TweetTabActivity
 * JD-Core Version:    0.6.2
 */