package com.b;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

final class g
{
  private final String a;
  private final long[] b;
  private boolean c;
  private a d;
  private long e;

  private g(c paramc, String paramString)
  {
    this.a = paramString;
    this.b = new long[c.e(paramc)];
  }

  private static IOException a(String[] paramArrayOfString)
  {
    throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
  }

  public final File a(int paramInt)
  {
    return new File(c.f(this.f), this.a + "." + paramInt);
  }

  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    for (long l : this.b)
      localStringBuilder.append(' ').append(l);
    return localStringBuilder.toString();
  }

  public final File b(int paramInt)
  {
    return new File(c.f(this.f), this.a + "." + paramInt + ".tmp");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.b.g
 * JD-Core Version:    0.6.0
 */