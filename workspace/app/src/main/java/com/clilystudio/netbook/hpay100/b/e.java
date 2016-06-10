package com.clilystudio.netbook.hpay100.b;

import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.protocol.HttpContext;

final class e
  implements HttpResponseInterceptor
{
  public final void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    Header localHeader = paramHttpResponse.getEntity().getContentEncoding();
    HeaderElement[] arrayOfHeaderElement;
    int i;
    if (localHeader != null)
    {
      arrayOfHeaderElement = localHeader.getElements();
      i = arrayOfHeaderElement.length;
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      if (!arrayOfHeaderElement[j].getName().equalsIgnoreCase("gzip"))
        continue;
      paramHttpResponse.setEntity(new b(paramHttpResponse.getEntity()));
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.b.e
 * JD-Core Version:    0.6.0
 */