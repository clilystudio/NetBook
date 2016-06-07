package com.squareup.okhttp;

import com.squareup.okhttp.internal.b;
import com.squareup.okhttp.internal.c;
import com.squareup.okhttp.internal.http.m;
import java.io.IOException;
import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;

final class h extends c
{
  private final i a;
  private final boolean b;

  private h(f paramf, i parami, boolean paramBoolean)
  {
    super("OkHttp %s", arrayOfObject);
    this.a = parami;
    this.b = paramBoolean;
  }

  final String a()
  {
    return this.c.b.a().getHost();
  }

  protected final void b()
  {
    int i = 0;
    try
    {
      I localI = f.a(this.c, this.b);
      i = 1;
      this.a.onResponse(localI);
      return;
    }
    catch (IOException localIOException)
    {
      if (i != 0)
        b.a.log(Level.INFO, "Callback failure for " + f.a(this.c), localIOException);
      while (true)
      {
        return;
        this.a.onFailure(this.c.c.d(), localIOException);
      }
    }
    finally
    {
      f.b(this.c).r().b(this);
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.h
 * JD-Core Version:    0.6.0
 */