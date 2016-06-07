package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ExpandableListView;
import com.handmark.pulltorefresh.library.internal.a;

class n extends ExpandableListView
  implements a
{
  public n(PullToRefreshExpandableListView paramPullToRefreshExpandableListView, Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public void setEmptyView(View paramView)
  {
    this.a.setEmptyView(paramView);
  }

  public void setEmptyViewInternal(View paramView)
  {
    super.setEmptyView(paramView);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.n
 * JD-Core Version:    0.6.0
 */