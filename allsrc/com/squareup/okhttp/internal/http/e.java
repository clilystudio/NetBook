package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.b;
import com.squareup.okhttp.m;
import java.net.Socket;
import okio.i;
import okio.y;
import okio.z;

abstract class e
  implements y
{
  protected boolean a;
  private okio.l b = new okio.l(d.b(this.c).a());

  private e(d paramd)
  {
  }

  public final z a()
  {
    return this.b;
  }

  protected final void a(boolean paramBoolean)
  {
    if (d.c(this.c) != 5)
      throw new IllegalStateException("state: " + d.c(this.c));
    d.a(this.c, this.b);
    d.a(this.c, 0);
    if ((paramBoolean) && (d.d(this.c) == 1))
    {
      d.b(this.c, 0);
      b.b.a(d.e(this.c), d.f(this.c));
    }
    do
      return;
    while (d.d(this.c) != 2);
    d.a(this.c, 6);
    d.f(this.c).c().close();
  }

  protected final void b()
  {
    com.squareup.okhttp.internal.l.a(d.f(this.c).c());
    d.a(this.c, 6);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.http.e
 * JD-Core Version:    0.6.0
 */