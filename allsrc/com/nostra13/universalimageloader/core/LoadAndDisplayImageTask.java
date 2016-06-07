package com.nostra13.universalimageloader.core;

import android.graphics.Bitmap;
import android.os.Handler;
import android.support.design.widget.K;
import com.nostra13.universalimageloader.core.assist.FailReason.FailType;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.LoadedFrom;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.core.download.ImageDownloader;
import com.nostra13.universalimageloader.core.download.ImageDownloader.Scheme;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

final class LoadAndDisplayImageTask
  implements com.nostra13.universalimageloader.b.c, Runnable
{
  final String a;
  final com.nostra13.universalimageloader.core.c.a b;
  final d c;
  final com.nostra13.universalimageloader.core.d.a d;
  final K e;
  private final l f;
  private final n g;
  private final Handler h;
  private final g i;
  private final ImageDownloader j;
  private final ImageDownloader k;
  private final ImageDownloader l;
  private final com.nostra13.universalimageloader.core.a.d m;
  private final String n;
  private final com.nostra13.universalimageloader.core.assist.c o;
  private final boolean p;
  private LoadedFrom q = LoadedFrom.NETWORK;

  public LoadAndDisplayImageTask(l paraml, n paramn, Handler paramHandler)
  {
    this.f = paraml;
    this.g = paramn;
    this.h = paramHandler;
    this.i = paraml.a;
    this.j = this.i.n;
    this.k = this.i.q;
    this.l = this.i.r;
    this.m = this.i.o;
    this.a = paramn.a;
    this.n = paramn.b;
    this.b = paramn.c;
    this.o = paramn.d;
    this.c = paramn.e;
    this.d = paramn.f;
    this.e = paramn.g;
    this.p = this.c.s();
  }

  private Bitmap a(String paramString)
  {
    ViewScaleType localViewScaleType = this.b.c();
    com.nostra13.universalimageloader.core.a.e locale = new com.nostra13.universalimageloader.core.a.e(this.n, paramString, this.a, this.o, localViewScaleType, e(), this.c);
    return this.m.a(locale);
  }

  private void a(FailReason.FailType paramFailType, Throwable paramThrowable)
  {
    if ((this.p) || (k()) || (g()))
      return;
    a(new p(this, paramFailType, paramThrowable), false, this.h, this.f);
  }

  static void a(Runnable paramRunnable, boolean paramBoolean, Handler paramHandler, l paraml)
  {
    if (paramBoolean)
    {
      paramRunnable.run();
      return;
    }
    if (paramHandler == null)
    {
      paraml.a(paramRunnable);
      return;
    }
    paramHandler.post(paramRunnable);
  }

  private boolean a()
  {
    AtomicBoolean localAtomicBoolean = this.f.a();
    if (localAtomicBoolean.get());
    synchronized (this.f.b())
    {
      if (localAtomicBoolean.get())
      {
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = this.n;
        com.nostra13.universalimageloader.b.d.a("ImageLoader is paused. Waiting...  [%s]", arrayOfObject1);
      }
      try
      {
        this.f.b().wait();
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = this.n;
        com.nostra13.universalimageloader.b.d.a(".. Resume loading [%s]", arrayOfObject3);
        return g();
      }
      catch (InterruptedException localInterruptedException)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = this.n;
        com.nostra13.universalimageloader.b.d.d("Task was interrupted [%s]", arrayOfObject2);
        return true;
      }
    }
  }

  private boolean b()
  {
    if (this.c.f())
    {
      Object[] arrayOfObject1 = new Object[2];
      arrayOfObject1[0] = Integer.valueOf(this.c.l());
      arrayOfObject1[1] = this.n;
      com.nostra13.universalimageloader.b.d.a("Delay %d ms before loading...  [%s]", arrayOfObject1);
      try
      {
        Thread.sleep(this.c.l());
        return g();
      }
      catch (InterruptedException localInterruptedException)
      {
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = this.n;
        com.nostra13.universalimageloader.b.d.d("Task was interrupted [%s]", arrayOfObject2);
        return true;
      }
    }
    return false;
  }

  // ERROR //
  private Bitmap c()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 63	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:i	Lcom/nostra13/universalimageloader/core/g;
    //   4: getfield 226	com/nostra13/universalimageloader/core/g:m	Lcom/nostra13/universalimageloader/a/a/a;
    //   7: aload_0
    //   8: getfield 87	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:a	Ljava/lang/String;
    //   11: invokeinterface 231 2 0
    //   16: astore 10
    //   18: aload 10
    //   20: ifnull +313 -> 333
    //   23: aload 10
    //   25: invokevirtual 236	java/io/File:exists	()Z
    //   28: ifeq +305 -> 333
    //   31: iconst_1
    //   32: anewarray 4	java/lang/Object
    //   35: astore 15
    //   37: aload 15
    //   39: iconst_0
    //   40: aload_0
    //   41: getfield 91	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:n	Ljava/lang/String;
    //   44: aastore
    //   45: ldc 238
    //   47: aload 15
    //   49: invokestatic 184	com/nostra13/universalimageloader/b/d:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   52: aload_0
    //   53: getstatic 241	com/nostra13/universalimageloader/core/assist/LoadedFrom:DISC_CACHE	Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
    //   56: putfield 51	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:q	Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
    //   59: aload_0
    //   60: invokespecial 243	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:f	()V
    //   63: aload_0
    //   64: getstatic 249	com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme:FILE	Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
    //   67: aload 10
    //   69: invokevirtual 253	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   72: invokevirtual 257	com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme:wrap	(Ljava/lang/String;)Ljava/lang/String;
    //   75: invokespecial 259	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:a	(Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   78: astore 16
    //   80: aload 16
    //   82: astore_2
    //   83: aload_2
    //   84: ifnull +17 -> 101
    //   87: aload_2
    //   88: invokevirtual 264	android/graphics/Bitmap:getWidth	()I
    //   91: ifle +10 -> 101
    //   94: aload_2
    //   95: invokevirtual 267	android/graphics/Bitmap:getHeight	()I
    //   98: ifgt +128 -> 226
    //   101: iconst_1
    //   102: anewarray 4	java/lang/Object
    //   105: astore 12
    //   107: aload 12
    //   109: iconst_0
    //   110: aload_0
    //   111: getfield 91	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:n	Ljava/lang/String;
    //   114: aastore
    //   115: ldc_w 269
    //   118: aload 12
    //   120: invokestatic 184	com/nostra13/universalimageloader/b/d:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   123: aload_0
    //   124: getstatic 49	com/nostra13/universalimageloader/core/assist/LoadedFrom:NETWORK	Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
    //   127: putfield 51	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:q	Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;
    //   130: aload_0
    //   131: getfield 87	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:a	Ljava/lang/String;
    //   134: astore 13
    //   136: aload_0
    //   137: getfield 103	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:c	Lcom/nostra13/universalimageloader/core/d;
    //   140: invokevirtual 271	com/nostra13/universalimageloader/core/d:i	()Z
    //   143: ifeq +46 -> 189
    //   146: aload_0
    //   147: invokespecial 273	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:d	()Z
    //   150: ifeq +39 -> 189
    //   153: aload_0
    //   154: getfield 63	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:i	Lcom/nostra13/universalimageloader/core/g;
    //   157: getfield 226	com/nostra13/universalimageloader/core/g:m	Lcom/nostra13/universalimageloader/a/a/a;
    //   160: aload_0
    //   161: getfield 87	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:a	Ljava/lang/String;
    //   164: invokeinterface 231 2 0
    //   169: astore 14
    //   171: aload 14
    //   173: ifnull +16 -> 189
    //   176: getstatic 249	com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme:FILE	Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;
    //   179: aload 14
    //   181: invokevirtual 253	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   184: invokevirtual 257	com/nostra13/universalimageloader/core/download/ImageDownloader$Scheme:wrap	(Ljava/lang/String;)Ljava/lang/String;
    //   187: astore 13
    //   189: aload_0
    //   190: invokespecial 243	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:f	()V
    //   193: aload_0
    //   194: aload 13
    //   196: invokespecial 259	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:a	(Ljava/lang/String;)Landroid/graphics/Bitmap;
    //   199: astore_2
    //   200: aload_2
    //   201: ifnull +17 -> 218
    //   204: aload_2
    //   205: invokevirtual 264	android/graphics/Bitmap:getWidth	()I
    //   208: ifle +10 -> 218
    //   211: aload_2
    //   212: invokevirtual 267	android/graphics/Bitmap:getHeight	()I
    //   215: ifgt +11 -> 226
    //   218: aload_0
    //   219: getstatic 279	com/nostra13/universalimageloader/core/assist/FailReason$FailType:DECODING_ERROR	Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    //   222: aconst_null
    //   223: invokespecial 281	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:a	(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    //   226: aload_2
    //   227: areturn
    //   228: astore 9
    //   230: aconst_null
    //   231: astore_2
    //   232: aload_0
    //   233: getstatic 284	com/nostra13/universalimageloader/core/assist/FailReason$FailType:NETWORK_DENIED	Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    //   236: aconst_null
    //   237: invokespecial 281	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:a	(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    //   240: aload_2
    //   241: areturn
    //   242: astore 8
    //   244: aload 8
    //   246: athrow
    //   247: astore 6
    //   249: aconst_null
    //   250: astore_2
    //   251: aload 6
    //   253: astore 7
    //   255: aload 7
    //   257: invokestatic 287	com/nostra13/universalimageloader/b/d:a	(Ljava/lang/Throwable;)V
    //   260: aload_0
    //   261: getstatic 290	com/nostra13/universalimageloader/core/assist/FailReason$FailType:IO_ERROR	Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    //   264: aload 7
    //   266: invokespecial 281	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:a	(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    //   269: aload_2
    //   270: areturn
    //   271: astore 4
    //   273: aconst_null
    //   274: astore_2
    //   275: aload 4
    //   277: astore 5
    //   279: aload 5
    //   281: invokestatic 287	com/nostra13/universalimageloader/b/d:a	(Ljava/lang/Throwable;)V
    //   284: aload_0
    //   285: getstatic 293	com/nostra13/universalimageloader/core/assist/FailReason$FailType:OUT_OF_MEMORY	Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    //   288: aload 5
    //   290: invokespecial 281	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:a	(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    //   293: aload_2
    //   294: areturn
    //   295: astore_1
    //   296: aconst_null
    //   297: astore_2
    //   298: aload_1
    //   299: astore_3
    //   300: aload_3
    //   301: invokestatic 287	com/nostra13/universalimageloader/b/d:a	(Ljava/lang/Throwable;)V
    //   304: aload_0
    //   305: getstatic 296	com/nostra13/universalimageloader/core/assist/FailReason$FailType:UNKNOWN	Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;
    //   308: aload_3
    //   309: invokespecial 281	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask:a	(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    //   312: aload_2
    //   313: areturn
    //   314: astore_3
    //   315: goto -15 -> 300
    //   318: astore 5
    //   320: goto -41 -> 279
    //   323: astore 7
    //   325: goto -70 -> 255
    //   328: astore 11
    //   330: goto -98 -> 232
    //   333: aconst_null
    //   334: astore_2
    //   335: goto -252 -> 83
    //
    // Exception table:
    //   from	to	target	type
    //   0	18	228	java/lang/IllegalStateException
    //   23	80	228	java/lang/IllegalStateException
    //   0	18	242	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException
    //   23	80	242	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException
    //   87	101	242	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException
    //   101	171	242	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException
    //   176	189	242	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException
    //   189	200	242	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException
    //   204	218	242	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException
    //   218	226	242	com/nostra13/universalimageloader/core/LoadAndDisplayImageTask$TaskCancelledException
    //   0	18	247	java/io/IOException
    //   23	80	247	java/io/IOException
    //   0	18	271	java/lang/OutOfMemoryError
    //   23	80	271	java/lang/OutOfMemoryError
    //   0	18	295	java/lang/Throwable
    //   23	80	295	java/lang/Throwable
    //   87	101	314	java/lang/Throwable
    //   101	171	314	java/lang/Throwable
    //   176	189	314	java/lang/Throwable
    //   189	200	314	java/lang/Throwable
    //   204	218	314	java/lang/Throwable
    //   218	226	314	java/lang/Throwable
    //   87	101	318	java/lang/OutOfMemoryError
    //   101	171	318	java/lang/OutOfMemoryError
    //   176	189	318	java/lang/OutOfMemoryError
    //   189	200	318	java/lang/OutOfMemoryError
    //   204	218	318	java/lang/OutOfMemoryError
    //   218	226	318	java/lang/OutOfMemoryError
    //   87	101	323	java/io/IOException
    //   101	171	323	java/io/IOException
    //   176	189	323	java/io/IOException
    //   189	200	323	java/io/IOException
    //   204	218	323	java/io/IOException
    //   218	226	323	java/io/IOException
    //   87	101	328	java/lang/IllegalStateException
    //   101	171	328	java/lang/IllegalStateException
    //   176	189	328	java/lang/IllegalStateException
    //   189	200	328	java/lang/IllegalStateException
    //   204	218	328	java/lang/IllegalStateException
    //   218	226	328	java/lang/IllegalStateException
  }

  private boolean d()
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = this.n;
    com.nostra13.universalimageloader.b.d.a("Cache image on disk [%s]", arrayOfObject1);
    try
    {
      InputStream localInputStream = e().a(this.a, this.c.n());
      boolean bool = this.i.m.a(this.a, localInputStream, this);
      if (bool)
      {
        int i1 = this.i.b;
        int i2 = this.i.c;
        if ((i1 > 0) || (i2 > 0))
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = this.n;
          com.nostra13.universalimageloader.b.d.a("Resize image in disk cache [%s]", arrayOfObject2);
          File localFile = this.i.m.a(this.a);
          if ((localFile != null) && (localFile.exists()))
          {
            com.nostra13.universalimageloader.core.assist.c localc = new com.nostra13.universalimageloader.core.assist.c(i1, i2);
            d locald = new e().a(this.c).a(ImageScaleType.IN_SAMPLE_INT).a();
            com.nostra13.universalimageloader.core.a.e locale = new com.nostra13.universalimageloader.core.a.e(this.n, ImageDownloader.Scheme.FILE.wrap(localFile.getAbsolutePath()), this.a, localc, ViewScaleType.FIT_INSIDE, e(), locald);
            Bitmap localBitmap = this.m.a(locale);
            if ((localBitmap != null) && (this.i.d != null))
            {
              Object[] arrayOfObject3 = new Object[1];
              arrayOfObject3[0] = this.n;
              com.nostra13.universalimageloader.b.d.a("Process image before cache on disk [%s]", arrayOfObject3);
              localBitmap = this.i.d.i();
              if (localBitmap == null)
              {
                Object[] arrayOfObject4 = new Object[1];
                arrayOfObject4[0] = this.n;
                com.nostra13.universalimageloader.b.d.d("Bitmap processor for disk cache returned null [%s]", arrayOfObject4);
              }
            }
            if (localBitmap != null)
            {
              this.i.m.a(this.a, localBitmap);
              localBitmap.recycle();
            }
          }
        }
      }
      return bool;
    }
    catch (IOException localIOException)
    {
      com.nostra13.universalimageloader.b.d.a(localIOException);
    }
    return false;
  }

  private ImageDownloader e()
  {
    if (this.f.c())
      return this.k;
    if (this.f.d())
      return this.l;
    return this.j;
  }

  private void f()
  {
    if (h())
      throw new LoadAndDisplayImageTask.TaskCancelledException(this);
    if (i())
      throw new LoadAndDisplayImageTask.TaskCancelledException(this);
  }

  private boolean g()
  {
    return (h()) || (i());
  }

  private boolean h()
  {
    if (this.b.e())
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.n;
      com.nostra13.universalimageloader.b.d.a("ImageAware was collected by GC. Task is cancelled. [%s]", arrayOfObject);
      return true;
    }
    return false;
  }

  private boolean i()
  {
    String str = this.f.a(this.b);
    if (!this.n.equals(str));
    for (int i1 = 1; i1 != 0; i1 = 0)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.n;
      com.nostra13.universalimageloader.b.d.a("ImageAware is reused for another image. Task is cancelled. [%s]", arrayOfObject);
      return true;
    }
    return false;
  }

  private void j()
  {
    if (k())
      throw new LoadAndDisplayImageTask.TaskCancelledException(this);
  }

  private boolean k()
  {
    if (Thread.interrupted())
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.n;
      com.nostra13.universalimageloader.b.d.a("Task was interrupted [%s]", arrayOfObject);
      return true;
    }
    return false;
  }

  public final boolean a(int paramInt1, int paramInt2)
  {
    if ((this.p) || (k()) || (g()))
      return false;
    if (this.e != null)
      a(new o(this, paramInt1, paramInt2), false, this.h, this.f);
    return true;
  }

  public final void run()
  {
    if (a());
    do
      return;
    while (b());
    ReentrantLock localReentrantLock = this.g.h;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = this.n;
    com.nostra13.universalimageloader.b.d.a("Start display image task [%s]", arrayOfObject1);
    if (localReentrantLock.isLocked())
    {
      Object[] arrayOfObject8 = new Object[1];
      arrayOfObject8[0] = this.n;
      com.nostra13.universalimageloader.b.d.a("Image already is loading. Waiting... [%s]", arrayOfObject8);
    }
    localReentrantLock.lock();
    try
    {
      f();
      Object localObject2 = (Bitmap)this.i.l.b(this.n);
      if ((localObject2 == null) || (((Bitmap)localObject2).isRecycled()))
      {
        Bitmap localBitmap = c();
        localObject2 = localBitmap;
        if (localObject2 == null)
          return;
        f();
        j();
        if (this.c.d())
        {
          Object[] arrayOfObject5 = new Object[1];
          arrayOfObject5[0] = this.n;
          com.nostra13.universalimageloader.b.d.a("PreProcess image before caching in memory [%s]", arrayOfObject5);
          localObject2 = this.c.o().i();
          if (localObject2 == null)
          {
            Object[] arrayOfObject6 = new Object[1];
            arrayOfObject6[0] = this.n;
            com.nostra13.universalimageloader.b.d.d("Pre-processor returned null [%s]", arrayOfObject6);
          }
        }
        if ((localObject2 != null) && (this.c.h()))
        {
          Object[] arrayOfObject4 = new Object[1];
          arrayOfObject4[0] = this.n;
          com.nostra13.universalimageloader.b.d.a("Cache image in memory [%s]", arrayOfObject4);
          this.i.l.a(this.n, localObject2);
        }
      }
      while (true)
      {
        if ((localObject2 != null) && (this.c.e()))
        {
          Object[] arrayOfObject2 = new Object[1];
          arrayOfObject2[0] = this.n;
          com.nostra13.universalimageloader.b.d.a("PostProcess image before displaying [%s]", arrayOfObject2);
          localObject2 = this.c.p().i();
          if (localObject2 == null)
          {
            Object[] arrayOfObject3 = new Object[1];
            arrayOfObject3[0] = this.n;
            com.nostra13.universalimageloader.b.d.d("Post-processor returned null [%s]", arrayOfObject3);
          }
        }
        f();
        j();
        localReentrantLock.unlock();
        a(new c((Bitmap)localObject2, this.g, this.f, this.q), this.p, this.h, this.f);
        return;
        this.q = LoadedFrom.MEMORY_CACHE;
        Object[] arrayOfObject7 = new Object[1];
        arrayOfObject7[0] = this.n;
        com.nostra13.universalimageloader.b.d.a("...Get cached bitmap from memory after waiting. [%s]", arrayOfObject7);
      }
    }
    catch (LoadAndDisplayImageTask.TaskCancelledException localTaskCancelledException)
    {
      if (!this.p)
      {
        boolean bool = k();
        if (!bool)
          break label454;
      }
      while (true)
      {
        return;
        label454: a(new q(this), false, this.h, this.f);
      }
    }
    finally
    {
      localReentrantLock.unlock();
    }
    throw localObject1;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.LoadAndDisplayImageTask
 * JD-Core Version:    0.6.0
 */