package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.l;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import okio.h;
import okio.i;

public final class x
  implements Q
{
  static final byte[] a;

  static
  {
    try
    {
      a = "".getBytes(l.c.name());
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new AssertionError();
  }

  public final a a(i parami, boolean paramBoolean)
  {
    return new y(parami, paramBoolean);
  }

  public final c a(h paramh, boolean paramBoolean)
  {
    return new z(paramh, paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.x
 * JD-Core Version:    0.6.0
 */