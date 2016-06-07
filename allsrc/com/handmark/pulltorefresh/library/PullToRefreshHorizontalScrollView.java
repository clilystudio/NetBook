package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.HorizontalScrollView;

public class PullToRefreshHorizontalScrollView extends PullToRefreshBase<HorizontalScrollView>
{
  public PullToRefreshHorizontalScrollView(Context paramContext)
  {
    super(paramContext);
  }

  public PullToRefreshHorizontalScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected final boolean c()
  {
    return ((HorizontalScrollView)this.b).getScrollX() == 0;
  }

  protected final boolean d()
  {
    View localView = ((HorizontalScrollView)this.b).getChildAt(0);
    if (localView != null)
      return ((HorizontalScrollView)this.b).getScrollX() >= localView.getWidth() - getWidth();
    return false;
  }

  public final PullToRefreshBase.Orientation o()
  {
    return PullToRefreshBase.Orientation.HORIZONTAL;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshHorizontalScrollView
 * JD-Core Version:    0.6.0
 */