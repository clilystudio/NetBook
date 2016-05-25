package com.clilystudio.app.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import com.arcsoft.hpay100.a.a;
import com.umeng.a.b;
import com.clilystudio.app.netbook.d_IntentFactory;
import com.clilystudio.app.netbook.model.CategoryLevelRoot;
import com.clilystudio.app.netbook.model.CategoryLevelRoot.CategoryLevel;
import java.util.ArrayList;
import java.util.List;

public class BookCategoryListActivity extends BaseTabActivity
  implements ViewPager.OnPageChangeListener, TabHost.OnTabChangeListener, TabHost.TabContentFactory
{
  private boolean b;
  private String c;
  private String e;
  private PopupWindow f;
  private aw g;
  private boolean h;
  private String[] i;
  private List<BookCategoryFragment> j = new ArrayList();
  private ViewPager k;
  private av l;

  public static Intent a(Context paramContext, boolean paramBoolean, String paramString)
  {
    return new d_IntentFactory().a_setClass(paramContext, BookCategoryListActivity.class).a_putExtra("CATEGORY_GENDER", Boolean.valueOf(paramBoolean)).a_putExtra("CATEGORY_KEY", paramString).a();
  }

  private String[] a(CategoryLevelRoot paramCategoryLevelRoot)
  {
    CategoryLevelRoot.CategoryLevel[] arrayOfCategoryLevel;
    int m;
    if (this.b)
    {
      arrayOfCategoryLevel = paramCategoryLevelRoot.getMale();
      m = arrayOfCategoryLevel.length;
    }
    for (int n = 0; ; n++)
    {
      if (n >= m)
        break label65;
      CategoryLevelRoot.CategoryLevel localCategoryLevel = arrayOfCategoryLevel[n];
      if (localCategoryLevel.getMajor().equals(this.c))
      {
        return localCategoryLevel.getMins();
        arrayOfCategoryLevel = paramCategoryLevelRoot.getFemale();
        break;
      }
    }
    label65: return new String[0];
  }

  private void h()
  {
    if (this.a.getTabWidget().getTabCount() > 0)
    {
      this.a.setCurrentTab(0);
      this.a.clearAllTabs();
    }
    LayoutInflater localLayoutInflater = getLayoutInflater();
    int m = this.l.getCount();
    for (int n = 0; n < m; n++)
    {
      TabHost.TabSpec localTabSpec = this.a.newTabSpec("tab" + n);
      localTabSpec.setContent(this);
      View localView = localLayoutInflater.inflate(2130903229, null);
      ((TextView)localView.findViewById(2131493509)).setText((String)this.l.getPageTitle(n));
      localTabSpec.setIndicator(localView);
      this.a.addTab(localTabSpec);
    }
  }

  private void i()
  {
    if ((this.f != null) && (this.f.isShowing()))
      this.f.dismiss();
    e("筛选");
  }

  public final BookCategoryFragment a(String paramString)
  {
    BookCategoryFragment localBookCategoryFragment = (BookCategoryFragment)getSupportFragmentManager().findFragmentByTag(paramString);
    if (localBookCategoryFragment == null)
      localBookCategoryFragment = BookCategoryFragment.a(paramString);
    return localBookCategoryFragment;
  }

  public final String b()
  {
    if (this.b)
      return "male";
    return "female";
  }

  public View createTabContent(String paramString)
  {
    View localView = new View(this);
    localView.setMinimumHeight(0);
    localView.setMinimumWidth(0);
    return localView;
  }

  public final String f()
  {
    return this.c;
  }

  public final String g()
  {
    if (this.e.equals(this.c))
      return "";
    return this.e;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903085);
    this.b = getIntent().getBooleanExtra("CATEGORY_GENDER", false);
    this.c = getIntent().getStringExtra("CATEGORY_KEY");
    this.e = this.c;
    this.i = getResources().getStringArray(2131361793);
    View localView = LayoutInflater.from(this).inflate(2130903175, null);
    PopupWindow localPopupWindow = new PopupWindow(localView, -1, -1);
    localPopupWindow.setFocusable(true);
    localPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
    localPopupWindow.setOutsideTouchable(true);
    localPopupWindow.setOnDismissListener(new au(this));
    this.f = localPopupWindow;
    String[] arrayOfString1 = new String[0];
    CategoryLevelRoot localCategoryLevelRoot = (CategoryLevelRoot)a.k(c.f, "category_level.txt");
    if (localCategoryLevelRoot != null);
    for (String[] arrayOfString2 = a(localCategoryLevelRoot); ; arrayOfString2 = arrayOfString1)
    {
      String[] arrayOfString3 = new String[1 + arrayOfString2.length];
      arrayOfString3[0] = this.c;
      for (int m = 0; m < arrayOfString2.length; m++)
        arrayOfString3[(m + 1)] = arrayOfString2[m];
      int n = arrayOfString3.length;
      boolean bool = false;
      if (n == 1)
        bool = true;
      this.h = bool;
      localView.findViewById(2131493373).setOnClickListener(new as(this));
      ListView localListView = (ListView)localView.findViewById(2131493374);
      this.g = new aw(this, this, arrayOfString3);
      localListView.setAdapter(this.g);
      localListView.setOnItemClickListener(new at(this, arrayOfString3));
      if (this.h)
        b(this.c);
      while (true)
      {
        this.a = ((TabHost)findViewById(2131493096));
        this.k = ((ViewPager)findViewById(2131493097));
        this.l = new av(this, getSupportFragmentManager());
        this.k.setOffscreenPageLimit(4);
        this.k.setAdapter(this.l);
        this.k.setOnPageChangeListener(this);
        this.a.setup();
        this.a.setOnTabChangedListener(this);
        h();
        return;
        a(this.c, "筛选", new ar(this));
      }
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
    int m = localTabWidget.getDescendantFocusability();
    localTabWidget.setDescendantFocusability(393216);
    this.a.setCurrentTab(paramInt);
    localTabWidget.setDescendantFocusability(m);
  }

  public void onPause()
  {
    super.onPause();
    if (!this.h)
      i();
  }

  public void onTabChanged(String paramString)
  {
    int m = this.a.getCurrentTab();
    if ((m >= 0) && (m < this.l.getCount()))
    {
      this.k.setCurrentItem(m, true);
      b.a(this, "book_category_tab_click", this.i[m]);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.BookCategoryListActivity
 * JD-Core Version:    0.6.2
 */