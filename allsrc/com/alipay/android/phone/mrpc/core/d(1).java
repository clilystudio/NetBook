package com.alipay.android.phone.mrpc.core;

import java.io.IOException;
import java.net.SocketException;
import javax.net.ssl.SSLException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.protocol.HttpContext;

public class d
  implements HttpRequestRetryHandler
{
  private static String a = d.class.getSimpleName();

  public boolean retryRequest(IOException paramIOException, int paramInt, HttpContext paramHttpContext)
  {
    if (paramInt >= 3);
    do
    {
      return false;
      if ((paramIOException instanceof NoHttpResponseException))
        return true;
    }
    while (((!(paramIOException instanceof SocketException)) && (!(paramIOException instanceof SSLException))) || (paramIOException.getMessage() == null) || (!paramIOException.getMessage().contains("Broken pipe")));
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.d
 * JD-Core Version:    0.6.0
 */