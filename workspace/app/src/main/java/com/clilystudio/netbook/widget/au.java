package com.clilystudio.netbook.widget;

import android.graphics.ColorFilter;
import android.graphics.LightingColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;

final class au extends LayerDrawable
{
  private ColorFilter a = new LightingColorFilter(-3355444, 1);
  private int b = 100;
  private int c = 255;

  public au(Drawable paramDrawable)
  {
    super(new Drawable[] { paramDrawable });
  }

  public final boolean isStateful()
  {
    return true;
  }

  protected final boolean onStateChange(int[] paramArrayOfInt)
  {
    int i = 0;
    int j = paramArrayOfInt.length;
    int k = 0;
    int m = 0;
    if (k < j)
    {
      int n = paramArrayOfInt[k];
      if (n == 16842910)
        m = 1;
      while (true)
      {
        k++;
        break;
        if (n != 16842919)
          continue;
        i = 1;
      }
    }
    mutate();
    if ((m != 0) && (i != 0))
      setColorFilter(this.a);
    while (true)
    {
      invalidateSelf();
      return super.onStateChange(paramArrayOfInt);
      if (m == 0)
      {
        setColorFilter(null);
        setAlpha(this.b);
        continue;
      }
      setColorFilter(null);
      setAlpha(this.c);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.au
 * JD-Core Version:    0.6.0
 */