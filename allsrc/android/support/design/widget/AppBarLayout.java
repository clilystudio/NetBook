package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@r(a="Landroid/support/design/widget/AppBarLayout$Behavior;")
public class AppBarLayout extends LinearLayout
{
  boolean a;
  private int b = -1;
  private int c = -1;
  private int d = -1;
  private float e;
  private WindowInsetsCompat f;
  private final List<WeakReference<h>> g;

  public AppBarLayout(Context paramContext)
  {
    this(paramContext, null);
  }

  public AppBarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOrientation(1);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.AppBarLayout, 0, R.style.Widget_Design_AppBarLayout);
    this.e = localTypedArray.getDimensionPixelSize(R.styleable.AppBarLayout_elevation, 0);
    setBackgroundDrawable(localTypedArray.getDrawable(R.styleable.AppBarLayout_android_background));
    localTypedArray.recycle();
    aP.a(this);
    this.g = new ArrayList();
    ViewCompat.setElevation(this, this.e);
    ViewCompat.setOnApplyWindowInsetsListener(this, new c(this));
  }

  private g a(AttributeSet paramAttributeSet)
  {
    return new g(getContext(), paramAttributeSet);
  }

  private static g a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof LinearLayout.LayoutParams))
      return new g((LinearLayout.LayoutParams)paramLayoutParams);
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams))
      return new g((ViewGroup.MarginLayoutParams)paramLayoutParams);
    return new g(paramLayoutParams);
  }

  private static g h()
  {
    return new g(-1, -2);
  }

  public final int a()
  {
    if (this.b != -1)
      return this.b;
    int i = getChildCount();
    int j = 0;
    int k = 0;
    View localView;
    int i2;
    if (j < i)
    {
      localView = getChildAt(j);
      g localg = (g)localView.getLayoutParams();
      if (ViewCompat.isLaidOut(localView))
      {
        i2 = localView.getHeight();
        label59: int i3 = localg.a;
        if ((i3 & 0x1) == 0)
          break label148;
        k += i2;
        if ((i3 & 0x2) == 0)
          break label136;
      }
    }
    label136: label148: for (int m = k - ViewCompat.getMinimumHeight(localView); ; m = k)
    {
      if (this.f != null);
      for (int n = this.f.getSystemWindowInsetTop(); ; n = 0)
      {
        int i1 = m - n;
        this.b = i1;
        return i1;
        i2 = localView.getMeasuredHeight();
        break label59;
        j++;
        break;
      }
    }
  }

  public final void a(h paramh)
  {
    int i = this.g.size();
    for (int j = 0; j < i; j++)
    {
      WeakReference localWeakReference = (WeakReference)this.g.get(j);
      if ((localWeakReference != null) && (localWeakReference.get() == paramh))
        return;
    }
    this.g.add(new WeakReference(paramh));
  }

  public final void b(h paramh)
  {
    Iterator localIterator = this.g.iterator();
    while (localIterator.hasNext())
    {
      h localh = (h)((WeakReference)localIterator.next()).get();
      if ((localh != paramh) && (localh != null))
        continue;
      localIterator.remove();
    }
  }

  final boolean b()
  {
    return a() != 0;
  }

  final int c()
  {
    return a();
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof g;
  }

  final int d()
  {
    if (this.c != -1)
      return this.c;
    int i = 0;
    int j = -1 + getChildCount();
    if (j >= 0)
    {
      View localView = getChildAt(j);
      g localg = (g)localView.getLayoutParams();
      int k;
      label54: int n;
      if (ViewCompat.isLaidOut(localView))
      {
        k = localView.getHeight();
        int m = localg.a;
        if ((m & 0x5) != 5)
          break label112;
        if ((m & 0x8) == 0)
          break label103;
        n = i + ViewCompat.getMinimumHeight(localView);
      }
      while (true)
      {
        j--;
        i = n;
        break;
        k = localView.getMeasuredHeight();
        break label54;
        label103: n = i + k;
        continue;
        label112: if (i > 0)
          break label122;
        n = i;
      }
    }
    label122: this.c = i;
    return i;
  }

  final int e()
  {
    if (this.d != -1)
      return this.d;
    int i = getChildCount();
    int j = 0;
    int k = 0;
    while (j < i)
    {
      View localView = getChildAt(j);
      g localg = (g)localView.getLayoutParams();
      if (ViewCompat.isLaidOut(localView));
      for (int m = localView.getHeight(); ; m = localView.getMeasuredHeight())
      {
        int n = localg.a;
        if ((n & 0x1) == 0)
          break label109;
        k += m;
        if ((n & 0x2) == 0)
          break;
        return k - ViewCompat.getMinimumHeight(localView);
      }
      j++;
    }
    label109: this.d = k;
    return k;
  }

  final int f()
  {
    int i;
    int m;
    if (this.f != null)
    {
      i = this.f.getSystemWindowInsetTop();
      int j = ViewCompat.getMinimumHeight(this);
      if (j == 0)
        break label39;
      m = i + (j << 1);
    }
    label39: int k;
    do
    {
      return m;
      i = 0;
      break;
      k = getChildCount();
      m = 0;
    }
    while (k <= 0);
    return i + (ViewCompat.getMinimumHeight(getChildAt(k - 1)) << 1);
  }

  public final float g()
  {
    return this.e;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    this.b = -1;
    this.c = -1;
    this.c = -1;
    this.a = false;
    int i = getChildCount();
    for (int j = 0; ; j++)
    {
      if (j < i)
      {
        if (((g)getChildAt(j).getLayoutParams()).b == null)
          continue;
        this.a = true;
      }
      return;
    }
  }

  public void setOrientation(int paramInt)
  {
    if (paramInt != 1)
      throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    super.setOrientation(paramInt);
  }

  public void setTargetElevation(float paramFloat)
  {
    this.e = paramFloat;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.AppBarLayout
 * JD-Core Version:    0.6.0
 */