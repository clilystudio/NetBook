package com.nostra13.universalimageloader.core;

import android.graphics.Bitmap;
import android.os.Handler;
import android.support.design.widget.K;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;

final class r
  implements Runnable
{
  private final l a;
  private final Bitmap b;
  private final n c;
  private final Handler d;

  public r(l paraml, Bitmap paramBitmap, n paramn, Handler paramHandler)
  {
    this.a = paraml;
    this.b = paramBitmap;
    this.c = paramn;
    this.d = paramHandler;
  }

  public final void run()
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.c.b;
    com.nostra13.universalimageloader.b.d.a("PostProcess image before displaying [%s]", arrayOfObject);
    LoadAndDisplayImageTask.a(new c(this.c.e.p().i(), this.c, this.a, LoadedFrom.MEMORY_CACHE), this.c.e.s(), this.d, this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.r
 * JD-Core Version:    0.6.0
 */