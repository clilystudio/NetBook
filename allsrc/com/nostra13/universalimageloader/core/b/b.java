package com.nostra13.universalimageloader.core.b;

import android.graphics.Bitmap;

public final class b
  implements a
{
  private int a;
  private int b;

  public b(int paramInt)
  {
    this(paramInt, 0);
  }

  private b(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = 0;
  }

  public final void a(Bitmap paramBitmap, com.nostra13.universalimageloader.core.c.a parama)
  {
    if (!(parama instanceof com.nostra13.universalimageloader.core.c.b))
      throw new IllegalArgumentException("ImageAware should wrap ImageView. ImageViewAware is expected.");
    parama.a(new c(paramBitmap, this.a, this.b));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.b.b
 * JD-Core Version:    0.6.0
 */