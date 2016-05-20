package com.clilystudio.app.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabContentFactory;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import android.widget.TextView;
import com.clilystudio.app.netbook.d;
import com.clilystudio.app.netbook.ui.BaseTabActivity;
import java.util.ArrayList;
import java.util.List;

public class PayVoucherActivity extends BaseTabActivity
  implements ViewPager.OnPageChangeListener, TabHost.OnTabChangeListener, TabHost.TabContentFactory
{
  String[] b;
  private List<PayVoucherFragment> c = new ArrayList();
  private ViewPager e;
  private aa f;
  private String g;

  public static Intent a(Context paramContext, String paramString)
  {
    return new d().a(paramContext, PayVoucherActivity.class).a("token_key", paramString).a();
  }

  public final PayVoucherFragment a(int paramInt)
  {
    PayVoucherFragment localPayVoucherFragment = (PayVoucherFragment)getSupportFragmentManager().findFragmentByTag(this.b[paramInt]);
    if (localPayVoucherFragment == null)
      localPayVoucherFragment = PayVoucherFragment.a(this.g, paramInt);
    return localPayVoucherFragment;
  }

  public View createTabContent(String paramString)
  {
    View localView = new View(this);
    localView.setMinimumHeight(0);
    localView.setMinimumWidth(0);
    return localView;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903119);
    this.g = getIntent().getStringExtra("token_key");
    this.b = getResources().getStringArray(2131361801);
    b("追书券");
    this.a = ((TabHost)findViewById(2131493096));
    this.e = ((ViewPager)findViewById(2131493097));
    this.f = new aa(this, getSupportFragmentManager());
    this.e.setOffscreenPageLimit(3);
    this.e.setAdapter(this.f);
    this.e.setOnPageChangeListener(this);
    this.a.setup();
    this.a.setOnTabChangedListener(this);
    if (this.a.getTabWidget().getTabCount() > 0)
    {
      this.a.setCurrentTab(0);
      this.a.clearAllTabs();
    }
    LayoutInflater localLayoutInflater = getLayoutInflater();
    int i = this.f.getCount();
    for (int j = 0; j < i; j++)
    {
      TabHost.TabSpec localTabSpec = this.a.newTabSpec("tab" + j);
      localTabSpec.setContent(this);
      View localView = localLayoutInflater.inflate(2130903229, null);
      ((TextView)localView.findViewById(2131493509)).setText((String)this.f.getPageTitle(j));
      localTabSpec.setIndicator(localView);
      this.a.addTab(localTabSpec);
    }
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
    int i = localTabWidget.getDescendantFocusability();
    localTabWidget.setDescendantFocusability(393216);
    this.a.setCurrentTab(paramInt);
    localTabWidget.setDescendantFocusability(i);
  }

  public void onTabChanged(String paramString)
  {
    int i = this.a.getCurrentTab();
    if ((i >= 0) && (i < this.f.getCount()))
      this.e.setCurrentItem(i, true);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.PayVoucherActivity
 * JD-Core Version:    0.6.2
 */