package com.nostra13.universalimageloader.a.a.a.a;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.nostra13.universalimageloader.b.c;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public final class h
  implements com.nostra13.universalimageloader.a.a.a
{
  private static Bitmap.CompressFormat a = Bitmap.CompressFormat.PNG;
  private a b;
  private File c;
  private com.nostra13.universalimageloader.a.a.b.a d;
  private int e = 32768;
  private Bitmap.CompressFormat f = a;
  private int g = 100;

  public h(File paramFile, com.nostra13.universalimageloader.a.a.b.a parama, long paramLong, int paramInt)
  {
    if (paramFile == null)
      throw new IllegalArgumentException("cacheDir argument must be not null");
    if (paramLong < 0L)
      throw new IllegalArgumentException("cacheMaxSize argument must be positive number");
    if (paramInt < 0)
      throw new IllegalArgumentException("cacheMaxFileCount argument must be positive number");
    if (parama == null)
      throw new IllegalArgumentException("fileNameGenerator argument must be not null");
    long l;
    if (paramLong == 0L)
      l = 9223372036854775807L;
    while (true)
    {
      if (paramInt == 0);
      for (int i = 2147483647; ; i = paramInt)
      {
        this.d = parama;
        a(paramFile, this.c, l, i);
        return;
      }
      l = paramLong;
    }
  }

  private void a(File paramFile1, File paramFile2, long paramLong, int paramInt)
  {
    File localFile = paramFile1;
    while (true)
      try
      {
        this.b = a.a(localFile, 1, 1, paramLong, paramInt);
        return;
      }
      catch (IOException localIOException)
      {
        com.nostra13.universalimageloader.b.d.a(localIOException);
        if (paramFile2 == null)
          continue;
        localFile = paramFile2;
        paramFile2 = null;
      }
  }

  private String b(String paramString)
  {
    return this.d.a(paramString);
  }

  // ERROR //
  public final File a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 70	com/nostra13/universalimageloader/a/a/a/a/h:b	Lcom/nostra13/universalimageloader/a/a/a/a/a;
    //   4: aload_0
    //   5: aload_1
    //   6: invokespecial 83	com/nostra13/universalimageloader/a/a/a/a/h:b	(Ljava/lang/String;)Ljava/lang/String;
    //   9: invokevirtual 86	com/nostra13/universalimageloader/a/a/a/a/a:a	(Ljava/lang/String;)Lcom/nostra13/universalimageloader/a/a/a/a/g;
    //   12: astore 7
    //   14: aload 7
    //   16: astore_3
    //   17: aconst_null
    //   18: astore 6
    //   20: aload_3
    //   21: ifnonnull +14 -> 35
    //   24: aload_3
    //   25: ifnull +7 -> 32
    //   28: aload_3
    //   29: invokevirtual 91	com/nostra13/universalimageloader/a/a/a/a/g:close	()V
    //   32: aload 6
    //   34: areturn
    //   35: aload_3
    //   36: iconst_0
    //   37: invokevirtual 94	com/nostra13/universalimageloader/a/a/a/a/g:a	(I)Ljava/io/File;
    //   40: astore 8
    //   42: aload 8
    //   44: astore 6
    //   46: goto -22 -> 24
    //   49: astore 5
    //   51: aconst_null
    //   52: astore_3
    //   53: aload 5
    //   55: invokestatic 75	com/nostra13/universalimageloader/b/d:a	(Ljava/lang/Throwable;)V
    //   58: aconst_null
    //   59: astore 6
    //   61: aload_3
    //   62: ifnull -30 -> 32
    //   65: aload_3
    //   66: invokevirtual 91	com/nostra13/universalimageloader/a/a/a/a/g:close	()V
    //   69: aconst_null
    //   70: areturn
    //   71: astore_2
    //   72: aconst_null
    //   73: astore_3
    //   74: aload_2
    //   75: astore 4
    //   77: aload_3
    //   78: ifnull +7 -> 85
    //   81: aload_3
    //   82: invokevirtual 91	com/nostra13/universalimageloader/a/a/a/a/g:close	()V
    //   85: aload 4
    //   87: athrow
    //   88: astore 4
    //   90: goto -13 -> 77
    //   93: astore 5
    //   95: goto -42 -> 53
    //
    // Exception table:
    //   from	to	target	type
    //   0	14	49	java/io/IOException
    //   0	14	71	finally
    //   35	42	88	finally
    //   53	58	88	finally
    //   35	42	93	java/io/IOException
  }

  public final void a(File paramFile)
  {
    this.c = paramFile;
  }

  public final boolean a(String paramString, Bitmap paramBitmap)
  {
    d locald = this.b.b(b(paramString));
    if (locald == null)
      return false;
    BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(locald.a(0), this.e);
    boolean bool;
    try
    {
      bool = paramBitmap.compress(this.f, this.g, localBufferedOutputStream);
      com.arcsoft.hpay100.a.a.c(localBufferedOutputStream);
      if (bool)
      {
        locald.a();
        return bool;
      }
    }
    finally
    {
      com.arcsoft.hpay100.a.a.c(localBufferedOutputStream);
    }
    locald.b();
    return bool;
  }

  public final boolean a(String paramString, InputStream paramInputStream, c paramc)
  {
    d locald = this.b.b(b(paramString));
    if (locald == null)
      return false;
    BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(locald.a(0), this.e);
    try
    {
      boolean bool = com.arcsoft.hpay100.a.a.a(paramInputStream, localBufferedOutputStream, paramc, this.e);
      com.arcsoft.hpay100.a.a.c(localBufferedOutputStream);
      if (bool)
      {
        locald.a();
        return bool;
      }
      locald.b();
      return bool;
    }
    finally
    {
      com.arcsoft.hpay100.a.a.c(localBufferedOutputStream);
      locald.b();
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.a.a.a.a.h
 * JD-Core Version:    0.6.0
 */