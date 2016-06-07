package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;

public class PullToRefreshScrollView extends PullToRefreshBase<ScrollView>
{
  public PullToRefreshScrollView(Context paramContext)
  {
    super(paramContext);
  }

  public PullToRefreshScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected final boolean c()
  {
    return ((ScrollView)this.b).getScrollY() == 0;
  }

  protected final boolean d()
  {
    View localView = ((ScrollView)this.b).getChildAt(0);
    if (localView != null)
      return ((ScrollView)this.b).getScrollY() >= localView.getHeight() - getHeight();
    return false;
  }

  public final PullToRefreshBase.Orientation o()
  {
    return PullToRefreshBase.Orientation.VERTICAL;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshScrollView
 * JD-Core Version:    0.6.0
 */