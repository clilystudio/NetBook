package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListView;

public class ScrollLoadListView extends ListView
  implements AbsListView.OnScrollListener
{
  private av a;
  private boolean b;

  public ScrollLoadListView(Context paramContext)
  {
    super(paramContext);
    setOnScrollListener(this);
  }

  public ScrollLoadListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOnScrollListener(this);
  }

  public ScrollLoadListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setOnScrollListener(this);
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.a != null)
      if ((paramInt3 <= 0) || (paramInt1 + paramInt2 < paramInt3 - 1))
        break label32;
    label32: for (boolean bool = true; ; bool = false)
    {
      this.b = bool;
      return;
    }
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((this.a != null) && (this.b) && (paramInt == 0))
      this.a.a();
  }

  public void setOnLastItemListener(av paramav)
  {
    this.a = paramav;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.ScrollLoadListView
 * JD-Core Version:    0.6.0
 */