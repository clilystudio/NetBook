package com.clilystudio.netbook.widget.comca;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Arrays;

class r
{
  int a;
  Interpolator b;
  ArrayList<o> c;
  v d;
  private o e;
  private o f;

  public r(o[] paramArrayOfo)
  {
    this.a = paramArrayOfo.length;
    this.c = new ArrayList();
    this.c.addAll(Arrays.asList(paramArrayOfo));
    this.e = ((o)this.c.get(0));
    this.f = ((o)this.c.get(-1 + this.a));
    this.b = this.f.b();
  }

  public r a()
  {
    ArrayList localArrayList = this.c;
    int i = this.c.size();
    o[] arrayOfo = new o[i];
    for (int j = 0; j < i; j++)
      arrayOfo[j] = ((o)localArrayList.get(j)).c();
    return new r(arrayOfo);
  }

  public Object a(float paramFloat)
  {
    if (this.a == 2)
    {
      if (this.b != null)
        paramFloat = this.b.getInterpolation(paramFloat);
      return this.d.a(paramFloat, this.e.a(), this.f.a());
    }
    if (paramFloat <= 0.0F)
    {
      o localo3 = (o)this.c.get(1);
      Interpolator localInterpolator3 = localo3.b();
      if (localInterpolator3 != null)
        paramFloat = localInterpolator3.getInterpolation(paramFloat);
      float f5 = this.e.a;
      float f6 = (paramFloat - f5) / (localo3.a - f5);
      return this.d.a(f6, this.e.a(), localo3.a());
    }
    if (paramFloat >= 1.0F)
    {
      o localo2 = (o)this.c.get(-2 + this.a);
      Interpolator localInterpolator2 = this.f.b();
      if (localInterpolator2 != null)
        paramFloat = localInterpolator2.getInterpolation(paramFloat);
      float f3 = localo2.a;
      float f4 = (paramFloat - f3) / (this.f.a - f3);
      return this.d.a(f4, localo2.a(), this.f.a());
    }
    Object localObject = this.e;
    int i = 1;
    while (i < this.a)
    {
      o localo1 = (o)this.c.get(i);
      if (paramFloat < localo1.a)
      {
        Interpolator localInterpolator1 = localo1.b();
        if (localInterpolator1 != null)
          paramFloat = localInterpolator1.getInterpolation(paramFloat);
        float f1 = ((o)localObject).a;
        float f2 = (paramFloat - f1) / (localo1.a - f1);
        return this.d.a(f2, ((o)localObject).a(), localo1.a());
      }
      i++;
      localObject = localo1;
    }
    return this.f.a();
  }

  public String toString()
  {
    Object localObject = " ";
    int i = 0;
    while (i < this.a)
    {
      String str = (String)localObject + ((o)this.c.get(i)).a() + "  ";
      i++;
      localObject = str;
    }
    return (String)localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.comca.r
 * JD-Core Version:    0.6.0
 */