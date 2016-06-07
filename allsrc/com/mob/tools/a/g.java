package com.mob.tools.a;

import java.net.URI;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;

public final class g extends HttpEntityEnclosingRequestBase
{
  public g()
  {
  }

  public g(String paramString)
  {
    setURI(URI.create(paramString));
  }

  public final String getMethod()
  {
    return "PATCH";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.a.g
 * JD-Core Version:    0.6.0
 */