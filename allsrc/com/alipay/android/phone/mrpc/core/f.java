package com.alipay.android.phone.mrpc.core;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

final class f
  implements HttpRequestInterceptor
{
  private f(e parame)
  {
  }

  public final void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    g localg = e.a(this.a);
    if ((localg != null) && (g.a(localg)) && ((paramHttpRequest instanceof HttpUriRequest)))
      g.a(localg, e.a((HttpUriRequest)paramHttpRequest));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.f
 * JD-Core Version:    0.6.0
 */