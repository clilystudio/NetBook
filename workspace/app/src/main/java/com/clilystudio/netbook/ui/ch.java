package com.clilystudio.netbook.ui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;
import java.util.List;

final class ch extends ZssqFragmentPagerAdapter
{
  public ch(SimpleTabActivity paramSimpleTabActivity, FragmentManager paramFragmentManager)
  {
    super(paramFragmentManager);
    for (int j = 0; j < paramSimpleTabActivity.b; j++)
      SimpleTabActivity.a(paramSimpleTabActivity).add(j, paramSimpleTabActivity.e(j));
    FragmentTransaction localFragmentTransaction = paramFragmentManager.beginTransaction();
    while (i < paramSimpleTabActivity.b)
    {
      Fragment localFragment = (Fragment)SimpleTabActivity.a(paramSimpleTabActivity).get(i);
      if (!localFragment.isAdded())
        localFragmentTransaction.add(SimpleTabActivity.b(paramSimpleTabActivity).getId(), localFragment, paramSimpleTabActivity.c[i]);
      i++;
    }
    if (!localFragmentTransaction.isEmpty())
    {
      localFragmentTransaction.commit();
      paramFragmentManager.executePendingTransactions();
    }
  }

  public final Fragment a(int paramInt)
  {
    return (Fragment)SimpleTabActivity.a(this.a).get(paramInt);
  }

  protected final String b(int paramInt)
  {
    return this.a.c[paramInt];
  }

  public final int getCount()
  {
    return this.a.b;
  }

  public final CharSequence getPageTitle(int paramInt)
  {
    return this.a.getResources().getStringArray(2131361798)[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ch
 * JD-Core Version:    0.6.0
 */