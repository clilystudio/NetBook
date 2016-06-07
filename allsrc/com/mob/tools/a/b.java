package com.mob.tools.a;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

public final class b extends c
{
  private File a;

  protected final InputStream a()
  {
    return new FileInputStream(this.a);
  }

  public final void a(String paramString)
  {
    this.a = new File(paramString);
  }

  protected final long b()
  {
    return this.a.length();
  }

  public final String toString()
  {
    return this.a.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.a.b
 * JD-Core Version:    0.6.0
 */