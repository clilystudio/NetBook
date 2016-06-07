package com.xiaomi.kenai.jbosh;

import java.net.URI;

public final class J
{
  private final URI a;
  private final String b;

  private J(URI paramURI, String paramString)
  {
    this.a = paramURI;
    this.b = paramString;
  }

  public static J a(URI paramURI, String paramString)
  {
    if (paramURI == null)
      throw new IllegalArgumentException("Connection manager URI must not be null");
    if (paramString == null)
      throw new IllegalArgumentException("Target domain must not be null");
    String str = paramURI.getScheme();
    if ((!"http".equals(str)) && (!"https".equals(str)))
      throw new IllegalArgumentException("Only 'http' and 'https' URI are allowed");
    return new J(paramURI, paramString);
  }

  public final I a()
  {
    return new I(this.a, this.b, null, "en", null, null, 0, null, false, 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.kenai.jbosh.J
 * JD-Core Version:    0.6.0
 */