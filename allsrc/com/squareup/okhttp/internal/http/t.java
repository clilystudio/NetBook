package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.K;
import com.squareup.okhttp.u;
import com.squareup.okhttp.z;
import okio.i;

public final class t extends K
{
  private final u a;
  private final i b;

  public t(u paramu, i parami)
  {
    this.a = paramu;
    this.b = parami;
  }

  public final z a()
  {
    String str = this.a.a("Content-Type");
    if (str != null)
      return z.a(str);
    return null;
  }

  public final long b()
  {
    return r.a(this.a);
  }

  public final i d()
  {
    return this.b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.t
 * JD-Core Version:    0.6.0
 */