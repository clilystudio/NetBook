package com.mob.tools.gui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.design.widget.K;
import android.widget.ListView;
import com.koushikdutta.async.s;

public abstract class o extends n
{
  private k adapter;
  private boolean fling;
  private ScrollableListView listView = onNewListView(getContext());
  private K osListener$2f4f5416;

  public o(PullToRefreshView paramPullToRefreshView)
  {
    super(paramPullToRefreshView);
    this.listView.setOnScrollListener(new p(this));
    this.adapter = new k(this);
    this.listView.setAdapter(this.adapter);
  }

  public s getBodyView$660be4()
  {
    return this.listView;
  }

  public ListView getListView()
  {
    return this.listView;
  }

  public boolean isFling()
  {
    return this.fling;
  }

  public boolean isPullReady()
  {
    return this.listView.b();
  }

  public void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    this.adapter.notifyDataSetChanged();
  }

  protected ScrollableListView onNewListView(Context paramContext)
  {
    return new ScrollableListView(paramContext);
  }

  public void onScroll$1768784b(s params, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void setDivider(Drawable paramDrawable)
  {
    this.listView.setDivider(paramDrawable);
  }

  public void setDividerHeight(int paramInt)
  {
    this.listView.setDividerHeight(paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.o
 * JD-Core Version:    0.6.0
 */