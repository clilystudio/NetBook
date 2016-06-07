package com.mob.tools.gui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;

public class PullToRefreshView extends RelativeLayout
{
  private m a;
  private View b;
  private View c;
  private int d;
  private int e;
  private float f;
  private boolean g;
  private Runnable h;
  private long i;

  public PullToRefreshView(Context paramContext)
  {
    super(paramContext);
    b();
  }

  public PullToRefreshView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b();
  }

  public PullToRefreshView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    b();
  }

  private static MotionEvent a(MotionEvent paramMotionEvent)
  {
    return MotionEvent.obtain(paramMotionEvent.getDownTime(), paramMotionEvent.getEventTime(), 3, paramMotionEvent.getX(), paramMotionEvent.getY(), paramMotionEvent.getMetaState());
  }

  private void b()
  {
    this.h = new q(this);
  }

  private void c()
  {
    this.i = System.currentTimeMillis();
    this.g = true;
    if (this.a != null)
      this.a.onRequest();
  }

  private void d()
  {
    this.e = 0;
    scrollTo(0, 0);
    if (this.a != null)
      this.a.onReversed();
  }

  public final void a()
  {
    long l = System.currentTimeMillis() - this.i;
    if (l < 1000L)
    {
      postDelayed(this.h, 1000L - l);
      return;
    }
    post(this.h);
  }

  public final void a(boolean paramBoolean)
  {
    this.e = this.d;
    scrollTo(0, -this.e);
    c();
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default:
    case 0:
    case 2:
    case 1:
    case 3:
    }
    while (true)
    {
      return super.dispatchTouchEvent(paramMotionEvent);
      this.f = paramMotionEvent.getY();
      continue;
      float f1 = paramMotionEvent.getY();
      int j;
      if (!this.g)
      {
        if (!this.a.isPullReady())
          break label163;
        j = 1;
        label77: if (j == 0);
      }
      else
      {
        this.e = (int)(this.e + (f1 - this.f) / 2.0F);
        if (this.e <= 0)
          break label168;
        scrollTo(0, -this.e);
        if ((!this.g) && (this.a != null))
          this.a.onPullDown(100 * this.e / this.d);
        paramMotionEvent = a(paramMotionEvent);
      }
      while (true)
      {
        this.f = f1;
        break;
        label163: j = 0;
        break label77;
        label168: this.e = 0;
        scrollTo(0, 0);
      }
      if (!this.g)
      {
        if (this.e > this.d)
        {
          this.e = this.d;
          scrollTo(0, -this.e);
          if (this.a != null)
            this.a.onPullDown(100);
          c();
          paramMotionEvent = a(paramMotionEvent);
          continue;
        }
        if (this.e == 0)
          continue;
        d();
        if (this.a == null)
          continue;
        this.a.onPullDown(0);
        continue;
      }
      this.e = this.d;
      scrollTo(0, -this.e);
    }
  }

  public void setAdapter(m paramm)
  {
    this.a = paramm;
    removeAllViews();
    this.c = ((View)paramm.getBodyView$660be4());
    RelativeLayout.LayoutParams localLayoutParams1 = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams1.addRule(9, -1);
    localLayoutParams1.addRule(11, -1);
    localLayoutParams1.addRule(10, -1);
    addView(this.c, localLayoutParams1);
    this.b = paramm.getHeaderView();
    this.b.measure(0, 0);
    this.d = this.b.getMeasuredHeight();
    RelativeLayout.LayoutParams localLayoutParams2 = new RelativeLayout.LayoutParams(-2, this.d);
    localLayoutParams2.addRule(9, -1);
    localLayoutParams2.addRule(11, -1);
    localLayoutParams2.addRule(10, -1);
    localLayoutParams2.topMargin = (-this.d);
    addView(this.b, localLayoutParams2);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.PullToRefreshView
 * JD-Core Version:    0.6.0
 */