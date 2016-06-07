package com.squareup.okhttp;

import com.squareup.okhttp.internal.l;
import java.io.File;
import okio.h;
import okio.o;
import okio.y;

final class H extends E
{
  H(z paramz, File paramFile)
  {
  }

  public final z a()
  {
    return this.a;
  }

  public final void a(h paramh)
  {
    y localy = null;
    try
    {
      localy = o.a(this.b);
      paramh.a(localy);
      return;
    }
    finally
    {
      l.a(localy);
    }
    throw localObject;
  }

  public final long b()
  {
    return this.b.length();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.H
 * JD-Core Version:    0.6.0
 */