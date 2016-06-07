package com.c.a;

import android.view.animation.Interpolator;

public abstract class o
  implements Cloneable
{
  float a;
  private Interpolator b = null;

  public static o a(float paramFloat1, float paramFloat2)
  {
    return new p(paramFloat1, paramFloat2);
  }

  public static o a(float paramFloat, int paramInt)
  {
    return new q(paramFloat, paramInt);
  }

  public abstract Object a();

  public final void a(Interpolator paramInterpolator)
  {
    this.b = paramInterpolator;
  }

  public final Interpolator b()
  {
    return this.b;
  }

  public abstract o c();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.c.a.o
 * JD-Core Version:    0.6.0
 */