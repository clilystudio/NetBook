package com.squareup.okhttp;

import com.squareup.okhttp.internal.l;
import java.io.File;
import okio.h;

public abstract class E
{
  public static E a(z paramz, File paramFile)
  {
    if (paramFile == null)
      throw new NullPointerException("content == null");
    return new H(null, paramFile);
  }

  public static E a(z paramz, byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    if (paramArrayOfByte == null)
      throw new NullPointerException("content == null");
    l.a(paramArrayOfByte.length, 0L, i);
    return new G(paramz, i, paramArrayOfByte, 0);
  }

  public abstract z a();

  public abstract void a(h paramh);

  public long b()
  {
    return -1L;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.E
 * JD-Core Version:    0.6.0
 */