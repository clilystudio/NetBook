package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.handmark.pulltorefresh.library.internal.a;

public class PullToRefreshListView$InternalListView extends ListView
  implements a
{
  private boolean a = false;

  public PullToRefreshListView$InternalListView(PullToRefreshListView paramPullToRefreshListView, Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    try
    {
      super.dispatchDraw(paramCanvas);
      return;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      localIndexOutOfBoundsException.printStackTrace();
    }
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    try
    {
      boolean bool = super.dispatchTouchEvent(paramMotionEvent);
      return bool;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      localIndexOutOfBoundsException.printStackTrace();
    }
    return false;
  }

  public void setAdapter(ListAdapter paramListAdapter)
  {
    if ((PullToRefreshListView.a(this.b) != null) && (!this.a))
    {
      addFooterView(PullToRefreshListView.a(this.b), null, false);
      this.a = true;
    }
    super.setAdapter(paramListAdapter);
  }

  public void setEmptyView(View paramView)
  {
    this.b.setEmptyView(paramView);
  }

  public void setEmptyViewInternal(View paramView)
  {
    super.setEmptyView(paramView);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshListView.InternalListView
 * JD-Core Version:    0.6.0
 */