package com.nostra13.universalimageloader.core;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.support.design.widget.K;
import android.text.TextUtils;
import android.widget.ImageView;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;

public class f
{
  public static final String a = f.class.getSimpleName();
  private static volatile f e;
  private g b;
  private l c;
  private final com.nostra13.universalimageloader.core.d.a d = new com.nostra13.universalimageloader.core.d.b();

  private static Handler a(d paramd)
  {
    Handler localHandler = paramd.r();
    if (paramd.s())
      localHandler = null;
    do
      return localHandler;
    while ((localHandler != null) || (Looper.myLooper() != Looper.getMainLooper()));
    return new Handler();
  }

  public static f a()
  {
    if (e == null)
      monitorenter;
    try
    {
      if (e == null)
        e = new f();
      return e;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private void a(String paramString, com.nostra13.universalimageloader.core.c.a parama, d paramd, com.nostra13.universalimageloader.core.d.a parama1, K paramK)
  {
    b();
    if (parama1 == null);
    for (com.nostra13.universalimageloader.core.d.a locala = this.d; ; locala = parama1)
    {
      if (paramd == null);
      for (d locald = this.b.p; ; locald = paramd)
      {
        if (TextUtils.isEmpty(paramString))
        {
          this.c.b(parama);
          parama.d();
          if (locald.b())
            parama.a(locald.b(this.b.a));
          while (true)
          {
            parama.d();
            locala.a(null);
            return;
            parama.a(null);
          }
        }
        com.nostra13.universalimageloader.core.assist.c localc = com.nostra13.universalimageloader.b.a.a(parama, this.b.a());
        String str = paramString + "_" + localc.a() + "x" + localc.b();
        this.c.a(parama, str);
        parama.d();
        Bitmap localBitmap = (Bitmap)this.b.l.b(str);
        if ((localBitmap != null) && (!localBitmap.isRecycled()))
        {
          com.nostra13.universalimageloader.b.d.a("Load image from memory cache [%s]", new Object[] { str });
          if (locald.e())
          {
            n localn2 = new n(paramString, parama, localc, str, locald, locala, paramK, this.c.a(paramString));
            r localr = new r(this.c, localBitmap, localn2, a(locald));
            if (locald.s())
            {
              localr.run();
              return;
            }
            this.c.a(localr);
            return;
          }
          com.nostra13.universalimageloader.core.b.a locala1 = locald.q();
          locala1.a(localBitmap, parama);
          parama.d();
          locala.a(localBitmap);
          return;
        }
        if (locald.a())
          parama.a(locald.a(this.b.a));
        LoadAndDisplayImageTask localLoadAndDisplayImageTask;
        while (true)
        {
          n localn1 = new n(paramString, parama, localc, str, locald, locala, paramK, this.c.a(paramString));
          localLoadAndDisplayImageTask = new LoadAndDisplayImageTask(this.c, localn1, a(locald));
          if (!locald.s())
            break;
          localLoadAndDisplayImageTask.run();
          return;
          if (!locald.g())
            continue;
          parama.a(null);
        }
        this.c.a(localLoadAndDisplayImageTask);
        return;
      }
    }
  }

  private void b()
  {
    if (this.b == null)
      throw new IllegalStateException("ImageLoader must be init with configuration before using");
  }

  public final void a(g paramg)
  {
    monitorenter;
    if (paramg == null)
      try
      {
        throw new IllegalArgumentException("ImageLoader configuration can not be initialized with null");
      }
      finally
      {
        monitorexit;
      }
    if (this.b == null)
    {
      com.nostra13.universalimageloader.b.d.a("Initialize ImageLoader with configuration", new Object[0]);
      this.c = new l(paramg);
      this.b = paramg;
    }
    while (true)
    {
      monitorexit;
      return;
      com.nostra13.universalimageloader.b.d.c("Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first.", new Object[0]);
    }
  }

  public final void a(String paramString, ImageView paramImageView, d paramd, com.nostra13.universalimageloader.core.d.a parama)
  {
    a(paramString, new com.nostra13.universalimageloader.core.c.b(paramImageView), paramd, parama, null);
  }

  public final void a(String paramString, com.nostra13.universalimageloader.core.d.a parama)
  {
    b();
    com.nostra13.universalimageloader.core.assist.c localc = this.b.a();
    d locald = this.b.p;
    a(paramString, new com.nostra13.universalimageloader.core.c.c(paramString, localc, ViewScaleType.CROP), locald, parama, null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.f
 * JD-Core Version:    0.6.0
 */