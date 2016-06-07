package android.support.v7.internal.widget;

import android.content.Context;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.design.widget.K;
import android.support.design.widget.h;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Adapter;

public abstract class AdapterViewCompat<T extends Adapter> extends ViewGroup
{
  private int a;
  private K b;
  private View c;
  private boolean d;
  private boolean e;

  @ViewDebug.ExportedProperty(category="scrolling")
  int f = 0;
  int g;
  long h = -9223372036854775808L;
  boolean i = false;
  int j;
  boolean k = false;
  y l;
  boolean m;

  @ViewDebug.ExportedProperty(category="list")
  int n = -1;
  long o = -9223372036854775808L;

  @ViewDebug.ExportedProperty(category="list")
  int p = -1;
  long q = -9223372036854775808L;

  @ViewDebug.ExportedProperty(category="list")
  int r;
  int s;
  int t = -1;
  long u = -9223372036854775808L;
  boolean v = false;
  private AdapterViewCompat<T>.z w;

  AdapterViewCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void a()
  {
    if (this.b == null);
    int i1;
    do
    {
      return;
      i1 = this.n;
    }
    while (i1 < 0);
    b();
    c().getItemId(i1);
  }

  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (this.c != null)
      {
        this.c.setVisibility(0);
        setVisibility(8);
      }
      while (true)
      {
        if (this.m)
          onLayout(false, getLeft(), getTop(), getRight(), getBottom());
        return;
        setVisibility(0);
      }
    }
    if (this.c != null)
      this.c.setVisibility(8);
    setVisibility(0);
  }

  private long c(int paramInt)
  {
    Adapter localAdapter = c();
    if ((localAdapter == null) || (paramInt < 0))
      return -9223372036854775808L;
    return localAdapter.getItemId(paramInt);
  }

  final void a(int paramInt)
  {
    this.p = paramInt;
    this.q = c(paramInt);
  }

  public final boolean a(View paramView, int paramInt, long paramLong)
  {
    if (this.l != null)
    {
      playSoundEffect(0);
      if (paramView != null)
        paramView.sendAccessibilityEvent(1);
      return true;
    }
    return false;
  }

  public void addView(View paramView)
  {
    throw new UnsupportedOperationException("addView(View) is not supported in AdapterView");
  }

  public void addView(View paramView, int paramInt)
  {
    throw new UnsupportedOperationException("addView(View, int) is not supported in AdapterView");
  }

  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    throw new UnsupportedOperationException("addView(View, int, LayoutParams) is not supported in AdapterView");
  }

  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    throw new UnsupportedOperationException("addView(View, LayoutParams) is not supported in AdapterView");
  }

  public abstract View b();

  final void b(int paramInt)
  {
    this.n = paramInt;
    this.o = c(paramInt);
    if ((this.i) && (this.j == 0) && (paramInt >= 0))
    {
      this.g = paramInt;
      this.h = this.o;
    }
  }

  public abstract T c();

  protected boolean canAnimate()
  {
    return (super.canAnimate()) && (this.r > 0);
  }

  final void d()
  {
    Adapter localAdapter = c();
    int i1;
    int i2;
    label26: boolean bool1;
    if ((localAdapter == null) || (localAdapter.getCount() == 0))
    {
      i1 = 1;
      if (i1 != 0)
        break label108;
      i2 = 1;
      if ((i2 == 0) || (!this.e))
        break label113;
      bool1 = true;
      label40: super.setFocusableInTouchMode(bool1);
      if ((i2 == 0) || (!this.d))
        break label119;
    }
    label108: label113: label119: for (boolean bool2 = true; ; bool2 = false)
    {
      super.setFocusable(bool2);
      if (this.c != null)
      {
        boolean bool3;
        if (localAdapter != null)
        {
          boolean bool4 = localAdapter.isEmpty();
          bool3 = false;
          if (!bool4);
        }
        else
        {
          bool3 = true;
        }
        a(bool3);
      }
      return;
      i1 = 0;
      break;
      i2 = 0;
      break label26;
      bool1 = false;
      break label40;
    }
  }

  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    View localView = b();
    return (localView != null) && (localView.getVisibility() == 0) && (localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent));
  }

  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchThawSelfOnly(paramSparseArray);
  }

  protected void dispatchSaveInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    dispatchFreezeSelfOnly(paramSparseArray);
  }

  final void e()
  {
    int i1 = this.r;
    int i4;
    int i8;
    int i9;
    int i10;
    int i5;
    if (i1 > 0)
      if (this.i)
      {
        this.i = false;
        i4 = this.r;
        if (i4 != 0)
        {
          long l1 = this.h;
          int i6 = this.g;
          if (l1 != -9223372036854775808L)
          {
            int i7 = Math.max(0, i6);
            i8 = Math.min(i4 - 1, i7);
            long l2 = 100L + SystemClock.uptimeMillis();
            i9 = 0;
            Adapter localAdapter = c();
            if (localAdapter != null)
            {
              i10 = i8;
              i5 = i8;
              if (SystemClock.uptimeMillis() <= l2)
                if (localAdapter.getItemId(i5) == l1)
                {
                  label127: if ((i5 < 0) || (i5 != i5))
                    break label332;
                  b(i5);
                  i2 = 1;
                  label147: if (i2 == 0)
                  {
                    int i3 = this.n;
                    if (i3 >= i1)
                      i3 = i1 - 1;
                    if (i3 < 0)
                      i3 = 0;
                    if ((i3 >= 0) || (i3 >= 0))
                    {
                      b(i3);
                      f();
                    }
                  }
                }
            }
          }
        }
      }
    for (int i2 = 1; ; i2 = 0)
    {
      if (i2 == 0)
      {
        this.p = -1;
        this.q = -9223372036854775808L;
        this.n = -1;
        this.o = -9223372036854775808L;
        this.i = false;
        f();
      }
      return;
      int i11;
      if (i8 == i4 - 1)
      {
        i11 = 1;
        label240: if (i10 != 0)
          break label292;
      }
      label292: for (int i12 = 1; ; i12 = 0)
      {
        if ((i11 != 0) && (i12 != 0))
          break label326;
        if ((i12 == 0) && ((i9 == 0) || (i11 != 0)))
          break label298;
        i8++;
        i5 = i8;
        i9 = 0;
        break;
        i11 = 0;
        break label240;
      }
      label298: if ((i11 == 0) && ((i9 != 0) || (i12 != 0)))
        break;
      i10--;
      i9 = 1;
      i5 = i10;
      break;
      label326: i5 = -1;
      break label127;
      label332: i2 = 0;
      break label147;
    }
  }

  final void f()
  {
    if ((this.p != this.t) || (this.q != this.u))
      if (this.b != null)
      {
        if ((!this.k) && (!this.v))
          break label117;
        if (this.w == null)
          this.w = new z(this, 0);
        post(this.w);
      }
    while (true)
    {
      if ((this.p != -1) && (isShown()) && (!isInTouchMode()))
        sendAccessibilityEvent(4);
      this.t = this.p;
      this.u = this.q;
      return;
      label117: a();
    }
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks(this.w);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.a = getHeight();
  }

  public void removeAllViews()
  {
    throw new UnsupportedOperationException("removeAllViews() is not supported in AdapterView");
  }

  public void removeView(View paramView)
  {
    throw new UnsupportedOperationException("removeView(View) is not supported in AdapterView");
  }

  public void removeViewAt(int paramInt)
  {
    throw new UnsupportedOperationException("removeViewAt(int) is not supported in AdapterView");
  }

  public abstract void setAdapter(T paramT);

  public void setEmptyView(View paramView)
  {
    this.c = paramView;
    Adapter localAdapter = c();
    if ((localAdapter == null) || (localAdapter.isEmpty()));
    for (boolean bool = true; ; bool = false)
    {
      a(bool);
      return;
    }
  }

  public void setFocusable(boolean paramBoolean)
  {
    boolean bool1 = true;
    Adapter localAdapter = c();
    boolean bool2;
    if ((localAdapter == null) || (localAdapter.getCount() == 0))
    {
      bool2 = bool1;
      this.d = paramBoolean;
      if (!paramBoolean)
        this.e = false;
      if ((!paramBoolean) || (bool2))
        break label58;
    }
    while (true)
    {
      super.setFocusable(bool1);
      return;
      bool2 = false;
      break;
      label58: bool1 = false;
    }
  }

  public void setFocusableInTouchMode(boolean paramBoolean)
  {
    boolean bool1 = true;
    Adapter localAdapter = c();
    boolean bool2;
    if ((localAdapter == null) || (localAdapter.getCount() == 0))
    {
      bool2 = bool1;
      this.e = paramBoolean;
      if (paramBoolean)
        this.d = bool1;
      if ((!paramBoolean) || (bool2))
        break label58;
    }
    while (true)
    {
      super.setFocusableInTouchMode(bool1);
      return;
      bool2 = false;
      break;
      label58: bool1 = false;
    }
  }

  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    throw new RuntimeException("Don't call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead");
  }

  public void setOnItemClickListener(y paramy)
  {
    this.l = paramy;
  }

  public void setOnItemLongClickListener$c9b218b(h paramh)
  {
    if (!isLongClickable())
      setLongClickable(true);
  }

  public void setOnItemSelectedListener$685d046a(K paramK)
  {
    this.b = paramK;
  }

  public abstract void setSelection(int paramInt);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.AdapterViewCompat
 * JD-Core Version:    0.6.0
 */