package com.clilystudio.netbook.hpay100.b;

import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;

public final class b extends a
{
  public b(HttpEntity paramHttpEntity)
  {
    super(paramHttpEntity);
  }

  final InputStream a(InputStream paramInputStream)
  {
    return new GZIPInputStream(paramInputStream);
  }

  public final Header getContentEncoding()
  {
    return null;
  }

  public final long getContentLength()
  {
    return -1L;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.b.b
 * JD-Core Version:    0.6.0
 */