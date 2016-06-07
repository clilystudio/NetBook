package com.nostra13.universalimageloader.core;

import android.graphics.Bitmap;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;

final class c
  implements Runnable
{
  private final Bitmap a;
  private final String b;
  private final com.nostra13.universalimageloader.core.c.a c;
  private final String d;
  private final com.nostra13.universalimageloader.core.b.a e;
  private final com.nostra13.universalimageloader.core.d.a f;
  private final l g;
  private final LoadedFrom h;

  public c(Bitmap paramBitmap, n paramn, l paraml, LoadedFrom paramLoadedFrom)
  {
    this.a = paramBitmap;
    this.b = paramn.a;
    this.c = paramn.c;
    this.d = paramn.b;
    this.e = paramn.e.q();
    this.f = paramn.f;
    this.g = paraml;
    this.h = paramLoadedFrom;
  }

  public final void run()
  {
    if (this.c.e())
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = this.d;
      com.nostra13.universalimageloader.b.d.a("ImageAware was collected by GC. Task is cancelled. [%s]", arrayOfObject3);
      this.c.d();
      return;
    }
    String str = this.g.a(this.c);
    if (!this.d.equals(str));
    for (int i = 1; i != 0; i = 0)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = this.d;
      com.nostra13.universalimageloader.b.d.a("ImageAware is reused for another image. Task is cancelled. [%s]", arrayOfObject2);
      this.c.d();
      return;
    }
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = this.h;
    arrayOfObject1[1] = this.d;
    com.nostra13.universalimageloader.b.d.a("Display image in ImageAware (loaded from %1$s) [%2$s]", arrayOfObject1);
    this.e.a(this.a, this.c);
    this.g.b(this.c);
    com.nostra13.universalimageloader.core.d.a locala = this.f;
    this.c.d();
    locala.a(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.c
 * JD-Core Version:    0.6.0
 */