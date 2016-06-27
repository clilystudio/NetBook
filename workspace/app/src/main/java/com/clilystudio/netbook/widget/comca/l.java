package com.clilystudio.netbook.widget.comca;

import android.view.animation.Interpolator;
import java.util.ArrayList;

final class l extends r
{
  private float e;
  private float f;
  private float g;
  private boolean h = true;

  public l(p[] paramArrayOfp)
  {
    super(paramArrayOfp);
  }

  private l b()
  {
    ArrayList localArrayList = this.c;
    int i = this.c.size();
    p[] arrayOfp = new p[i];
    for (int j = 0; j < i; j++)
      arrayOfp[j] = ((p)((o)localArrayList.get(j)).c());
    return new l(arrayOfp);
  }

  public final Object a(float paramFloat)
  {
    return Float.valueOf(b(paramFloat));
  }

  public final float b(float paramFloat)
  {
    int i = 1;
    if (this.a == 2)
    {
      if (this.h)
      {
        this.h = false;
        this.e = ((p)this.c.get(0)).b;
        this.f = ((p)this.c.get(i)).b;
        this.g = (this.f - this.e);
      }
      if (this.b != null)
        paramFloat = this.b.getInterpolation(paramFloat);
      if (this.d == null)
        return this.e + paramFloat * this.g;
      return ((Number)this.d.a(paramFloat, Float.valueOf(this.e), Float.valueOf(this.f))).floatValue();
    }
    if (paramFloat <= 0.0F)
    {
      p localp4 = (p)this.c.get(0);
      p localp5 = (p)this.c.get(i);
      float f9 = localp4.b;
      float f10 = localp5.b;
      float f11 = localp4.a;
      float f12 = localp5.a;
      Interpolator localInterpolator3 = localp5.b();
      if (localInterpolator3 != null)
        paramFloat = localInterpolator3.getInterpolation(paramFloat);
      float f13 = (paramFloat - f11) / (f12 - f11);
      if (this.d == null)
        return f9 + f13 * (f10 - f9);
      return ((Number)this.d.a(f13, Float.valueOf(f9), Float.valueOf(f10))).floatValue();
    }
    if (paramFloat >= 1.0F)
    {
      p localp2 = (p)this.c.get(-2 + this.a);
      p localp3 = (p)this.c.get(-1 + this.a);
      float f4 = localp2.b;
      float f5 = localp3.b;
      float f6 = localp2.a;
      float f7 = localp3.a;
      Interpolator localInterpolator2 = localp3.b();
      if (localInterpolator2 != null)
        paramFloat = localInterpolator2.getInterpolation(paramFloat);
      float f8 = (paramFloat - f6) / (f7 - f6);
      if (this.d == null)
        return f4 + f8 * (f5 - f4);
      return ((Number)this.d.a(f8, Float.valueOf(f4), Float.valueOf(f5))).floatValue();
    }
    p localp1;
    for (Object localObject = (p)this.c.get(0); i < this.a; localObject = localp1)
    {
      localp1 = (p)this.c.get(i);
      if (paramFloat < localp1.a)
      {
        Interpolator localInterpolator1 = localp1.b();
        if (localInterpolator1 != null)
          paramFloat = localInterpolator1.getInterpolation(paramFloat);
        float f1 = (paramFloat - ((o)localObject).a) / (localp1.a - ((o)localObject).a);
        float f2 = ((p)localObject).b;
        float f3 = localp1.b;
        if (this.d == null)
          return f2 + f1 * (f3 - f2);
        return ((Number)this.d.a(f1, Float.valueOf(f2), Float.valueOf(f3))).floatValue();
      }
      i++;
    }
    return ((Number)((o)this.c.get(-1 + this.a)).a()).floatValue();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.comca.l
 * JD-Core Version:    0.6.0
 */