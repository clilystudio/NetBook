package com.b;

import java.io.Closeable;
import java.io.InputStream;

public final class h
  implements Closeable
{
  private final String a;
  private final long b;
  private final InputStream[] c;

  private h(c paramc, String paramString, long paramLong, InputStream[] paramArrayOfInputStream)
  {
    this.a = paramString;
    this.b = paramLong;
    this.c = paramArrayOfInputStream;
  }

  public final a a()
  {
    return c.a(this.d, this.a, this.b);
  }

  public final InputStream a(int paramInt)
  {
    return this.c[paramInt];
  }

  public final void close()
  {
    InputStream[] arrayOfInputStream = this.c;
    int i = arrayOfInputStream.length;
    for (int j = 0; j < i; j++)
      a.a(arrayOfInputStream[j]);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.b.h
 * JD-Core Version:    0.6.0
 */