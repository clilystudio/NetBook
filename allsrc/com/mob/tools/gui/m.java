package com.mob.tools.gui;

import android.content.Context;
import android.view.View;
import com.koushikdutta.async.s;

public abstract class m
{
  private Context context;
  private PullToRefreshView parent;

  public m(PullToRefreshView paramPullToRefreshView)
  {
    this.context = paramPullToRefreshView.getContext();
    this.parent = paramPullToRefreshView;
  }

  public abstract s getBodyView$660be4();

  public Context getContext()
  {
    return this.context;
  }

  public abstract View getHeaderView();

  protected PullToRefreshView getParent()
  {
    return this.parent;
  }

  public abstract boolean isPullReady();

  public void notifyDataSetChanged()
  {
    this.parent.a();
  }

  public abstract void onPullDown(int paramInt);

  public abstract void onRequest();

  public void onReversed()
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.m
 * JD-Core Version:    0.6.0
 */