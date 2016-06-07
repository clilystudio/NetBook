package com.jeremyfeinstein.slidingmenu.lib;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.support.design.widget.K;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

public class CustomViewBehind extends ViewGroup
{
  private int a = 0;
  private CustomViewAbove b;
  private View c;
  private View d;
  private int e = (int)TypedValue.applyDimension(1, 48.0F, getResources().getDisplayMetrics());
  private int f;
  private K g;
  private boolean h;
  private int i;
  private boolean j;
  private final Paint k = new Paint();
  private float l;
  private Drawable m;
  private Drawable n;
  private int o;
  private float p;
  private boolean q = true;
  private Bitmap r;
  private View s;
  private int t;

  public CustomViewBehind(Context paramContext)
  {
    this(paramContext, null);
  }

  public CustomViewBehind(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private int d()
  {
    return this.s.getTop() + (this.s.getHeight() - this.r.getHeight()) / 2;
  }

  public final int a()
  {
    return this.c.getWidth();
  }

  public final int a(int paramInt)
  {
    if (paramInt > 1)
      paramInt = 2;
    while ((this.i == 0) && (paramInt > 1))
    {
      return 0;
      if (paramInt > 0)
        continue;
      paramInt = 0;
    }
    if ((this.i == 1) && (paramInt <= 0))
      return 2;
    return paramInt;
  }

  public final int a(View paramView)
  {
    if ((this.i == 0) || (this.i == 2))
      return paramView.getLeft() - this.c.getWidth();
    if (this.i == 1)
      return paramView.getLeft();
    return 0;
  }

  public final int a(View paramView, int paramInt)
  {
    if (this.i == 0)
      switch (paramInt)
      {
      case 1:
      default:
      case 0:
      case 2:
      }
    while (true)
    {
      return paramView.getLeft();
      return paramView.getLeft() - this.c.getWidth();
      return paramView.getLeft();
      if (this.i == 1)
        switch (paramInt)
        {
        case 1:
        default:
          break;
        case 0:
          return paramView.getLeft();
        case 2:
          return paramView.getLeft() + this.c.getWidth();
        }
      if (this.i != 2)
        continue;
      switch (paramInt)
      {
      case 1:
      default:
      case 0:
      case 2:
      }
    }
    return paramView.getLeft() - this.c.getWidth();
    return paramView.getLeft() + this.d.getWidth();
  }

  public final void a(View paramView, int paramInt1, int paramInt2)
  {
    int i2;
    if (this.i == 0)
    {
      int i6 = paramView.getLeft();
      i2 = 0;
      if (paramInt1 >= i6)
        i2 = 4;
      scrollTo((int)((paramInt1 + this.c.getWidth()) * this.l), paramInt2);
    }
    while (true)
    {
      if (i2 == 4)
        Log.v("CustomViewBehind", "behind INVISIBLE");
      setVisibility(i2);
      return;
      if (this.i == 1)
      {
        int i5 = paramView.getLeft();
        i2 = 0;
        if (paramInt1 <= i5)
          i2 = 4;
        scrollTo((int)(this.c.getWidth() - getWidth() + (paramInt1 - this.c.getWidth()) * this.l), paramInt2);
        continue;
      }
      int i1 = this.i;
      i2 = 0;
      if (i1 != 2)
        continue;
      View localView1 = this.c;
      int i3;
      label163: View localView2;
      if (paramInt1 >= paramView.getLeft())
      {
        i3 = 4;
        localView1.setVisibility(i3);
        localView2 = this.d;
        if (paramInt1 > paramView.getLeft())
          break label242;
      }
      label242: for (int i4 = 4; ; i4 = 0)
      {
        localView2.setVisibility(i4);
        i2 = 0;
        if (paramInt1 == 0)
          i2 = 4;
        if (paramInt1 > paramView.getLeft())
          break label248;
        scrollTo((int)((paramInt1 + this.c.getWidth()) * this.l), paramInt2);
        break;
        i3 = 0;
        break label163;
      }
      label248: scrollTo((int)(this.d.getWidth() - getWidth() + (paramInt1 - this.d.getWidth()) * this.l), paramInt2);
    }
  }

  public final void a(View paramView, Canvas paramCanvas)
  {
    if ((this.m == null) || (this.o <= 0))
      return;
    int i1;
    if (this.i != 0)
      if (this.i == 1)
        i1 = paramView.getRight();
    while (true)
    {
      this.m.setBounds(i1, 0, i1 + this.o, getHeight());
      this.m.draw(paramCanvas);
      return;
      if (this.i == 2)
      {
        if (this.n != null)
        {
          int i2 = paramView.getRight();
          this.n.setBounds(i2, 0, i2 + this.o, getHeight());
          this.n.draw(paramCanvas);
        }
        i1 = paramView.getLeft() - this.o;
        continue;
      }
      i1 = 0;
    }
  }

  public final void a(View paramView, Canvas paramCanvas, float paramFloat)
  {
    if (!this.j)
      return;
    int i1 = (int)(255.0F * this.p * Math.abs(1.0F - paramFloat));
    this.k.setColor(Color.argb(i1, 0, 0, 0));
    int i4;
    int i2;
    if (this.i == 0)
    {
      i4 = paramView.getLeft() - this.c.getWidth();
      i2 = paramView.getLeft();
    }
    while (true)
    {
      paramCanvas.drawRect(i4, 0.0F, i2, getHeight(), this.k);
      return;
      if (this.i == 1)
      {
        i5 = paramView.getRight();
        i3 = paramView.getRight() + this.c.getWidth();
        continue;
      }
      if (this.i == 2)
      {
        int i6 = paramView.getLeft() - this.c.getWidth();
        int i7 = paramView.getLeft();
        paramCanvas.drawRect(i6, 0.0F, i7, getHeight(), this.k);
        i5 = paramView.getRight();
        i3 = paramView.getRight();
        continue;
      }
      int i3 = 0;
      int i5 = 0;
    }
  }

  public final boolean a(float paramFloat)
  {
    if (this.i == 0)
      if (paramFloat <= 0.0F);
    do
      while (true)
      {
        return true;
        return false;
        if (this.i != 1)
          break;
        if (paramFloat >= 0.0F)
          return false;
      }
    while (this.i == 2);
    return false;
  }

  public final boolean a(View paramView, int paramInt, float paramFloat)
  {
    switch (this.a)
    {
    default:
      return false;
    case 1:
      return true;
    case 0:
    }
    return b(paramView, paramInt, paramFloat);
  }

  public final int b(View paramView)
  {
    if (this.i == 0)
      return paramView.getLeft();
    if (this.i == 1)
      return paramView.getLeft() + this.c.getWidth();
    if (this.i == 2)
      return paramView.getLeft() + this.d.getWidth();
    return 0;
  }

  public final View b()
  {
    return this.c;
  }

  public final void b(View paramView, Canvas paramCanvas, float paramFloat)
  {
    if (!this.q);
    do
      return;
    while ((this.r == null) || (this.s == null) || (!((String)this.s.getTag(R.id.selected_view)).equals("CustomViewBehindSelectedView")));
    paramCanvas.save();
    int i1 = (int)(paramFloat * this.r.getWidth());
    if (this.i == 0)
    {
      int i4 = paramView.getLeft();
      int i5 = i4 - i1;
      paramCanvas.clipRect(i5, 0, i4, getHeight());
      paramCanvas.drawBitmap(this.r, i5, d(), null);
    }
    while (true)
    {
      paramCanvas.restore();
      return;
      if (this.i != 1)
        continue;
      int i2 = paramView.getRight();
      int i3 = i1 + i2;
      paramCanvas.clipRect(i2, 0, i3, getHeight());
      paramCanvas.drawBitmap(this.r, i3 - this.r.getWidth(), d(), null);
    }
  }

  public final boolean b(float paramFloat)
  {
    if (this.i == 0)
      if (paramFloat >= 0.0F);
    do
      while (true)
      {
        return true;
        return false;
        if (this.i != 1)
          break;
        if (paramFloat <= 0.0F)
          return false;
      }
    while (this.i == 2);
    return false;
  }

  public final boolean b(View paramView, int paramInt)
  {
    int i1 = paramView.getLeft();
    int i2 = paramView.getRight();
    if (this.i == 0)
      if ((paramInt < i1) || (paramInt > i1 + this.e));
    while (true)
    {
      return true;
      return false;
      if (this.i == 1)
        if ((paramInt > i2) || (paramInt < i2 - this.e))
          return false;
      if (this.i != 2)
        break;
      if (((paramInt < i1) || (paramInt > i1 + this.e)) && ((paramInt > i2) || (paramInt < i2 - this.e)))
        return false;
    }
    return false;
  }

  public final boolean b(View paramView, int paramInt, float paramFloat)
  {
    int i1;
    if ((this.i == 0) || ((this.i == 2) && (paramInt == 0)))
    {
      boolean bool1 = paramFloat < paramView.getLeft();
      i1 = 0;
      if (!bool1)
        i1 = 1;
    }
    boolean bool2;
    do
    {
      do
      {
        int i2;
        do
        {
          return i1;
          if (this.i == 1)
            break;
          i2 = this.i;
          i1 = 0;
        }
        while (i2 != 2);
        i1 = 0;
      }
      while (paramInt != 2);
      bool2 = paramFloat < paramView.getRight();
      i1 = 0;
    }
    while (bool2);
    return true;
  }

  public final View c()
  {
    return this.d;
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    if (this.g != null)
    {
      paramCanvas.save();
      this.b.c();
      super.dispatchDraw(paramCanvas);
      paramCanvas.restore();
      return;
    }
    super.dispatchDraw(paramCanvas);
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return !this.h;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = paramInt3 - paramInt1;
    int i2 = paramInt4 - paramInt2;
    this.c.layout(0, 0, i1 - this.f, i2);
    if (this.d != null)
      this.d.layout(0, 0, i1 - this.t, i2);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = getDefaultSize(0, paramInt1);
    int i2 = getDefaultSize(0, paramInt2);
    setMeasuredDimension(i1, i2);
    int i3 = getChildMeasureSpec(paramInt1, 0, i1 - this.f);
    int i4 = getChildMeasureSpec(paramInt1, 0, i1 - this.t);
    int i5 = getChildMeasureSpec(paramInt2, 0, i2);
    this.c.measure(i3, i5);
    if (this.d != null)
      this.d.measure(i4, i5);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return !this.h;
  }

  public void scrollTo(int paramInt1, int paramInt2)
  {
    super.scrollTo(paramInt1, paramInt2);
    if (this.g != null)
      invalidate();
  }

  public void setCanvasTransformer$213e88a0(K paramK)
  {
    this.g = paramK;
  }

  public void setChildrenEnabled(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }

  public void setContent(View paramView)
  {
    if (this.c != null)
      removeView(this.c);
    this.c = paramView;
    addView(this.c);
  }

  public void setCustomViewAbove(CustomViewAbove paramCustomViewAbove)
  {
    this.b = paramCustomViewAbove;
  }

  public void setFadeDegree(float paramFloat)
  {
    if ((paramFloat > 1.0F) || (paramFloat < 0.0F))
      throw new IllegalStateException("The BehindFadeDegree must be between 0.0f and 1.0f");
    this.p = paramFloat;
  }

  public void setFadeEnabled(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }

  public void setMarginThreshold(int paramInt)
  {
    this.e = paramInt;
  }

  public void setMode(int paramInt)
  {
    if ((paramInt == 0) || (paramInt == 1))
    {
      if (this.c != null)
        this.c.setVisibility(0);
      if (this.d != null)
        this.d.setVisibility(4);
    }
    this.i = paramInt;
  }

  public void setScrollScale(float paramFloat)
  {
    this.l = paramFloat;
  }

  public void setSecondaryContent(View paramView)
  {
    if (this.d != null)
      removeView(this.d);
    this.d = paramView;
    addView(this.d);
  }

  public void setSecondaryShadowDrawable(Drawable paramDrawable)
  {
    this.n = paramDrawable;
    invalidate();
  }

  public void setSecondaryWidthOffset(int paramInt)
  {
    this.t = paramInt;
    requestLayout();
  }

  public void setSelectedView(View paramView)
  {
    if (this.s != null)
    {
      this.s.setTag(R.id.selected_view, null);
      this.s = null;
    }
    if ((paramView != null) && (paramView.getParent() != null))
    {
      this.s = paramView;
      this.s.setTag(R.id.selected_view, "CustomViewBehindSelectedView");
      invalidate();
    }
  }

  public void setSelectorBitmap(Bitmap paramBitmap)
  {
    this.r = paramBitmap;
    refreshDrawableState();
  }

  public void setSelectorEnabled(boolean paramBoolean)
  {
    this.q = paramBoolean;
  }

  public void setShadowDrawable(Drawable paramDrawable)
  {
    this.m = paramDrawable;
    invalidate();
  }

  public void setShadowWidth(int paramInt)
  {
    this.o = paramInt;
    invalidate();
  }

  public void setTouchMode(int paramInt)
  {
    this.a = paramInt;
  }

  public void setWidthOffset(int paramInt)
  {
    this.f = paramInt;
    requestLayout();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.jeremyfeinstein.slidingmenu.lib.CustomViewBehind
 * JD-Core Version:    0.6.0
 */