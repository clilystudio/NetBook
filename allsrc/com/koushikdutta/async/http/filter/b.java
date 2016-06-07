package com.koushikdutta.async.http.filter;

import com.koushikdutta.async.A;
import com.koushikdutta.async.E;
import com.koushikdutta.async.v;
import java.nio.ByteBuffer;

public final class b extends E
{
  public b(A paramA)
  {
    super(paramA);
  }

  public final v b(v paramv)
  {
    paramv.b(ByteBuffer.wrap((Integer.toString(paramv.c(), 16) + "\r\n").getBytes()));
    paramv.a(ByteBuffer.wrap("\r\n".getBytes()));
    return paramv;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.filter.b
 * JD-Core Version:    0.6.0
 */