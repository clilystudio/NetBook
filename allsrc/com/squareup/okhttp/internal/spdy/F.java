package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.util.List;
import java.util.Set;

final class F extends com.squareup.okhttp.internal.c
{
  F(A paramA, String paramString, Object[] paramArrayOfObject, int paramInt, List paramList, boolean paramBoolean)
  {
    super(paramString, paramArrayOfObject);
  }

  public final void b()
  {
    A.h(this.d).b();
    try
    {
      this.d.i.a(this.a, ErrorCode.CANCEL);
      synchronized (this.d)
      {
        A.i(this.d).remove(Integer.valueOf(this.a));
        return;
      }
    }
    catch (IOException localIOException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.F
 * JD-Core Version:    0.6.0
 */