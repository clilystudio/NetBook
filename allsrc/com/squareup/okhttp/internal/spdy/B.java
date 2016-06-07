package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.c;
import java.io.IOException;

final class B extends c
{
  B(A paramA, String paramString, Object[] paramArrayOfObject, int paramInt, ErrorCode paramErrorCode)
  {
    super(paramString, paramArrayOfObject);
  }

  public final void b()
  {
    try
    {
      this.c.b(this.a, this.b);
      return;
    }
    catch (IOException localIOException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.B
 * JD-Core Version:    0.6.0
 */