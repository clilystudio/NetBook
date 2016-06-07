package com.clilystudio.netbook.ui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import com.clilystudio.netbook.ui.home.ZssqFragmentPagerAdapter;
import java.util.List;

final class av extends ZssqFragmentPagerAdapter
{
  private String[] a = { "new", "hot", "reputation", "over" };

  public av(BookCategoryListActivity paramBookCategoryListActivity, FragmentManager paramFragmentManager)
  {
    super(paramFragmentManager);
    BookCategoryListActivity.b(paramBookCategoryListActivity).add(0, paramBookCategoryListActivity.a(this.a[0]));
    BookCategoryListActivity.b(paramBookCategoryListActivity).add(1, paramBookCategoryListActivity.a(this.a[1]));
    BookCategoryListActivity.b(paramBookCategoryListActivity).add(2, paramBookCategoryListActivity.a(this.a[2]));
    BookCategoryListActivity.b(paramBookCategoryListActivity).add(3, paramBookCategoryListActivity.a(this.a[3]));
    FragmentTransaction localFragmentTransaction = paramFragmentManager.beginTransaction();
    for (int i = 0; i < 4; i++)
    {
      Fragment localFragment = (Fragment)BookCategoryListActivity.b(paramBookCategoryListActivity).get(i);
      if (localFragment.isAdded())
        continue;
      localFragmentTransaction.add(BookCategoryListActivity.c(paramBookCategoryListActivity).getId(), localFragment, this.a[i]);
    }
    if (!localFragmentTransaction.isEmpty())
    {
      localFragmentTransaction.commit();
      paramFragmentManager.executePendingTransactions();
    }
  }

  public final Fragment a(int paramInt)
  {
    return (Fragment)BookCategoryListActivity.b(this.b).get(paramInt);
  }

  protected final String b(int paramInt)
  {
    return this.a[paramInt];
  }

  public final int getCount()
  {
    return 4;
  }

  public final CharSequence getPageTitle(int paramInt)
  {
    return BookCategoryListActivity.d(this.b)[paramInt];
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.av
 * JD-Core Version:    0.6.0
 */