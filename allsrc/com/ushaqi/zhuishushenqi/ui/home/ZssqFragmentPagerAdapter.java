package com.ushaqi.zhuishushenqi.ui.home;

import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

public abstract class ZssqFragmentPagerAdapter extends PagerAdapter
{
  private final FragmentManager a;
  private FragmentTransaction b = null;
  private Fragment c = null;

  public ZssqFragmentPagerAdapter(FragmentManager paramFragmentManager)
  {
    this.a = paramFragmentManager;
  }

  public abstract Fragment a(int paramInt);

  protected abstract String b(int paramInt);

  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    if (this.b == null)
      this.b = this.a.beginTransaction();
    this.b.detach((Fragment)paramObject);
  }

  public void finishUpdate(ViewGroup paramViewGroup)
  {
    if (this.b != null)
    {
      this.b.commitAllowingStateLoss();
      this.b = null;
      this.a.executePendingTransactions();
    }
  }

  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    if (this.b == null)
      this.b = this.a.beginTransaction();
    String str = b(paramInt);
    Fragment localFragment = this.a.findFragmentByTag(str);
    if (localFragment != null)
      this.b.attach(localFragment);
    while (true)
    {
      if (localFragment != this.c)
      {
        localFragment.setMenuVisibility(false);
        localFragment.setUserVisibleHint(false);
      }
      return localFragment;
      localFragment = a(paramInt);
      if (!localFragment.isAdded())
      {
        this.b.add(paramViewGroup.getId(), localFragment, b(paramInt));
        continue;
      }
      this.b.show(localFragment);
    }
  }

  public boolean isViewFromObject(View paramView, Object paramObject)
  {
    return ((Fragment)paramObject).getView() == paramView;
  }

  public void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader)
  {
  }

  public Parcelable saveState()
  {
    return null;
  }

  public void setPrimaryItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    Fragment localFragment = (Fragment)paramObject;
    if (localFragment != this.c)
    {
      if (this.c != null)
      {
        this.c.setMenuVisibility(false);
        this.c.setUserVisibleHint(false);
      }
      if (localFragment != null)
      {
        localFragment.setMenuVisibility(true);
        localFragment.setUserVisibleHint(true);
      }
      this.c = localFragment;
    }
  }

  public void startUpdate(ViewGroup paramViewGroup)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.ZssqFragmentPagerAdapter
 * JD-Core Version:    0.6.0
 */