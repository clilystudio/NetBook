package com.koushikdutta.async.http.a;

import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.http.b.e;

public class h
{
  Multimap a;
  private e b;

  static
  {
    h.class.desiredAssertionStatus();
  }

  public h(e parame)
  {
    this.b = parame;
    this.a = Multimap.parseHeader(this.b, "Content-Disposition");
  }

  public final boolean a()
  {
    return this.a.containsKey("filename");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.a.h
 * JD-Core Version:    0.6.0
 */