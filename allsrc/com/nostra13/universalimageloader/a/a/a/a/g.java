package com.nostra13.universalimageloader.a.a.a.a;

import java.io.Closeable;
import java.io.File;
import java.io.InputStream;

public final class g
  implements Closeable
{
  private File[] a;
  private final InputStream[] b;

  private g(a parama, String paramString, long paramLong, File[] paramArrayOfFile, InputStream[] paramArrayOfInputStream, long[] paramArrayOfLong)
  {
    this.a = paramArrayOfFile;
    this.b = paramArrayOfInputStream;
  }

  public final File a(int paramInt)
  {
    return this.a[0];
  }

  public final void close()
  {
    InputStream[] arrayOfInputStream = this.b;
    int i = arrayOfInputStream.length;
    for (int j = 0; j < i; j++)
      k.a(arrayOfInputStream[j]);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.a.a.a.a.g
 * JD-Core Version:    0.6.0
 */