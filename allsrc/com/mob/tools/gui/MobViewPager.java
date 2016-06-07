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

public class MobViewPager extends ViewGroup
{
  private int a;
  private int b;
  private View c;
  private View d;
  private View e;
  private Scroller f = new Scroller(getContext(), new l(this));
  private int g;
  private int h;
  private u i;
  private VelocityTracker j;
  private int k = 0;
  private float l;
  private float m;

  public MobViewPager(Context paramContext)
  {
    this(paramContext, null);
  }

  public MobViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public MobViewPager(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(paramContext);
    this.g = localViewConfiguration.getScaledTouchSlop();
    this.h = localViewConfiguration.getScaledMaximumFlingVelocity();
  }

  private void a(int paramInt, boolean paramBoolean)
  {
    if ((this.d != null) && (getFocusedChild() == this.d))
      this.d.clearFocus();
    int n = paramInt * getWidth() - getScrollX();
    this.f.abortAnimation();
    Scroller localScroller = this.f;
    int i1 = getScrollX();
    if (paramBoolean);
    for (int i2 = 0; ; i2 = Math.abs(n) / 2)
    {
      localScroller.startScroll(i1, 0, n, 0, i2);
      invalidate();
      return;
    }
  }

  private void a(MotionEvent paramMotionEvent)
  {
    if (this.i == null);
    int n;
    int i1;
    do
    {
      do
        while (true)
        {
          return;
          float f1 = paramMotionEvent.getX();
          n = (int)(this.l - f1);
          this.l = f1;
          if (n >= 0)
            break;
          if (getScrollX() <= 0)
            continue;
          scrollBy(Math.max(-getScrollX(), n), 0);
          return;
        }
      while ((n <= 0) || (getChildCount() == 0));
      i1 = getChildAt(-1 + getChildCount()).getRight() - getScrollX() - getWidth();
    }
    while (i1 <= 0);
    scrollBy(Math.min(i1, n), 0);
  }

  public void computeScroll()
  {
    if ((this.i == null) || (this.b <= 0));
    int n;
    do
    {
      return;
      if (this.f.computeScrollOffset())
      {
        scrollTo(this.f.getCurrX(), this.f.getCurrY());
        postInvalidate();
        return;
      }
      n = this.a;
      int i1 = this.f.getCurrX();
      int i2 = getWidth();
      int i3 = i1 / i2;
      if (i1 % i2 > i2 / 2)
        i3++;
      this.a = Math.max(0, Math.min(i3, -1 + this.b));
    }
    while ((n == this.a) || (this.i == null));
    if (this.a > n)
    {
      int i6 = 0;
      if (i6 < this.a - n)
      {
        int i7 = 1 + (n + i6);
        View localView2 = this.c;
        this.c = this.d;
        this.d = this.e;
        if (getChildCount() >= 3)
          removeViewAt(0);
        if (i7 < -1 + this.b)
        {
          this.e = this.i.getView(i7 + 1, localView2, this);
          addView(this.e);
        }
        while (true)
        {
          i6++;
          break;
          this.e = localView2;
        }
      }
    }
    else
    {
      int i4 = 0;
      if (i4 < n - this.a)
      {
        int i5 = -1 + (n - i4);
        View localView1 = this.e;
        this.e = this.d;
        this.d = this.c;
        if (getChildCount() >= 3)
          removeViewAt(2);
        if (i5 > 0)
        {
          this.c = this.i.getView(i5 - 1, localView1, this);
          addView(this.c, 0);
        }
        while (true)
        {
          i4++;
          break;
          this.c = localView1;
        }
      }
    }
    this.i.onScreenChange(this.a, n);
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    if ((this.i == null) || (this.b <= 0));
    long l1;
    do
    {
      return;
      l1 = getDrawingTime();
      if (this.a > 0)
        drawChild(paramCanvas, this.c, l1);
      drawChild(paramCanvas, this.d, l1);
    }
    while (this.a >= -1 + this.b);
    drawChild(paramCanvas, this.e, l1);
  }

