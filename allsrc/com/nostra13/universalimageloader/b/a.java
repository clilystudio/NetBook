package com.nostra13.universalimageloader.b;

import android.opengl.GLES10;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.assist.c;

public final class a
{
  private static c a;

  static
  {
    int[] arrayOfInt = new int[1];
    GLES10.glGetIntegerv(3379, arrayOfInt, 0);
    int i = Math.max(arrayOfInt[0], 2048);
    a = new c(i, i);
  }

  public static int a(c paramc)
  {
    int i = paramc.a();
    int j = paramc.b();
    int k = a.a();
    int m = a.b();
    return Math.max((int)Math.ceil(i / k), (int)Math.ceil(j / m));
  }

  public static int a(c paramc1, c paramc2, ViewScaleType paramViewScaleType, boolean paramBoolean)
  {
    int i = paramc1.a();
    int j = paramc1.b();
    int k = paramc2.a();
    int m = paramc2.b();
    int n = i / k;
    int i1 = j / m;
    int i2;
    switch (b.a[paramViewScaleType.ordinal()])
    {
    default:
      i2 = 1;
    case 1:
    case 2:
    }
    while (i2 <= 0)
    {
      return 1;
      if (paramBoolean)
      {
        int i5 = j;
        int i6 = i;
        i2 = 1;
        while ((i6 / 2 >= k) || (i5 / 2 >= m))
        {
          i6 /= 2;
          i5 /= 2;
          i2 <<= 1;
        }
      }
      i2 = Math.max(n, i1);
      continue;
      if (paramBoolean)
      {
        int i3 = j;
        int i4 = i;
        i2 = 1;
        while ((i4 / 2 >= k) && (i3 / 2 >= m))
        {
          i4 /= 2;
          i3 /= 2;
          i2 <<= 1;
        }
        continue;
      }
      i2 = Math.min(n, i1);
    }
    return i2;
  }

  public static c a(com.nostra13.universalimageloader.core.c.a parama, c paramc)
  {
    int i = parama.a();
    if (i <= 0)
      i = paramc.a();
    int j = parama.b();
    if (j <= 0)
      j = paramc.b();
    return new c(i, j);
  }

  public static float b(c paramc1, c paramc2, ViewScaleType paramViewScaleType, boolean paramBoolean)
  {
    int i = paramc1.a();
    int j = paramc1.b();
    int k = paramc2.a();
    int m = paramc2.b();
    float f1 = i / k;
    float f2 = j / m;
    int i1;
    if (((paramViewScaleType == ViewScaleType.FIT_INSIDE) && (f1 >= f2)) || ((paramViewScaleType == ViewScaleType.CROP) && (f1 < f2)))
      i1 = (int)(j / f1);
    int n;
    for (int i2 = k; ; i2 = n)
    {
      float f3 = 1.0F;
      if (((!paramBoolean) && (i2 < i) && (i1 < j)) || ((paramBoolean) && (i2 != i) && (i1 != j)))
        f3 = i2 / i;
      return f3;
      n = (int)(i / f2);
      i1 = m;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.b.a
 * JD-Core Version:    0.6.0
 */