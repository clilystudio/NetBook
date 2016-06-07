package com.mob.tools.a;

import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

public final class e
  implements d
{
  private HttpResponse a;

  public e(HttpResponse paramHttpResponse)
  {
    this.a = paramHttpResponse;
  }

  public final int a()
  {
    return this.a.getStatusLine().getStatusCode();
  }

  public final InputStream b()
  {
    return this.a.getEntity().getContent();
  }

  public final InputStream c()
  {
    return this.a.getEntity().getContent();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.a.e
 * JD-Core Version:    0.6.0
 */