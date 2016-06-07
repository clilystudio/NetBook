package com.handmark.pulltorefresh.library;

import android.annotation.TargetApi;
import android.graphics.drawable.Drawable;
import com.handmark.pulltorefresh.library.internal.LoadingLayout;
import java.util.HashSet;
import java.util.Iterator;

@TargetApi(9)
public class b
  implements a
{
  private final HashSet<LoadingLayout> a = new HashSet();

  public static void a(PullToRefreshBase<?> paramPullToRefreshBase, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, float paramFloat, boolean paramBoolean)
  {
    int i;
    PullToRefreshBase.Mode localMode;
    int j;
    switch (c.a[paramPullToRefreshBase.o().ordinal()])
    {
    default:
      i = paramPullToRefreshBase.getScrollY();
      paramInt2 = paramInt4;
      paramInt1 = paramInt3;
      if ((!paramPullToRefreshBase.l()) || (paramPullToRefreshBase.m()))
        break;
      localMode = paramPullToRefreshBase.g();
      if ((localMode.permitsPullToRefresh()) && (!paramBoolean) && (paramInt1 != 0))
      {
        j = paramInt1 + paramInt2;
        if (j < 0 - paramInt6)
        {
          if (!localMode.showHeaderLoadingLayout())
            break;
          if (i == 0)
            paramPullToRefreshBase.a(PullToRefreshBase.State.OVERSCROLLING, new boolean[0]);
          paramPullToRefreshBase.a((int)(paramFloat * (i + j)));
        }
      }
    case 1:
    }
    label188: 
    do
    {
      do
      {
        do
        {
          return;
          i = paramPullToRefreshBase.getScrollX();
          break;
          if (j <= paramInt5 + paramInt6)
            break label188;
        }
        while (!localMode.showFooterLoadingLayout());
        if (i == 0)
          paramPullToRefreshBase.a(PullToRefreshBase.State.OVERSCROLLING, new boolean[0]);
        paramPullToRefreshBase.a((int)(paramFloat * (i + j - paramInt5)));
        return;
      }
      while ((Math.abs(j) > paramInt6) && (Math.abs(j - paramInt5) > paramInt6));
      paramPullToRefreshBase.a(PullToRefreshBase.State.RESET, new boolean[0]);
      return;
    }
    while ((!paramBoolean) || (PullToRefreshBase.State.OVERSCROLLING != paramPullToRefreshBase.j()));
    paramPullToRefreshBase.a(PullToRefreshBase.State.RESET, new boolean[0]);
  }

  public static void a(PullToRefreshBase<?> paramPullToRefreshBase, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, boolean paramBoolean)
  {
    a(paramPullToRefreshBase, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, 0, 1.0F, paramBoolean);
  }

  public static void a(PullToRefreshBase<?> paramPullToRefreshBase, int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    a(paramPullToRefreshBase, paramInt1, paramInt2, paramInt3, paramInt4, 0, paramBoolean);
  }

  public final void a(LoadingLayout paramLoadingLayout)
  {
    if (paramLoadingLayout != null)
      this.a.add(paramLoadingLayout);
  }

  public final void setLastUpdatedLabel(CharSequence paramCharSequence)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((LoadingLayout)localIterator.next()).setLastUpdatedLabel(paramCharSequence);
  }

  public final void setLoadingDrawable(Drawable paramDrawable)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((LoadingLayout)localIterator.next()).setLoadingDrawable(paramDrawable);
  }

  public final void setPullLabel(CharSequence paramCharSequence)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((LoadingLayout)localIterator.next()).setPullLabel(paramCharSequence);
  }

  public final void setRefreshingLabel(CharSequence paramCharSequence)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((LoadingLayout)localIterator.next()).setRefreshingLabel(paramCharSequence);
  }

  public final void setReleaseLabel(CharSequence paramCharSequence)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
      ((LoadingLayout)localIterator.next()).setReleaseLabel(paramCharSequence);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.b
 * JD-Core Version:    0.6.0
 */