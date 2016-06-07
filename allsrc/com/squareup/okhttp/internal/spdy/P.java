package com.squareup.okhttp.internal.spdy;

import java.io.InterruptedIOException;
import okio.a;

final class P extends a
{
  P(M paramM)
  {
  }

  protected final void a()
  {
    this.b.b(ErrorCode.CANCEL);
  }

  public final void b()
  {
    if (c_())
      throw new InterruptedIOException("timeout");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.P
 * JD-Core Version:    0.6.0
 */