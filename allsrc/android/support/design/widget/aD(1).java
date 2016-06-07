package android.support.design.widget;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;

final class aD extends aA
{
  private static final Handler a = new Handler(Looper.getMainLooper());
  private long b;
  private boolean c;
  private final int[] d = new int[2];
  private final float[] e = new float[2];
  private int f = 200;
  private Interpolator g;
  private aB h;
  private aC i;
  private float j;
  private final Runnable k = new aE(this);

  public final void a()
  {
    if (this.c)
      return;
    if (this.g == null)
      this.g = new AccelerateDecelerateInterpolator();
    this.b = SystemClock.uptimeMillis();
    this.c = true;
    a.postDelayed(this.k, 10L);
  }

  public final void a(float paramFloat1, float paramFloat2)
  {
    this.e[0] = paramFloat1;
    this.e[1] = paramFloat2;
  }

  public final void a(int paramInt)
  {
    this.f = paramInt;
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.d[0] = paramInt1;
    this.d[1] = paramInt2;
  }

  public final void a(aB paramaB)
  {
    this.h = paramaB;
  }

  public final void a(aC paramaC)
  {
    this.i = paramaC;
  }

  public final void a(Interpolator paramInterpolator)
  {
    this.g = paramInterpolator;
  }

  public final boolean b()
  {
    return this.c;
  }

  public final int c()
  {
    return a.a(this.d[0], this.d[1], this.j);
  }

  public final float d()
  {
    return a.a(this.e[0], this.e[1], this.j);
  }

  public final void e()
  {
    this.c = false;
    a.removeCallbacks(this.k);
    if (this.h != null)
      this.h.b();
  }

  public final float f()
  {
    return this.j;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.aD
 * JD-Core Version:    0.6.0
 */