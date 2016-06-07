package com.squareup.okhttp;

import java.util.ArrayList;
import java.util.List;

public final class v
{
  private final List<String> a = new ArrayList(20);

  private v c(String paramString1, String paramString2)
  {
    this.a.add(paramString1);
    this.a.add(paramString2.trim());
    return this;
  }

  public final u a()
  {
    return new u(this, 0);
  }

  final v a(String paramString)
  {
    int i = paramString.indexOf(":", 1);
    if (i != -1)
      return c(paramString.substring(0, i), paramString.substring(i + 1));
    if (paramString.startsWith(":"))
      return c("", paramString.substring(1));
    return c("", paramString);
  }

  public final v a(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      throw new IllegalArgumentException("name == null");
    if (paramString2 == null)
      throw new IllegalArgumentException("value == null");
    if ((paramString1.length() == 0) || (paramString1.indexOf(0) != -1) || (paramString2.indexOf(0) != -1))
      throw new IllegalArgumentException("Unexpected header: " + paramString1 + ": " + paramString2);
    return c(paramString1, paramString2);
  }

  public final v b(String paramString)
  {
    for (int i = 0; i < this.a.size(); i += 2)
    {
      if (!paramString.equalsIgnoreCase((String)this.a.get(i)))
        continue;
      this.a.remove(i);
      this.a.remove(i);
      i -= 2;
    }
    return this;
  }

  public final v b(String paramString1, String paramString2)
  {
    b(paramString1);
    a(paramString1, paramString2);
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.v
 * JD-Core Version:    0.6.0
 */