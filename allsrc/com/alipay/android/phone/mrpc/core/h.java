package com.alipay.android.phone.mrpc.core;

import android.os.Looper;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.protocol.HttpContext;

final class h
  implements HttpRequestInterceptor
{
  public final void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    if ((Looper.myLooper() != null) && (Looper.myLooper() == Looper.getMainLooper()))
      throw new RuntimeException("This thread forbids HTTP requests");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.h
 * JD-Core Version:    0.6.0
 */