  public boolean dispatchUnhandledMove(View paramView, int paramInt)
  {
    if (this.i == null)
      return super.dispatchUnhandledMove(paramView, paramInt);
    if (paramInt == 17)
    {
      if (this.a > 0)
      {
        a(-1 + this.a, false);
        return true;
      }
    }
    else if ((paramInt == 66) && (this.a < -1 + this.b))
    {
      a(1 + this.a, false);
      return true;
    }
    return super.dispatchUnhandledMove(paramView, paramInt);
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int n = paramMotionEvent.getAction();
    if ((n == 2) && (this.k != 0));
    while (true)
    {
      return true;
      if (this.j == null)
        this.j = VelocityTracker.obtain();
      this.j.addMovement(paramMotionEvent);
      switch (n)
      {
      default:
      case 2:
      case 0:
      case 1:
      case 3:
      }
      while (this.k == 0)
      {
        return false;
        float f3 = paramMotionEvent.getX();
        float f4 = paramMotionEvent.getY();
        int i2 = (int)Math.abs(f3 - this.l);
        int i3 = (int)Math.abs(f4 - this.m);
        int i4;
        if (i2 > this.g)
        {
          i4 = 1;
          label131: if (i3 <= this.g)
            break label178;
        }
        label178: for (int i5 = 1; ((i4 != 0) || (i5 != 0)) && (i4 != 0); i5 = 0)
        {
          this.k = 1;
          this.l = f3;
          break;
          i4 = 0;
          break label131;
        }
        float f1 = paramMotionEvent.getX();
        float f2 = paramMotionEvent.getY();
        this.l = f1;
        this.m = f2;
        if (this.f.isFinished());
        for (int i1 = 0; ; i1 = 1)
        {
          this.k = i1;
          break;
        }
        if (this.j != null)
        {
          this.j.recycle();
          this.j = null;
        }
        this.k = 0;
      }
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((this.i == null) || (this.b <= 0));
    int n;
    int i1;
    int i2;
    do
    {
      return;
      n = paramInt3 - paramInt1;
      i1 = paramInt4 - paramInt2;
      i2 = n * this.a;
      if (this.a > 0)
        this.c.layout(i2 - n, 0, i2, i1);
      this.d.layout(i2, 0, i2 + n, i1);
    }
    while (this.a >= -1 + this.b);
    this.e.layout(i2 + n, 0, n + (i2 + n), i1);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((this.i == null) || (this.b <= 0));
    while (true)
    {
      return;
      int n = getMeasuredWidth();
      int i1 = getMeasuredHeight();
      int i2 = View.MeasureSpec.makeMeasureSpec(n, 1073741824);
      int i3 = View.MeasureSpec.makeMeasureSpec(i1, 1073741824);
      for (int i4 = 0; i4 < getChildCount(); i4++)
        getChildAt(i4).measure(i2, i3);
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.i == null)
      return false;
    if (this.j == null)
      this.j = VelocityTracker.obtain();
    this.j.addMovement(paramMotionEvent);
    int n = paramMotionEvent.getAction();
    float f1 = paramMotionEvent.getX();
    switch (n)
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
      if (this.k == 0)
        continue;
      if (!this.f.isFinished())
        this.f.abortAnimation();
      this.l = f1;
      continue;
      if (this.k == 1)
      {
        a(paramMotionEvent);
        continue;
      }
      if ((!onInterceptTouchEvent(paramMotionEvent)) || (this.k != 1))
        continue;
      a(paramMotionEvent);
      continue;
      int i1;
      if (this.k == 1)
      {
        VelocityTracker localVelocityTracker = this.j;
        localVelocityTracker.computeCurrentVelocity(1000, this.h);
        i1 = (int)localVelocityTracker.getXVelocity();
        if ((i1 <= 500) || (this.a <= 0))
          break label234;
        a(-1 + this.a, false);
      }
      while (true)
      {
        if (this.j != null)
        {
          this.j.recycle();
          this.j = null;
        }
        this.k = 0;
        break;
        label234: if ((i1 < -500) && (this.a < -1 + this.b))
        {
          a(1 + this.a, false);
          continue;
        }
        int i2 = getWidth();
        a((getScrollX() + i2 / 2) / i2, false);
      }
      this.k = 0;
    }
  }

  public void setAdapter(u paramu)
  {
    if (this.i != null)
      this.i.setMobViewPager(null);
    this.i = paramu;
    if (this.i != null)
      this.i.setMobViewPager(this);
    if (paramu == null)
    {
      this.a = 0;
      removeAllViews();
    }
    do
    {
      return;
      this.b = paramu.getCount();
      if (this.b <= 0)
      {
        this.a = 0;
        removeAllViews();
        return;
      }
      if (this.b <= this.a)
      {
        a(-1 + this.b, true);
        return;
      }
      removeAllViews();
      if (this.a > 0)
      {
        this.c = paramu.getView(-1 + this.a, this.c, this);
        addView(this.c);
      }
      this.d = paramu.getView(this.a, this.d, this);
      addView(this.d);
    }
    while (this.a >= -1 + this.b);
    this.e = paramu.getView(1 + this.a, this.e, this);
    addView(this.e);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.MobViewPager
 * JD-Core Version:    0.6.0
 */