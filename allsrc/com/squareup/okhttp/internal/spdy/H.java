package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.c;
import java.util.Set;

final class H extends c
{
  H(A paramA, String paramString, Object[] paramArrayOfObject, int paramInt, ErrorCode paramErrorCode)
  {
    super(paramString, paramArrayOfObject);
  }

  public final void b()
  {
    A.h(this.c).c();
    synchronized (this.c)
    {
      A.i(this.c).remove(Integer.valueOf(this.a));
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.H
 * JD-Core Version:    0.6.0
 */