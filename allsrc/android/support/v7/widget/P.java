package android.support.v7.widget;

import android.os.SystemClock;
import android.support.v4.view.MotionEventCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewParent;

public abstract class P
  implements View.OnTouchListener
{
  private final float a;
  private final int b;
  private final int c;
  private final View d;
  private Runnable e;
  private Runnable f;
  private boolean g;
  private boolean h;
  private int i;
  private final int[] j = new int[2];

  public P(View paramView)
  {
    this.d = paramView;
    this.a = ViewConfiguration.get(paramView.getContext()).getScaledTouchSlop();
    this.b = ViewConfiguration.getTapTimeout();
    this.c = ((this.b + ViewConfiguration.getLongPressTimeout()) / 2);
  }

  private boolean a(MotionEvent paramMotionEvent)
  {
    int k = 1;
    View localView = this.d;
    L localL = a();
    if ((localL == null) || (!localL.b()))
      k = 0;
    while (true)
    {
      return k;
      O localO = L.a(localL);
      if ((localO == null) || (!localO.isShown()))
        return false;
      MotionEvent localMotionEvent = MotionEvent.obtainNoHistory(paramMotionEvent);
      int[] arrayOfInt1 = this.j;
      localView.getLocationOnScreen(arrayOfInt1);
      localMotionEvent.offsetLocation(arrayOfInt1[0], arrayOfInt1[k]);
      int[] arrayOfInt2 = this.j;
      localO.getLocationOnScreen(arrayOfInt2);
      localMotionEvent.offsetLocation(-arrayOfInt2[0], -arrayOfInt2[k]);
      boolean bool = localO.a(localMotionEvent, this.i);
      localMotionEvent.recycle();
      int m = MotionEventCompat.getActionMasked(paramMotionEvent);
      if ((m != k) && (m != 3));
      for (int n = k; (!bool) || (n == 0); n = 0)
        return false;
    }
  }

  private void d()
  {
    if (this.f != null)
      this.d.removeCallbacks(this.f);
    if (this.e != null)
      this.d.removeCallbacks(this.e);
  }

  public abstract L a();

  protected boolean b()
  {
    L localL = a();
    if ((localL != null) && (!localL.b()))
      localL.c();
    return true;
  }

  protected boolean c()
  {
    L localL = a();
    if ((localL != null) && (localL.b()))
      localL.a();
    return true;
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool1 = this.g;
    boolean bool3;
    if (bool1)
    {
      if (this.h)
        bool3 = a(paramMotionEvent);
      while (true)
      {
        this.g = bool3;
        int m;
        if (!bool3)
        {
          m = 0;
          if (!bool1);
        }
        else
        {
          m = 1;
        }
        return m;
        if ((a(paramMotionEvent)) || (!c()))
        {
          bool3 = true;
          continue;
        }
        bool3 = false;
      }
    }
    View localView = this.d;
    if (localView.isEnabled());
    label124: int k;
    switch (MotionEventCompat.getActionMasked(paramMotionEvent))
    {
    default:
      k = 0;
      label127: if ((k == 0) || (!b()))
        break;
    case 0:
    case 2:
    case 1:
    case 3:
    }
    for (boolean bool2 = true; ; bool2 = false)
    {
      if (bool2)
      {
        long l = SystemClock.uptimeMillis();
        MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
        this.d.onTouchEvent(localMotionEvent);
        localMotionEvent.recycle();
      }
      bool3 = bool2;
      break;
      this.i = paramMotionEvent.getPointerId(0);
      this.h = false;
      if (this.e == null)
        this.e = new Q(this, 0);
      localView.postDelayed(this.e, this.b);
      if (this.f == null)
        this.f = new R(this, 0);
      localView.postDelayed(this.f, this.c);
      break label124;
      int n = paramMotionEvent.findPointerIndex(this.i);
      if (n < 0)
        break label124;
      float f1 = paramMotionEvent.getX(n);
      float f2 = paramMotionEvent.getY(n);
      float f3 = this.a;
      if ((f1 >= -f3) && (f2 >= -f3) && (f1 < f3 + (localView.getRight() - localView.getLeft())) && (f2 < f3 + (localView.getBottom() - localView.getTop())));
      for (int i1 = 1; i1 == 0; i1 = 0)
      {
        d();
        localView.getParent().requestDisallowInterceptTouchEvent(true);
        k = 1;
        break label127;
      }
      d();
      break label124;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.P
 * JD-Core Version:    0.6.0
 */