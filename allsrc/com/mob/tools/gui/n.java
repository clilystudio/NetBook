package com.mob.tools.gui;

import android.view.View;
import android.view.ViewGroup;
import com.koushikdutta.async.s;

public abstract class n extends m
{
  public n(PullToRefreshView paramPullToRefreshView)
  {
    super(paramPullToRefreshView);
  }

  public abstract int getCount();

  public abstract Object getItem(int paramInt);

  public abstract long getItemId(int paramInt);

  public int getItemViewType(int paramInt)
  {
    return 0;
  }

  public abstract View getView(int paramInt, View paramView, ViewGroup paramViewGroup);

  public int getViewTypeCount()
  {
    return 1;
  }

  public abstract boolean isFling();

  public abstract void onScroll$1768784b(s params, int paramInt1, int paramInt2, int paramInt3);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.n
 * JD-Core Version:    0.6.0
 */