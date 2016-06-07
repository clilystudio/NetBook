package com.alipay.android.phone.mrpc.core;

import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.impl.client.DefaultRedirectHandler;
import org.apache.http.protocol.HttpContext;

final class j extends DefaultRedirectHandler
{
  private int a;

  j(i parami)
  {
  }

  public final boolean isRedirectRequested(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    this.a = (1 + this.a);
    boolean bool = super.isRedirectRequested(paramHttpResponse, paramHttpContext);
    if ((!bool) && (this.a < 5))
    {
      int i = paramHttpResponse.getStatusLine().getStatusCode();
      if ((i == 301) || (i == 302))
        bool = true;
    }
    return bool;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.j
 * JD-Core Version:    0.6.0
 */