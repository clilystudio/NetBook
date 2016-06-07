package com.mob.tools.gui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Scroller;

public class ViewPagerClassic extends ViewGroup
{
  private int a;
  private Scroller b = new Scroller(getContext(), new v(this));
  private VelocityTracker c;
  private float d;
  private float e;
  private int f = 0;
  private int g;
  private int h;
  private u i;

  public ViewPagerClassic(Context paramContext)
  {
    this(paramContext, null);
  }

  public ViewPagerClassic(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ViewPagerClassic(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(paramContext);
    this.g = localViewConfiguration.getScaledTouchSlop();
    this.h = localViewConfiguration.getScaledMaximumFlingVelocity();
  }

  private void a(int paramInt)
  {
    if (paramInt != this.a);
    for (int j = 1; ; j = 0)
    {
      View localView = getFocusedChild();
      if ((localView != null) && (j != 0) && (localView == getChildAt(this.a)))
        localView.clearFocus();
      int k = paramInt * getWidth() - getScrollX();
      this.b.startScroll(getScrollX(), 0, k, 0, Math.abs(k) / 2);
      invalidate();
      return;
    }
  }

  private void a(MotionEvent paramMotionEvent)
  {
    if (this.i == null);
    int j;
    int k;
    do
    {
      do
        while (true)
        {
          return;
          float f1 = paramMotionEvent.getX();
          j = (int)(this.d - f1);
          this.d = f1;
          if (j >= 0)
            break;
          if (getScrollX() <= 0)
            continue;
          scrollBy(Math.max(-getScrollX(), j), 0);
          return;
        }
      while ((j <= 0) || (getChildCount() == 0));
      k = getChildAt(-1 + getChildCount()).getRight() - getScrollX() - getWidth();
    }
    while (k <= 0);
    scrollBy(Math.min(k, j), 0);
  }

  public final int a()
  {
    return this.a;
  }

  public void computeScroll()
  {
    if (this.i == null);
    int j;
    do
    {
      return;
      if (this.b.computeScrollOffset())
      {
        scrollTo(this.b.getCurrX(), this.b.getCurrY());
        postInvalidate();
        return;
      }
      j = this.a;
      int k = this.b.getCurrX();
      int m = getWidth();
      int n = k / m;
      if (k % m > m / 2)
        n++;
      this.a = Math.max(0, Math.min(n, -1 + getChildCount()));
    }
    while ((j == this.a) || (this.i == null));
    this.i.onScreenChange(this.a, j);
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    if ((this.i == null) || (getChildCount() <= 0));
    long l;
    do
    {
      return;
      l = getDrawingTime();
      if (this.a > 0)
        drawChild(paramCanvas, getChildAt(-1 + this.a), l);
      drawChild(paramCanvas, getChildAt(this.a), l);
    }
    while (this.a >= -1 + getChildCount());
    drawChild(paramCanvas, getChildAt(1 + this.a), l);
  }

  public boolean dispatchUnhandledMove(View paramView, int paramInt)
  {
    if (this.i == null)
      return super.dispatchUnhandledMove(paramView, paramInt);
    if (paramInt == 17)
    {
      if (this.a > 0)
      {
        a(-1 + this.a);
        return true;
      }
    }
    else if ((paramInt == 66) && (this.a < -1 + getChildCount()))
    {
      a(1 + this.a);
      return true;
    }
    return super.dispatchUnhandledMove(paramView, paramInt);
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int j = paramMotionEvent.getAction();
    if ((j == 2) && (this.f != 0));
    while (true)
    {
      return true;
      if (this.c == null)
        this.c = VelocityTracker.obtain();
      this.c.addMovement(paramMotionEvent);
      switch (j)
      {
      default:
      case 2:
      case 0:
      case 1:
      case 3:
      }
      while (this.f == 0)
      {
        return false;
        float f3 = paramMotionEvent.getX();
        float f4 = paramMotionEvent.getY();
        int m = (int)Math.abs(f3 - this.d);
        int n = (int)Math.abs(f4 - this.e);
        int i1;
        if (m > this.g)
        {
          i1 = 1;
          label131: if (n <= this.g)
            break label178;
        }
        label178: for (int i2 = 1; ((i1 != 0) || (i2 != 0)) && (i1 != 0); i2 = 0)
        {
          this.f = 1;
          this.d = f3;
          break;
          i1 = 0;
          break label131;
        }
        float f1 = paramMotionEvent.getX();
        float f2 = paramMotionEvent.getY();
        this.d = f1;
        this.e = f2;
        if (this.b.isFinished());
        for (int k = 0; ; k = 1)
        {
          this.f = k;
          break;
        }
        if (this.c != null)
        {
          this.c.recycle();
          this.c = null;
        }
        this.f = 0;
      }
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.i == null);
    while (true)
    {
      return;
      int j = paramInt3 - paramInt1;
      int k = paramInt4 - paramInt2;
      int m = getChildCount();
      int n = 0;
      int i1 = 0;
      while (n < m)
      {
        View localView = getChildAt(n);
        if (localView.getVisibility() != 8)
        {
          localView.layout(i1, 0, i1 + j, k);
          i1 += j;
        }
        n++;
      }
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.i == null)
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int j = getChildCount();
    int k = View.MeasureSpec.makeMeasureSpec(com.arcsoft.hpay100.a.a.l(getContext())[0], 1073741824);
    int m = 0;
    int n = 0;
    label41: int i3;
    if (m < j)
    {
      View localView = getChildAt(m);
      localView.measure(k, 0);
      i3 = localView.getMeasuredHeight();
      if (i3 <= n)
        break label132;
    }
    while (true)
    {
      m++;
      n = i3;
      break label41;
      int i1 = View.MeasureSpec.makeMeasureSpec(n, 1073741824);
      super.onMeasure(k, i1);
      for (int i2 = 0; i2 < j; i2++)
        getChildAt(i2).measure(k, i1);
      break;
      label132: i3 = n;
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.i == null)
      return false;
    if (this.c == null)
      this.c = VelocityTracker.obtain();
    this.c.addMovement(paramMotionEvent);
    int j = paramMotionEvent.getAction();
    float f1 = paramMotionEvent.getX();
    switch (j)
    {
    default:
    case 0:
    case 2:
    case 1:
    case 3:
    }
    while (true)
    {
      return true;
      if (this.f == 0)
        continue;
      if (!this.b.isFinished())
        this.b.abortAnimation();
      this.d = f1;
      continue;
      if (this.f == 1)
      {
        a(paramMotionEvent);
        continue;
      }
      if ((!onInterceptTouchEvent(paramMotionEvent)) || (this.f != 1))
        continue;
      a(paramMotionEvent);
      continue;
      int k;
      if (this.f == 1)
      {
        VelocityTracker localVelocityTracker = this.c;
        localVelocityTracker.computeCurrentVelocity(1000, this.h);
        k = (int)localVelocityTracker.getXVelocity();
        if ((k <= 500) || (this.a <= 0))
          break label233;
        a(-1 + this.a);
      }
      while (true)
      {
        if (this.c != null)
        {
          this.c.recycle();
          this.c = null;
        }
        this.f = 0;
        break;
        label233: if ((k < -500) && (this.a < -1 + getChildCount()))
        {
          a(1 + this.a);
          continue;
        }
        int m = getWidth();
        a((getScrollX() + m / 2) / m);
      }
      this.f = 0;
    }
  }

  public void setAdapter(u paramu)
  {
    int j = 0;
    this.i = paramu;
    removeAllViews();
    this.a = 0;
    if (this.i == null);
    while (true)
    {
      return;
      int k = paramu.getCount();
      while (j < k)
      {
        addView(paramu.getView(j, null, this));
        j++;
      }
    }
  }

  public void setCurrentScreen(int paramInt)
  {
    if (this.i == null)
      return;
    if (!this.b.isFinished())
      this.b.abortAnimation();
    int j = this.a;
    this.a = Math.max(0, Math.min(paramInt, getChildCount()));
    this.i.onScreenChange(this.a, j);
    int k = com.arcsoft.hpay100.a.a.l(getContext())[0] * this.a;
    this.b.startScroll(0, 0, k, 0);
    scrollTo(k, 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.ViewPagerClassic
 * JD-Core Version:    0.6.0
 */