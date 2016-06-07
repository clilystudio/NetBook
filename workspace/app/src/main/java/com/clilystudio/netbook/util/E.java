package com.clilystudio.netbook.util;

import android.content.Context;
import android.content.res.Resources;

public final class E
{
  private float a;
  private float b;
  private float c;

  public E(Context paramContext, float paramFloat1, float paramFloat2)
  {
    paramContext.getResources().getDimension(2131099903);
    this.c = paramContext.getResources().getDimension(2131099904);
    this.a = paramFloat1;
    this.b = paramFloat2;
  }

  public final F a()
  {
    float f1 = this.a - this.b;
    for (int i = (int)(f1 / (this.b + this.c)); i > 0; i--)
    {
      float f2 = f1 / i - this.b;
      if (f2 >= this.c)
        return new F(i + 1, f2);
    }
    return new F(1, 0.0F);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.E
 * JD-Core Version:    0.6.0
 */