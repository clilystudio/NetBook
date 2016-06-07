package com.mob.tools.gui;

import android.view.View;
import android.view.ViewGroup;

public abstract class u
{
  private MobViewPager parent;

  public abstract int getCount();

  public abstract View getView(int paramInt, View paramView, ViewGroup paramViewGroup);

  public void invalidate()
  {
    if (this.parent != null)
      this.parent.setAdapter(this);
  }

  public void onScreenChange(int paramInt1, int paramInt2)
  {
  }

  final void setMobViewPager(MobViewPager paramMobViewPager)
  {
    this.parent = paramMobViewPager;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.u
 * JD-Core Version:    0.6.0
 */