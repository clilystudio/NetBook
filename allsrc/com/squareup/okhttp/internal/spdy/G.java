package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.util.Set;
import okio.f;

final class G extends com.squareup.okhttp.internal.c
{
  G(A paramA, String paramString, Object[] paramArrayOfObject, int paramInt1, f paramf, int paramInt2, boolean paramBoolean)
  {
    super(paramString, paramArrayOfObject);
  }

  public final void b()
  {
    try
    {
      A.h(this.e).a(this.b, this.c);
      this.e.i.a(this.a, ErrorCode.CANCEL);
      synchronized (this.e)
      {
        A.i(this.e).remove(Integer.valueOf(this.a));
        return;
      }
    }
    catch (IOException localIOException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.G
 * JD-Core Version:    0.6.0
 */