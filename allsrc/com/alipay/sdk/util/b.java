package com.alipay.sdk.util;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.apache.http.client.methods.HttpPost;

public final class b
{
  private static ThreadPoolExecutor a = new ThreadPoolExecutor(5, 5, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(20));
  private static Object b = new Object();
  private static HttpPost c = new HttpPost("https://mclient.alipay.com/sdkErrorlog.do");

  public static void a(String paramString)
  {
    a.execute(new c(paramString));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.util.b
 * JD-Core Version:    0.6.0
 */