package android.support.v7.internal.widget;

import android.support.v7.app.c;
import android.support.v7.widget.LinearLayoutCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

final class K extends BaseAdapter
{
  private K(ScrollingTabContainerView paramScrollingTabContainerView)
  {
  }

  public final int getCount()
  {
    return ScrollingTabContainerView.a(this.a).getChildCount();
  }

  public final Object getItem(int paramInt)
  {
    return ((M)ScrollingTabContainerView.a(this.a).getChildAt(paramInt)).a();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      return ScrollingTabContainerView.a(this.a, (c)getItem(paramInt), true);
    ((M)paramView).a((c)getItem(paramInt));
    return paramView;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.K
 * JD-Core Version:    0.6.0
 */