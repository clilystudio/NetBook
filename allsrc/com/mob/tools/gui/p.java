package com.mob.tools.gui;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

final class p
  implements AbsListView.OnScrollListener
{
  private int a;
  private int b;

  p(o paramo)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c.onScroll$1768784b(o.access$300(this.c), paramInt1, paramInt2, paramInt3);
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    o localo = this.c;
    boolean bool;
    if (paramInt == 2)
    {
      bool = true;
      o.access$002(localo, bool);
      if (paramInt == 0)
      {
        if (o.access$100$fc16149(this.c) == null)
          break label49;
        o.access$100$fc16149(this.c);
      }
    }
    label49: 
    do
    {
      return;
      bool = false;
      break;
    }
    while (o.access$200(this.c) == null);
    o.access$200(this.c).notifyDataSetChanged();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.p
 * JD-Core Version:    0.6.0
 */