package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ScrollerCompat;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.List;

public final class AppBarLayout$Behavior extends aN<AppBarLayout>
{
  private int a;
  private boolean b;
  private Runnable c;
  private ScrollerCompat d;
  private au e;
  private int f;
  private boolean g;
  private float h;

  private int a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt1, int paramInt2, int paramInt3)
  {
    return b(paramCoordinatorLayout, paramAppBarLayout, g() - paramInt1, paramInt2, paramInt3);
  }

  private void a(AppBarLayout paramAppBarLayout)
  {
    List localList = AppBarLayout.a(paramAppBarLayout);
    int i = localList.size();
    int j = 0;
    if (j < i)
    {
      WeakReference localWeakReference = (WeakReference)localList.get(j);
      if (localWeakReference != null);
      for (h localh = (h)localWeakReference.get(); ; localh = null)
      {
        if (localh != null)
          localh.a(paramAppBarLayout, super.a());
        j++;
        break;
      }
    }
  }

  private int b(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = g();
    int j = 0;
    int k;
    int i2;
    int m;
    if (paramInt2 != 0)
    {
      j = 0;
      if (i >= paramInt2)
      {
        j = 0;
        if (i <= paramInt3)
        {
          k = d.a(paramInt1, paramInt2, paramInt3);
          j = 0;
          if (i != k)
          {
            if (!paramAppBarLayout.a)
              break label297;
            int n = Math.abs(k);
            int i1 = paramAppBarLayout.getChildCount();
            i2 = 0;
            if (i2 >= i1)
              break label290;
            View localView = paramAppBarLayout.getChildAt(i2);
            g localg = (g)localView.getLayoutParams();
            Interpolator localInterpolator = localg.b;
            if ((n < localView.getTop()) || (n > localView.getBottom()))
              break label284;
            if (localInterpolator == null)
              break label290;
            int i3 = localg.a;
            int i4 = i3 & 0x1;
            int i5 = 0;
            if (i4 != 0)
            {
              i5 = 0 + localView.getHeight();
              if ((i3 & 0x2) != 0)
                i5 -= ViewCompat.getMinimumHeight(localView);
            }
            if (i5 <= 0)
              break label290;
            int i6 = n - localView.getTop();
            int i7 = Math.round(i5 * localInterpolator.getInterpolation(i6 / i5));
            m = Integer.signum(k) * (i7 + localView.getTop());
          }
        }
      }
    }
    while (true)
    {
      boolean bool = super.a(m);
      j = i - k;
      this.a = (k - m);
      if ((!bool) && (paramAppBarLayout.a))
        paramCoordinatorLayout.a(paramAppBarLayout);
      a(paramAppBarLayout);
      return j;
      label284: i2++;
      break;
      label290: m = k;
      continue;
      label297: m = k;
    }
  }

  private int g()
  {
    return super.a() + this.a;
  }

  final int a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, int paramInt)
  {
    return b(paramCoordinatorLayout, paramAppBarLayout, paramInt, -2147483648, 2147483647);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.AppBarLayout.Behavior
 * JD-Core Version:    0.6.0
 */