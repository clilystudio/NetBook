package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.handmark.pulltorefresh.library.internal.LoadingLayout;

public class PullToRefreshListView extends PullToRefreshAdapterViewBase<ListView>
{
  private LoadingLayout c;
  private LoadingLayout d;
  private FrameLayout e;
  private boolean f;

  public PullToRefreshListView(Context paramContext)
  {
    super(paramContext);
  }

  public PullToRefreshListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public PullToRefreshListView(Context paramContext, PullToRefreshBase.Mode paramMode)
  {
    super(paramContext, paramMode);
  }

  public PullToRefreshListView(Context paramContext, PullToRefreshBase.Mode paramMode, PullToRefreshBase.AnimationStyle paramAnimationStyle)
  {
    super(paramContext, paramMode, paramAnimationStyle);
  }

  protected final b a(boolean paramBoolean1, boolean paramBoolean2)
  {
    b localb = super.a(paramBoolean1, paramBoolean2);
    if (this.f)
    {
      PullToRefreshBase.Mode localMode = g();
      if ((paramBoolean1) && (localMode.showHeaderLoadingLayout()))
        localb.a(this.c);
      if ((paramBoolean2) && (localMode.showFooterLoadingLayout()))
        localb.a(this.d);
    }
    return localb;
  }

  protected final void a(TypedArray paramTypedArray)
  {
    super.a(paramTypedArray);
    this.f = paramTypedArray.getBoolean(R.styleable.PullToRefresh_ptrListViewExtrasEnabled, true);
    if (this.f)
    {
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -2, 1);
      FrameLayout localFrameLayout = new FrameLayout(getContext());
      this.c = a(getContext(), PullToRefreshBase.Mode.PULL_FROM_START, paramTypedArray);
      this.c.setVisibility(8);
      localFrameLayout.addView(this.c, localLayoutParams);
      ((ListView)this.b).addHeaderView(localFrameLayout, null, false);
      this.e = new FrameLayout(getContext());
      this.d = a(getContext(), PullToRefreshBase.Mode.PULL_FROM_END, paramTypedArray);
      this.d.setVisibility(8);
      this.e.addView(this.d, localLayoutParams);
      if (!paramTypedArray.hasValue(R.styleable.PullToRefresh_ptrScrollingWhileRefreshingEnabled))
        setScrollingWhileRefreshingEnabled(true);
    }
  }

  protected final void a(boolean paramBoolean)
  {
    ListAdapter localListAdapter = ((ListView)this.b).getAdapter();
    if ((!this.f) || (!i()) || (localListAdapter == null) || (localListAdapter.isEmpty()))
    {
      super.a(paramBoolean);
      return;
    }
    super.a(false);
    int j;
    LoadingLayout localLoadingLayout1;
    LoadingLayout localLoadingLayout2;
    LoadingLayout localLoadingLayout3;
    int i;
    switch (s.a[f().ordinal()])
    {
    default:
      LoadingLayout localLoadingLayout4 = s();
      LoadingLayout localLoadingLayout5 = this.c;
      LoadingLayout localLoadingLayout6 = this.d;
      j = getScrollY() + t();
      localLoadingLayout1 = localLoadingLayout4;
      localLoadingLayout2 = localLoadingLayout5;
      localLoadingLayout3 = localLoadingLayout6;
      i = 0;
    case 1:
    case 2:
    }
    while (true)
    {
      localLoadingLayout1.k();
      localLoadingLayout1.g();
      localLoadingLayout3.setVisibility(8);
      localLoadingLayout2.setVisibility(0);
      localLoadingLayout2.i();
      if (!paramBoolean)
        break;
      p();
      a(j);
      ((ListView)this.b).setSelection(i);
      b(0);
      return;
      localLoadingLayout1 = q();
      localLoadingLayout2 = this.d;
      localLoadingLayout3 = this.c;
      i = -1 + ((ListView)this.b).getCount();
      j = getScrollY() - r();
    }
  }

  protected final void b(boolean paramBoolean)
  {
    int i = 0;
    int j = 1;
    if (!this.f)
    {
      super.b(this.a);
      return;
    }
    LoadingLayout localLoadingLayout3;
    LoadingLayout localLoadingLayout4;
    int i2;
    switch (s.a[f().ordinal()])
    {
    default:
      localLoadingLayout3 = s();
      localLoadingLayout4 = this.c;
      i2 = -t();
      if (Math.abs(((ListView)this.b).getFirstVisiblePosition()) > j)
        break;
    case 1:
    case 2:
    }
    while (true)
    {
      int n = j;
      int i1 = i2;
      Object localObject1 = localLoadingLayout4;
      Object localObject2 = localLoadingLayout3;
      if (((LoadingLayout)localObject1).getVisibility() == 0)
      {
        ((LoadingLayout)localObject2).l();
        ((LoadingLayout)localObject1).setVisibility(8);
        if ((n != 0) && (j() != PullToRefreshBase.State.MANUAL_REFRESHING))
        {
          ((ListView)this.b).setSelection(i);
          a(i1);
        }
      }
      super.b(this.a);
      return;
      LoadingLayout localLoadingLayout1 = q();
      LoadingLayout localLoadingLayout2 = this.d;
      int k = -1 + ((ListView)this.b).getCount();
      int m = r();
      if (Math.abs(((ListView)this.b).getLastVisiblePosition() - k) <= j);
      for (n = j; ; n = 0)
      {
        i = k;
        i1 = m;
        localObject1 = localLoadingLayout2;
        localObject2 = localLoadingLayout1;
        break;
      }
      j = 0;
    }
  }

  public final PullToRefreshBase.Orientation o()
  {
    return PullToRefreshBase.Orientation.VERTICAL;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshListView
 * JD-Core Version:    0.6.0
 */