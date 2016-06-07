package com.koushikdutta.async.http.filter;

import com.koushikdutta.async.I;
import com.koushikdutta.async.S;
import com.koushikdutta.async.y;

final class e
  implements S<byte[]>
{
  boolean a;
  private int e;

  e(d paramd, y paramy, I paramI)
  {
  }

  private void a()
  {
    I localI = new I(this.b);
    h localh = new h(this);
    if ((0x8 & this.e) != 0)
    {
      localI.a(0, localh);
      return;
    }
    if ((0x10 & this.e) != 0)
    {
      localI.a(0, localh);
      return;
    }
    b();
  }

  private void b()
  {
    if (this.a)
    {
      this.c.a(2, new i(this));
      return;
    }
    this.d.a = false;
    this.d.a(this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.filter.e
 * JD-Core Version:    0.6.0
 */