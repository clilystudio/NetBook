package com.xiaomi.a.a.c;

import java.io.FilterInputStream;
import java.io.InputStream;

public final class b extends FilterInputStream
{
  private boolean a;

  public b(InputStream paramInputStream)
  {
    super(paramInputStream);
  }

  public final int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (!this.a)
    {
      int i = super.read(paramArrayOfByte, paramInt1, paramInt2);
      if (i != -1)
        return i;
    }
    this.a = true;
    return -1;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.a.a.c.b
 * JD-Core Version:    0.6.0
 */