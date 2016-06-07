package com.integralblue.httpresponsecache.compat.libcore.a;

import java.io.EOFException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicReference;

public final class b
{
  static
  {
    new AtomicReference();
  }

  public static int a(InputStream paramInputStream)
  {
    int i = -1;
    byte[] arrayOfByte = new byte[1];
    if (paramInputStream.read(arrayOfByte, 0, 1) != i)
      i = 0xFF & arrayOfByte[0];
    return i;
  }

  public static void b(InputStream paramInputStream)
  {
    do
      paramInputStream.skip(9223372036854775807L);
    while (paramInputStream.read() != -1);
  }

  public static String c(InputStream paramInputStream)
  {
    StringBuilder localStringBuilder = new StringBuilder(80);
    while (true)
    {
      int i = paramInputStream.read();
      if (i == -1)
        throw new EOFException();
      if (i == 10)
        break;
      localStringBuilder.append((char)i);
    }
    int j = localStringBuilder.length();
    if ((j > 0) && (localStringBuilder.charAt(j - 1) == '\r'))
      localStringBuilder.setLength(j - 1);
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.a.b
 * JD-Core Version:    0.6.0
 */