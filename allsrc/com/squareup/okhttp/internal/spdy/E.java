package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.util.List;
import java.util.Set;

final class E extends com.squareup.okhttp.internal.c
{
  E(A paramA, String paramString, Object[] paramArrayOfObject, int paramInt, List paramList)
  {
    super(paramString, paramArrayOfObject);
  }

  public final void b()
  {
    A.h(this.c).a();
    try
    {
      this.c.i.a(this.a, ErrorCode.CANCEL);
      synchronized (this.c)
      {
        A.i(this.c).remove(Integer.valueOf(this.a));
        return;
      }
    }
    catch (IOException localIOException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.E
 * JD-Core Version:    0.6.0
 */