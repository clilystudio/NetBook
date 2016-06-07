package com.github.kevinsawicki.http;

import java.net.HttpURLConnection;
import java.net.URL;

final class d
  implements c
{
  public final HttpURLConnection a(URL paramURL)
  {
    return (HttpURLConnection)paramURL.openConnection();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.github.kevinsawicki.http.d
 * JD-Core Version:    0.6.0
 */