package com.integralblue.httpresponsecache.compat.libcore.net.http;

 enum HttpURLConnectionImpl$Retry
{
  static
  {
    DIFFERENT_CONNECTION = new Retry("DIFFERENT_CONNECTION", 2);
    Retry[] arrayOfRetry = new Retry[3];
    arrayOfRetry[0] = NONE;
    arrayOfRetry[1] = SAME_CONNECTION;
    arrayOfRetry[2] = DIFFERENT_CONNECTION;
    a = arrayOfRetry;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.integralblue.httpresponsecache.compat.libcore.net.http.HttpURLConnectionImpl.Retry
 * JD-Core Version:    0.6.0
 */