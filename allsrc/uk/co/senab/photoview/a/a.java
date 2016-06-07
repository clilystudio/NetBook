package uk.co.senab.photoview.a;

import android.content.Context;
import android.util.FloatMath;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

public class a
  implements e
{
  protected f a;
  float b;
  float c;
  private float d;
  private float e;
  private VelocityTracker f;
  private boolean g;

  public a(Context paramContext)
  {
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(paramContext);
    this.e = localViewConfiguration.getScaledMinimumFlingVelocity();
    this.d = localViewConfiguration.getScaledTouchSlop();
  }

  float a(MotionEvent paramMotionEvent)
  {
    return paramMotionEvent.getX();
  }

  public final void a(f paramf)
  {
    this.a = paramf;
  }

  public boolean a()
  {
    return false;
  }

  float b(MotionEvent paramMotionEvent)
  {
    return paramMotionEvent.getY();
  }

  public boolean c(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default:
    case 0:
    case 2:
    case 3:
    case 1:
    }
    do
    {
      do
      {
        do
        {
          float f3;
          float f4;
          float f5;
          float f6;
          do
          {
            return true;
            this.f = VelocityTracker.obtain();
            if (this.f != null)
              this.f.addMovement(paramMotionEvent);
            while (true)
            {
              this.b = a(paramMotionEvent);
              this.c = b(paramMotionEvent);
              this.g = false;
              return true;
              Log.i("CupcakeGestureDetector", "Velocity tracker is null");
            }
            f3 = a(paramMotionEvent);
            f4 = b(paramMotionEvent);
            f5 = f3 - this.b;
            f6 = f4 - this.c;
            if (this.g)
              continue;
            boolean bool1 = FloatMath.sqrt(f5 * f5 + f6 * f6) < this.d;
            boolean bool2 = false;
            if (!bool1)
              bool2 = true;
            this.g = bool2;
          }
          while (!this.g);
          this.a.a(f5, f6);
          this.b = f3;
          this.c = f4;
        }
        while (this.f == null);
        this.f.addMovement(paramMotionEvent);
        return true;
      }
      while (this.f == null);
      this.f.recycle();
      this.f = null;
      return true;
      if ((!this.g) || (this.f == null))
        continue;
      this.b = a(paramMotionEvent);
      this.c = b(paramMotionEvent);
      this.f.addMovement(paramMotionEvent);
      this.f.computeCurrentVelocity(1000);
      float f1 = this.f.getXVelocity();
      float f2 = this.f.getYVelocity();
      if (Math.max(Math.abs(f1), Math.abs(f2)) < this.e)
        continue;
      this.a.a(this.b, this.c, -f1, -f2);
    }
    while (this.f == null);
    this.f.recycle();
    this.f = null;
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.co.senab.photoview.a.a
 * JD-Core Version:    0.6.0
 */