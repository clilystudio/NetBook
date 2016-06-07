package com.squareup.okhttp.internal.spdy;

import java.io.IOException;
import java.util.logging.Logger;
import okio.ByteString;
import okio.i;

public final class h
  implements Q
{
  private static final Logger a = Logger.getLogger(j.class.getName());
  private static final ByteString b = ByteString.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

  private static IOException c(String paramString, Object[] paramArrayOfObject)
  {
    throw new IOException(String.format(paramString, paramArrayOfObject));
  }

  public final a a(i parami, boolean paramBoolean)
  {
    return new k(parami, 4096, paramBoolean);
  }

  public final c a(okio.h paramh, boolean paramBoolean)
  {
    return new l(paramh, paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.spdy.h
 * JD-Core Version:    0.6.0
 */