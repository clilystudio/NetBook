package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.b;
import com.squareup.okhttp.internal.c;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

final class K extends c
{
  K(J paramJ, String paramString, Object[] paramArrayOfObject, M paramM)
  {
    super(paramString, paramArrayOfObject);
  }

  public final void b()
  {
    try
    {
      A.f(this.b.a).a(this.a);
      return;
    }
    catch (IOException localIOException1)
    {
      b.a.log(Level.INFO, "StreamHandler failure for " + A.a(this.b.a), localIOException1);
      try
      {
        this.a.a(ErrorCode.PROTOCOL_ERROR);
        return;
      }
      catch (IOException localIOException2)
      {
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.K
 * JD-Core Version:    0.6.0
 */