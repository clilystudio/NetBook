package com.clilystudio.netbook.widget.comca;

import android.view.animation.Interpolator;
import java.util.ArrayList;

final class n extends r
{
  private int e;
  private int f;
  private int g;
  private boolean h = true;

  public n(q[] paramArrayOfq)
  {
    super(paramArrayOfq);
  }

  private n b()
  {
    ArrayList localArrayList = this.c;
    int i = this.c.size();
    q[] arrayOfq = new q[i];
    for (int j = 0; j < i; j++)
      arrayOfq[j] = ((q)((o)localArrayList.get(j)).c());
    return new n(arrayOfq);
  }

  public final Object a(float paramFloat)
  {
    return Integer.valueOf(b(paramFloat));
  }

  public final int b(float paramFloat)
  {
    int i = 1;
    if (this.a == 2)
    {
      if (this.h)
      {
        this.h = false;
        this.e = ((q)this.c.get(0)).b;
        this.f = ((q)this.c.get(i)).b;
        this.g = (this.f - this.e);
      }
      if (this.b != null)
        paramFloat = this.b.getInterpolation(paramFloat);
      if (this.d == null)
        return this.e + (int)(paramFloat * this.g);
      return ((Number)this.d.a(paramFloat, Integer.valueOf(this.e), Integer.valueOf(this.f))).intValue();
    }
    if (paramFloat <= 0.0F)
    {
      q localq4 = (q)this.c.get(0);
      q localq5 = (q)this.c.get(i);
      int i1 = localq4.b;
      int i2 = localq5.b;
      float f5 = localq4.a;
      float f6 = localq5.a;
      Interpolator localInterpolator3 = localq5.b();
      if (localInterpolator3 != null)
        paramFloat = localInterpolator3.getInterpolation(paramFloat);
      float f7 = (paramFloat - f5) / (f6 - f5);
      if (this.d == null)
        return i1 + (int)(f7 * (i2 - i1));
      return ((Number)this.d.a(f7, Integer.valueOf(i1), Integer.valueOf(i2))).intValue();
    }
    if (paramFloat >= 1.0F)
    {
      q localq2 = (q)this.c.get(-2 + this.a);
      q localq3 = (q)this.c.get(-1 + this.a);
      int m = localq2.b;
      int n = localq3.b;
      float f2 = localq2.a;
      float f3 = localq3.a;
      Interpolator localInterpolator2 = localq3.b();
      if (localInterpolator2 != null)
        paramFloat = localInterpolator2.getInterpolation(paramFloat);
      float f4 = (paramFloat - f2) / (f3 - f2);
      if (this.d == null)
        return m + (int)(f4 * (n - m));
      return ((Number)this.d.a(f4, Integer.valueOf(m), Integer.valueOf(n))).intValue();
    }
    q localq1;
    for (Object localObject = (q)this.c.get(0); i < this.a; localObject = localq1)
    {
      localq1 = (q)this.c.get(i);
      if (paramFloat < localq1.a)
      {
        Interpolator localInterpolator1 = localq1.b();
        if (localInterpolator1 != null)
          paramFloat = localInterpolator1.getInterpolation(paramFloat);
        float f1 = (paramFloat - ((o)localObject).a) / (localq1.a - ((o)localObject).a);
        int j = ((q)localObject).b;
        int k = localq1.b;
        if (this.d == null)
          return j + (int)(f1 * (k - j));
        return ((Number)this.d.a(f1, Integer.valueOf(j), Integer.valueOf(k))).intValue();
      }
      i++;
    }
    return ((Number)((o)this.c.get(-1 + this.a)).a()).intValue();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.comca.n
 * JD-Core Version:    0.6.0
 */