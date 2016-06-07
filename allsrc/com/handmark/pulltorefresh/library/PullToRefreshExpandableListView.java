package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ExpandableListView;

public class PullToRefreshExpandableListView extends PullToRefreshAdapterViewBase<ExpandableListView>
{
  public PullToRefreshExpandableListView(Context paramContext)
  {
    super(paramContext);
  }

  public PullToRefreshExpandableListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public final PullToRefreshBase.Orientation o()
  {
    return PullToRefreshBase.Orientation.VERTICAL;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshExpandableListView
 * JD-Core Version:    0.6.0
 */