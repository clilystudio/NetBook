package com.jeremyfeinstein.slidingmenu.lib;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.design.widget.K;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.FloatMath;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CustomViewAbove extends ViewGroup
{
  private static final Interpolator a = new a();
  private float A = 0.0F;
  private View b;
  private int c;
  private Scroller d;
  private boolean e;
  private boolean f;
  private boolean g;
  private boolean h;
  private int i;
  private float j;
  private float k;
  private float l;
  private int m = -1;
  private VelocityTracker n;
  private int o;
  private int p;
  private int q;
  private CustomViewBehind r;
  private boolean s = true;
  private c t;
  private c u;
  private K v;
  private g w;
  private List<View> x = new ArrayList();
  private int y = 0;
  private boolean z = false;

  public CustomViewAbove(Context paramContext)
  {
    this(paramContext, null);
  }

  public CustomViewAbove(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    this.d = new Scroller(localContext, a);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    this.i = ViewConfigurationCompat.getScaledPagingTouchSlop(localViewConfiguration);
    this.o = localViewConfiguration.getScaledMinimumFlingVelocity();
    this.p = localViewConfiguration.getScaledMaximumFlingVelocity();
    b localb = new b(this);
    this.u = localb;
    this.q = (int)(25.0F * localContext.getResources().getDisplayMetrics().density);
  }

  private int a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return 0;
    case 0:
    case 2:
      return this.r.a(this.b, paramInt);
    case 1:
    }
    return this.b.getLeft();
  }

  private int a(MotionEvent paramMotionEvent, int paramInt)
  {
    int i1 = MotionEventCompat.findPointerIndex(paramMotionEvent, paramInt);
    if (i1 == -1)
      this.m = -1;
    return i1;
  }

  private void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramInt, paramBoolean1, paramBoolean2, 0);
  }

  private void a(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    if ((!paramBoolean2) && (this.c == paramInt1))
      a(false);
    int i3;
    int i4;
    int i5;
    int i6;
    int i7;
    while (true)
    {
      return;
      int i1 = this.r.a(paramInt1);
      if (this.c != i1);
      for (int i2 = 1; ; i2 = 0)
      {
        this.c = i1;
        i3 = a(this.c);
        if ((i2 != 0) && (this.t != null))
          this.t.a(i1);
        if ((i2 != 0) && (this.u != null))
          this.u.a(i1);
        if (!paramBoolean1)
          break label329;
        if (getChildCount() != 0)
          break;
        a(false);
        return;
      }
      i4 = getScrollX();
      i5 = getScrollY();
      i6 = i3 - i4;
      i7 = 0 - i5;
      if ((i6 != 0) || (i7 != 0))
        break;
      f();
      if ((!d()) || (this.w == null))
        continue;
      this.w.a();
      return;
    }
    a(true);
    this.f = true;
    int i8 = e();
    int i9 = i8 / 2;
    float f1 = Math.min(1.0F, 1.0F * Math.abs(i6) / i8);
    float f2 = i9 + i9 * FloatMath.sin((float)(0.47123891676382D * (f1 - 0.5F)));
    int i10 = Math.abs(paramInt2);
    if (i10 > 0);
    for (int i11 = 4 * Math.round(1000.0F * Math.abs(f2 / i10)); ; i11 = 600)
    {
      int i12 = Math.min(i11, 600);
      this.d.startScroll(i4, i5, i6, i7, i12);
      invalidate();
      return;
      Math.abs(i6);
    }
    label329: f();
    scrollTo(i3, 0);
  }

  private void a(boolean paramBoolean)
  {
    if (this.e != paramBoolean)
      this.e = paramBoolean;
  }

  private boolean a(MotionEvent paramMotionEvent)
  {
    int i1 = (int)(paramMotionEvent.getX() + this.A);
    if (d())
      return this.r.a(this.b, this.c, i1);
    switch (this.y)
    {
    default:
      return false;
    case 1:
      Rect localRect = new Rect();
      Iterator localIterator = this.x.iterator();
      do
      {
        if (!localIterator.hasNext())
          break;
        ((View)localIterator.next()).getHitRect(localRect);
      }
      while (!localRect.contains((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()));
      for (int i2 = 1; i2 == 0; i2 = 0)
        return true;
      return false;
    case 2:
      return false;
    case 0:
    }
    return this.r.b(this.b, i1);
  }

  private void b(MotionEvent paramMotionEvent)
  {
    int i1 = this.m;
    int i2 = a(paramMotionEvent, i1);
    if (i1 == -1);
    while (true)
    {
      return;
      try
      {
        float f6 = MotionEventCompat.getX(paramMotionEvent, i2);
        f1 = f6;
        float f2 = f1 - this.k;
        float f3 = Math.abs(f2);
        float f4 = MotionEventCompat.getY(paramMotionEvent, i2);
        float f5 = Math.abs(f4 - this.l);
        int i3;
        if (d())
        {
          i3 = this.i / 2;
          if ((f3 <= i3) || (f3 <= f5))
            break label170;
          if (!d())
            break label156;
        }
        label156: for (boolean bool = this.r.b(f2); ; bool = this.r.a(f2))
        {
          if (!bool)
            break label170;
          this.g = true;
          this.z = false;
          this.k = f1;
          this.l = f4;
          a(true);
          return;
          i3 = this.i;
          break;
        }
        label170: if (f3 <= this.i)
          continue;
        this.h = true;
        return;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        while (true)
          float f1 = 0.0F;
      }
    }
  }

  private boolean b(int paramInt)
  {
    View localView1 = findFocus();
    if (localView1 == this)
      localView1 = null;
    View localView2 = FocusFinder.getInstance().findNextFocus(this, localView1, paramInt);
    boolean bool2;
    if ((localView2 != null) && (localView2 != localView1))
      if (paramInt == 17)
        bool2 = localView2.requestFocus();
    while (true)
    {
      if (bool2)
        playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
      return bool2;
      bool2 = false;
      if (paramInt != 66)
        continue;
      if ((localView1 == null) || (localView2.getLeft() > localView1.getLeft()))
      {
        bool2 = localView2.requestFocus();
        continue;
        if ((paramInt == 17) || (paramInt == 1))
        {
          if (this.c > 0)
            setCurrentItem(-1 + this.c, true);
          for (boolean bool1 = true; ; bool1 = false)
          {
            bool2 = bool1;
            break;
          }
        }
        if (paramInt != 66)
        {
          bool2 = false;
          if (paramInt != 2)
            continue;
        }
      }
      bool2 = h();
    }
  }

  private void c(MotionEvent paramMotionEvent)
  {
    int i1 = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (MotionEventCompat.getPointerId(paramMotionEvent, i1) == this.m)
      if (i1 != 0)
        break label56;
    label56: for (int i2 = 1; ; i2 = 0)
    {
      this.k = MotionEventCompat.getX(paramMotionEvent, i2);
      this.m = MotionEventCompat.getPointerId(paramMotionEvent, i2);
      if (this.n != null)
        this.n.clear();
      return;
    }
  }

  private boolean d()
  {
    return (this.c == 0) || (this.c == 2);
  }

  private int e()
  {
    if (this.r == null)
      return 0;
    return this.r.a();
  }

  private void f()
  {
    if (this.f)
    {
      a(false);
      this.d.abortAnimation();
      int i1 = getScrollX();
      int i2 = getScrollY();
      int i3 = this.d.getCurrX();
      int i4 = this.d.getCurrY();
      if ((i1 != i3) || (i2 != i4))
        scrollTo(i3, i4);
      if ((d()) && (this.w != null))
        this.w.a();
    }
    this.f = false;
  }

  private void g()
  {
    this.z = false;
    this.g = false;
    this.h = false;
    this.m = -1;
    if (this.n != null)
    {
      this.n.recycle();
      this.n = null;
    }
  }

  private boolean h()
  {
    if (this.c <= 0)
    {
      setCurrentItem(1 + this.c, true);
      return true;
    }
    return false;
  }

  public final int a()
  {
    return this.c;
  }

  public final View b()
  {
    return this.b;
  }

  protected final float c()
  {
    return Math.abs(this.A - this.b.getLeft()) / e();
  }

  public void computeScroll()
  {
    if ((!this.d.isFinished()) && (this.d.computeScrollOffset()))
    {
      int i1 = getScrollX();
      int i2 = getScrollY();
      int i3 = this.d.getCurrX();
      int i4 = this.d.getCurrY();
      if ((i1 != i3) || (i2 != i4))
      {
        scrollTo(i3, i4);
        getWidth();
      }
      invalidate();
      return;
    }
    f();
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    this.r.a(this.b, paramCanvas);
    this.r.a(this.b, paramCanvas, c());
    this.r.b(this.b, paramCanvas, c());
  }

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool;
    if (!super.dispatchKeyEvent(paramKeyEvent))
    {
      if (paramKeyEvent.getAction() == 0);
      switch (paramKeyEvent.getKeyCode())
      {
      default:
        bool = false;
      case 21:
      case 22:
      case 61:
      }
    }
    while (true)
    {
      int i1 = 0;
      if (bool)
        i1 = 1;
      return i1;
      bool = b(17);
      continue;
      bool = b(66);
      continue;
      if (Build.VERSION.SDK_INT < 11)
        break;
      if (KeyEventCompat.hasNoModifiers(paramKeyEvent))
      {
        bool = b(2);
        continue;
      }
      if (!KeyEventCompat.hasModifiers(paramKeyEvent, 1))
        break;
      bool = b(1);
    }
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.s)
      return false;
    int i1 = 0xFF & paramMotionEvent.getAction();
    if ((i1 == 3) || (i1 == 1) || ((i1 != 0) && (this.h)))
    {
      g();
      return false;
    }
    switch (i1)
    {
    default:
    case 2:
    case 0:
    case 6:
    }
    while (true)
    {
      if (!this.g)
      {
        if (this.n == null)
          this.n = VelocityTracker.obtain();
        this.n.addMovement(paramMotionEvent);
      }
      if ((!this.g) && (!this.z))
        break;
      return true;
      b(paramMotionEvent);
      continue;
      int i2 = MotionEventCompat.getActionIndex(paramMotionEvent);
      this.m = MotionEventCompat.getPointerId(paramMotionEvent, i2);
      if (this.m == -1)
        continue;
      float f1 = MotionEventCompat.getX(paramMotionEvent, i2);
      this.j = f1;
      this.k = f1;
      this.l = MotionEventCompat.getY(paramMotionEvent, i2);
      if (a(paramMotionEvent))
      {
        this.g = false;
        this.h = false;
        if ((!d()) || (!this.r.b(this.b, this.c, paramMotionEvent.getX() + this.A)))
          continue;
        this.z = true;
        continue;
      }
      this.h = true;
      continue;
      c(paramMotionEvent);
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = paramInt3 - paramInt1;
    int i2 = paramInt4 - paramInt2;
    this.b.layout(0, 0, i1, i2);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = getDefaultSize(0, paramInt1);
    int i2 = getDefaultSize(0, paramInt2);
    setMeasuredDimension(i1, i2);
    int i3 = getChildMeasureSpec(paramInt1, 0, i1);
    int i4 = getChildMeasureSpec(paramInt2, 0, i2);
    this.b.measure(i3, i4);
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3)
    {
      f();
      scrollTo(a(this.c), getScrollY());
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.s);
    do
      return false;
    while ((!this.g) && (!a(paramMotionEvent)));
    int i1 = paramMotionEvent.getAction();
    if (this.n == null)
      this.n = VelocityTracker.obtain();
    this.n.addMovement(paramMotionEvent);
    float f4;
    float f5;
    float f6;
    switch (i1 & 0xFF)
    {
    case 4:
    default:
    case 0:
    case 2:
      int i8;
      do
      {
        do
        {
          while (true)
          {
            return true;
            f();
            this.m = MotionEventCompat.getPointerId(paramMotionEvent, MotionEventCompat.getActionIndex(paramMotionEvent));
            float f7 = paramMotionEvent.getX();
            this.j = f7;
            this.k = f7;
          }
          if (this.g)
            continue;
          b(paramMotionEvent);
          if (this.h)
            break;
        }
        while (!this.g);
        i8 = a(paramMotionEvent, this.m);
      }
      while (this.m == -1);
      float f2 = MotionEventCompat.getX(paramMotionEvent, i8);
      float f3 = this.k - f2;
      this.k = f2;
      f4 = f3 + getScrollX();
      f5 = this.r.a(this.b);
      f6 = this.r.b(this.b);
      if (f4 >= f5)
        break;
    case 1:
    case 3:
    case 5:
    case 6:
    }
    while (true)
    {
      this.k += f5 - (int)f5;
      scrollTo((int)f5, getScrollY());
      (int)f5;
      getWidth();
      break;
      if (f4 > f6)
      {
        f5 = f6;
        continue;
        if (this.g)
        {
          VelocityTracker localVelocityTracker = this.n;
          localVelocityTracker.computeCurrentVelocity(1000, this.p);
          int i4 = (int)VelocityTrackerCompat.getXVelocity(localVelocityTracker, this.m);
          float f1 = (getScrollX() - a(this.c)) / e();
          int i5 = a(paramMotionEvent, this.m);
          int i6;
          int i7;
          if (this.m != -1)
          {
            i6 = (int)(MotionEventCompat.getX(paramMotionEvent, i5) - this.j);
            i7 = this.c;
            if ((Math.abs(i6) > this.q) && (Math.abs(i4) > this.o))
              if ((i4 > 0) && (i6 > 0))
              {
                i7--;
                label443: a(i7, true, true, i4);
              }
          }
          while (true)
          {
            this.m = -1;
            g();
            break;
            if ((i4 >= 0) || (i6 >= 0))
              break label443;
            i7++;
            break label443;
            i7 = Math.round(f1 + this.c);
            break label443;
            a(this.c, true, true, i4);
          }
        }
        if ((!this.z) || (!this.r.b(this.b, this.c, paramMotionEvent.getX() + this.A)))
          break;
        setCurrentItem(1);
        g();
        break;
        if (!this.g)
          break;
        a(this.c, true, true);
        this.m = -1;
        g();
        break;
        int i3 = MotionEventCompat.getActionIndex(paramMotionEvent);
        this.k = MotionEventCompat.getX(paramMotionEvent, i3);
        this.m = MotionEventCompat.getPointerId(paramMotionEvent, i3);
        break;
        c(paramMotionEvent);
        int i2 = a(paramMotionEvent, this.m);
        if (this.m == -1)
          break;
        this.k = MotionEventCompat.getX(paramMotionEvent, i2);
        break;
      }
      f5 = f4;
    }
  }

  public void scrollTo(int paramInt1, int paramInt2)
  {
    super.scrollTo(paramInt1, paramInt2);
    this.A = paramInt1;
    this.r.a(this.b, paramInt1, paramInt2);
    ((SlidingMenu)getParent()).a(c());
  }

  public void setAboveOffset(int paramInt)
  {
    this.b.setPadding(paramInt, this.b.getPaddingTop(), this.b.getPaddingRight(), this.b.getPaddingBottom());
  }

  public void setContent(View paramView)
  {
    if (this.b != null)
      removeView(this.b);
    this.b = paramView;
    addView(this.b);
  }

  public void setCurrentItem(int paramInt)
  {
    a(paramInt, true, false);
  }

  public void setCurrentItem(int paramInt, boolean paramBoolean)
  {
    a(paramInt, paramBoolean, false);
  }

  public void setCustomViewBehind(CustomViewBehind paramCustomViewBehind)
  {
    this.r = paramCustomViewBehind;
  }

  public void setOnClosedListener$4ae9f390(K paramK)
  {
    this.v = paramK;
  }

  public void setOnOpenedListener(g paramg)
  {
    this.w = paramg;
  }

  public void setOnPageChangeListener(c paramc)
  {
    this.t = paramc;
  }

  public void setSlidingEnabled(boolean paramBoolean)
  {
    this.s = paramBoolean;
  }

  public void setTouchMode(int paramInt)
  {
    this.y = paramInt;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.jeremyfeinstein.slidingmenu.lib.CustomViewAbove
 * JD-Core Version:    0.6.0
 */