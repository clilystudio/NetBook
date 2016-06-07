package com.mob.tools.a;

import java.io.InputStream;
import java.net.HttpURLConnection;

public final class f
  implements d
{
  private HttpURLConnection a;

  public f(HttpURLConnection paramHttpURLConnection)
  {
    this.a = paramHttpURLConnection;
  }

  public final int a()
  {
    return this.a.getResponseCode();
  }

  public final InputStream b()
  {
    return this.a.getInputStream();
  }

  public final InputStream c()
  {
    return this.a.getErrorStream();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.a.f
 * JD-Core Version:    0.6.0
 */