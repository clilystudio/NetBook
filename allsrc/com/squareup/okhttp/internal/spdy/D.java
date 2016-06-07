package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.c;
import java.io.IOException;

final class D extends c
{
  D(A paramA, String paramString, Object[] paramArrayOfObject, boolean paramBoolean, int paramInt1, int paramInt2, t paramt)
  {
    super(paramString, paramArrayOfObject);
  }

  public final void b()
  {
    try
    {
      A.a(this.e, this.a, this.b, this.c, this.d);
      return;
    }
    catch (IOException localIOException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.D
 * JD-Core Version:    0.6.0
 */