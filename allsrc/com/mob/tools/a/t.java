package com.mob.tools.a;

import java.io.ByteArrayInputStream;
import java.io.InputStream;

public final class t extends c
{
  private StringBuilder a = new StringBuilder();

  public final t a(String paramString)
  {
    this.a.append(paramString);
    return this;
  }

  protected final InputStream a()
  {
    return new ByteArrayInputStream(this.a.toString().getBytes("utf-8"));
  }

  protected final long b()
  {
    return this.a.toString().getBytes("utf-8").length;
  }

  public final String toString()
  {
    return this.a.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.a.t
 * JD-Core Version:    0.6.0
 */