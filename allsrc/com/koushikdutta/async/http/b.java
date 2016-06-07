package com.koushikdutta.async.http;

import com.koushikdutta.async.AsyncServer;
import com.koushikdutta.async.C;

final class b extends C
{
  public static b a(AsyncServer paramAsyncServer, Exception paramException)
  {
    b localb = new b();
    paramAsyncServer.a(new c(localb, paramException), 0L);
    return localb;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.b
 * JD-Core Version:    0.6.0
 */