package com.c.b;

import android.os.Build.VERSION;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.WeakHashMap;

public abstract class a
{
  private static final WeakHashMap<View, a> a = new WeakHashMap(0);

  public static a a(View paramView)
  {
    Object localObject = (a)a.get(paramView);
    int i;
    if (localObject == null)
    {
      i = Integer.valueOf(Build.VERSION.SDK).intValue();
      if (i < 14)
        break label51;
      localObject = new g(paramView);
    }
    while (true)
    {
      a.put(paramView, localObject);
      return localObject;
      label51: if (i >= 11)
      {
        localObject = new b(paramView);
        continue;
      }
      localObject = new h(paramView);
    }
  }

  public abstract a a(float paramFloat);

  public abstract a a(long paramLong);

  public abstract a a(Interpolator paramInterpolator);

  public abstract void a();

  public abstract a b(float paramFloat);

  public abstract a b(long paramLong);

  public abstract a c(float paramFloat);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.c.b.a
 * JD-Core Version:    0.6.0
 */