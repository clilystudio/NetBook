package com.handmark.pulltorefresh.library;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import com.handmark.pulltorefresh.library.internal.IndicatorLayout;
import com.handmark.pulltorefresh.library.internal.a;

public abstract class PullToRefreshAdapterViewBase<T extends AbsListView> extends PullToRefreshBase<T>
  implements AbsListView.OnScrollListener
{
  protected boolean a;
  private AbsListView.OnScrollListener c;
  private j d;
  private View e;
  private IndicatorLayout f;
  private IndicatorLayout g;
  private boolean h;
  private boolean i = true;

  public PullToRefreshAdapterViewBase(Context paramContext)
  {
    super(paramContext);
    ((AbsListView)this.b).setOnScrollListener(this);
  }

  public PullToRefreshAdapterViewBase(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ((AbsListView)this.b).setOnScrollListener(this);
  }

  public PullToRefreshAdapterViewBase(Context paramContext, PullToRefreshBase.Mode paramMode)
  {
    super(paramContext, paramMode);
    ((AbsListView)this.b).setOnScrollListener(this);
  }

  public PullToRefreshAdapterViewBase(Context paramContext, PullToRefreshBase.Mode paramMode, PullToRefreshBase.AnimationStyle paramAnimationStyle)
  {
    super(paramContext, paramMode, paramAnimationStyle);
    ((AbsListView)this.b).setOnScrollListener(this);
  }

  private void v()
  {
    PullToRefreshBase.Mode localMode = g();
    FrameLayout localFrameLayout = u();
    if ((localMode.showHeaderLoadingLayout()) && (this.f == null))
    {
      this.f = new IndicatorLayout(getContext(), PullToRefreshBase.Mode.PULL_FROM_START);
      FrameLayout.LayoutParams localLayoutParams2 = new FrameLayout.LayoutParams(-2, -2);
      localLayoutParams2.rightMargin = getResources().getDimensionPixelSize(R.dimen.indicator_right_padding);
      localLayoutParams2.gravity = 53;
      localFrameLayout.addView(this.f, localLayoutParams2);
    }
    do
      while ((localMode.showFooterLoadingLayout()) && (this.g == null))
      {
        this.g = new IndicatorLayout(getContext(), PullToRefreshBase.Mode.PULL_FROM_END);
        FrameLayout.LayoutParams localLayoutParams1 = new FrameLayout.LayoutParams(-2, -2);
        localLayoutParams1.rightMargin = getResources().getDimensionPixelSize(R.dimen.indicator_right_padding);
        localLayoutParams1.gravity = 85;
        localFrameLayout.addView(this.g, localLayoutParams1);
        return;
        if ((localMode.showHeaderLoadingLayout()) || (this.f == null))
          continue;
        localFrameLayout.removeView(this.f);
        this.f = null;
      }
    while ((localMode.showFooterLoadingLayout()) || (this.g == null));
    localFrameLayout.removeView(this.g);
    this.g = null;
  }

  private boolean w()
  {
    return (this.h) && (k());
  }

  private void x()
  {
    if (this.f != null)
    {
      u().removeView(this.f);
      this.f = null;
    }
    if (this.g != null)
    {
      u().removeView(this.g);
      this.g = null;
    }
  }

  private void y()
  {
    if (this.f != null)
    {
      if ((m()) || (!c()))
        break label77;
      if (!this.f.a())
        this.f.c();
    }
    label77: 
    do
      while (true)
      {
        if (this.g != null)
        {
          if ((m()) || (!d()))
            break;
          if (!this.g.a())
            this.g.c();
        }
        return;
        if (!this.f.a())
          continue;
        this.f.b();
      }
    while (!this.g.a());
    this.g.b();
  }

  protected final void a()
  {
    super.a();
    if (w());
    switch (d.a[f().ordinal()])
    {
    default:
      return;
    case 1:
      this.g.e();
      return;
    case 2:
    }
    this.f.e();
  }

  protected void a(TypedArray paramTypedArray)
  {
    int j = R.styleable.PullToRefresh_ptrShowIndicator;
    if (!l());
    for (boolean bool = true; ; bool = false)
    {
      this.h = paramTypedArray.getBoolean(j, bool);
      return;
    }
  }

  protected void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
    if (w())
      y();
  }

  protected final void b()
  {
    super.b();
    if (w());
    switch (d.a[f().ordinal()])
    {
    default:
      return;
    case 1:
      this.g.d();
      return;
    case 2:
    }
    this.f.d();
  }

  protected void b(boolean paramBoolean)
  {
    super.b(paramBoolean);
    if (w())
      y();
  }

  protected final boolean c()
  {
    Adapter localAdapter = ((AbsListView)this.b).getAdapter();
    int j;
    if ((localAdapter == null) || (localAdapter.isEmpty()))
      j = 1;
    int m;
    int n;
    do
    {
      return j;
      if (((AbsListView)this.b).getFirstVisiblePosition() > 1)
        break;
      View localView = ((AbsListView)this.b).getChildAt(0);
      if (localView == null)
        break;
      m = localView.getTop();
      n = ((AbsListView)this.b).getTop();
      j = 0;
    }
    while (m < n);
    for (int k = 1; ; k = 0)
      return k;
  }

  protected final boolean d()
  {
    Adapter localAdapter = ((AbsListView)this.b).getAdapter();
    int j;
    if ((localAdapter == null) || (localAdapter.isEmpty()))
      j = 1;
    int i2;
    int i3;
    do
    {
      return j;
      int k = -1 + ((AbsListView)this.b).getCount();
      int m = ((AbsListView)this.b).getLastVisiblePosition();
      if (m < k - 1)
        break;
      int i1 = m - ((AbsListView)this.b).getFirstVisiblePosition();
      View localView = ((AbsListView)this.b).getChildAt(i1);
      if (localView == null)
        break;
      i2 = localView.getBottom();
      i3 = ((AbsListView)this.b).getBottom();
      j = 0;
    }
    while (i2 > i3);
    for (int n = 1; ; n = 0)
      return n;
  }

  protected final void e()
  {
    super.e();
    if (w())
    {
      v();
      return;
    }
    x();
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.d != null)
      if ((paramInt3 <= 0) || (paramInt1 + paramInt2 < paramInt3 - 1))
        break label64;
    label64: for (boolean bool = true; ; bool = false)
    {
      this.a = bool;
      if (w())
        y();
      if (this.c != null)
        this.c.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
      return;
    }
  }

  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((this.e != null) && (!this.i))
      this.e.scrollTo(-paramInt1, -paramInt2);
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((paramInt == 0) && (this.d != null) && (this.a))
      this.d.a();
    if (this.c != null)
      this.c.onScrollStateChanged(paramAbsListView, paramInt);
  }

  public void setAdapter(ListAdapter paramListAdapter)
  {
    ((AdapterView)this.b).setAdapter(paramListAdapter);
  }

  public final void setEmptyView(View paramView)
  {
    FrameLayout localFrameLayout = u();
    FrameLayout.LayoutParams localLayoutParams1;
    FrameLayout.LayoutParams localLayoutParams2;
    if (paramView != null)
    {
      paramView.setClickable(true);
      ViewParent localViewParent = paramView.getParent();
      if ((localViewParent != null) && ((localViewParent instanceof ViewGroup)))
        ((ViewGroup)localViewParent).removeView(paramView);
      ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
      if (localLayoutParams == null)
        break label162;
      localLayoutParams1 = new FrameLayout.LayoutParams(localLayoutParams);
      if (!(localLayoutParams instanceof LinearLayout.LayoutParams))
        break label126;
      localLayoutParams1.gravity = ((LinearLayout.LayoutParams)localLayoutParams).gravity;
      localLayoutParams2 = localLayoutParams1;
    }
    while (true)
    {
      if (localLayoutParams2 != null)
      {
        localFrameLayout.addView(paramView, localLayoutParams2);
        label97: if (!(this.b instanceof a))
          break label148;
        ((a)this.b).setEmptyViewInternal(paramView);
      }
      while (true)
      {
        this.e = paramView;
        return;
        label126: localLayoutParams1.gravity = 17;
        localLayoutParams2 = localLayoutParams1;
        break;
        localFrameLayout.addView(paramView);
        break label97;
        label148: ((AbsListView)this.b).setEmptyView(paramView);
      }
      label162: localLayoutParams2 = null;
    }
  }

  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    ((AbsListView)this.b).setOnItemClickListener(paramOnItemClickListener);
  }

  public final void setOnLastItemVisibleListener(j paramj)
  {
    this.d = paramj;
  }

  public final void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.c = paramOnScrollListener;
  }

  public final void setScrollEmptyView(boolean paramBoolean)
  {
    this.i = paramBoolean;
  }

  public void setShowIndicator(boolean paramBoolean)
  {
    this.h = paramBoolean;
    if (w())
    {
      v();
      return;
    }
    x();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.PullToRefreshAdapterViewBase
 * JD-Core Version:    0.6.0
 */