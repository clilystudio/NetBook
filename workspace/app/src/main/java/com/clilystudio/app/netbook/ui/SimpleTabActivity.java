package com.clilystudio.app.netbook.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
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
import com.clilystudio.app.netbook.widget.TabWidgetV2;
import java.util.ArrayList;
import java.util.List;

public abstract class SimpleTabActivity extends BaseTabActivity
  implements ViewPager.OnPageChangeListener, TabHost.OnTabChangeListener, TabHost.TabContentFactory
{
  protected int b = 2;
  protected String[] c = { "fragmentTag0", "fragmentTag1" };
  private ViewPager e;
  private ch f;
  private List<Fragment> g = new ArrayList();

  public final void a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.b))
      paramInt = 0;
    this.a.setCurrentTab(paramInt);
  }

  protected void b()
  {
  }

  public View createTabContent(String paramString)
  {
    View localView = new View(this);
    localView.setMinimumHeight(0);
    localView.setMinimumWidth(0);
    return localView;
  }

  public final Fragment e(int paramInt)
  {
    Fragment localFragment = getSupportFragmentManager().findFragmentByTag(this.c[paramInt]);
    if (localFragment == null)
      localFragment = i()[paramInt];
    return localFragment;
  }

  protected void f()
  {
  }

  public final boolean g()
  {
    return "tab0".equals(this.a.getCurrentTabTag());
  }

  public abstract String[] h();

  public abstract Fragment[] i();

  protected void onCreate(Bundle paramBundle)
  {
    int i = 0;
    super.onCreate(paramBundle);
    setContentView(2130903133);
    b();
    this.a = ((TabHost)findViewById(2131493096));
    TabWidgetV2 localTabWidgetV2 = (TabWidgetV2)findViewById(16908307);
    localTabWidgetV2.setItemCount(this, this.b);
    this.e = ((ViewPager)findViewById(2131493097));
    this.f = new ch(this, getSupportFragmentManager());
    this.e.setOffscreenPageLimit(this.b);
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
    int j = this.f.getCount();
    while (i < j)
    {
      TabHost.TabSpec localTabSpec = this.a.newTabSpec("tab" + i);
      localTabSpec.setContent(this);
      View localView = localLayoutInflater.inflate(2130903229, null);
      ((TextView)localView.findViewById(2131493509)).setText(h()[i]);
      localTabSpec.setIndicator(localView);
      this.a.addTab(localTabSpec);
      i++;
    }
    f();
    if (paramBundle != null)
      localTabWidgetV2.setIndex(paramBundle.getInt("extra_index"));
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

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("extra_index", this.a.getCurrentTab());
  }

  public void onTabChanged(String paramString)
  {
    int i = this.a.getCurrentTab();
    if ((i >= 0) && (i < this.f.getCount()))
      this.e.setCurrentItem(i, true);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.SimpleTabActivity
 * JD-Core Version:    0.6.2
 */