package com.koushikdutta.async.http.filter;

import com.koushikdutta.async.a.b;
import com.koushikdutta.async.v;
import com.koushikdutta.async.y;
import java.nio.ByteBuffer;
import java.util.zip.CRC32;

final class h
  implements b
{
  h(e parame)
  {
  }

  public final void a(y paramy, v paramv)
  {
    if (this.a.a)
      while (paramv.l() > 0)
      {
        ByteBuffer localByteBuffer = paramv.k();
        this.a.d.b.update(localByteBuffer.array(), localByteBuffer.arrayOffset() + localByteBuffer.position(), localByteBuffer.remaining());
        v.c(localByteBuffer);
      }
    paramv.j();
    e.b(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.filter.h
 * JD-Core Version:    0.6.0
 */