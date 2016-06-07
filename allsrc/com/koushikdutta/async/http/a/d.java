package com.koushikdutta.async.http.a;

import com.koushikdutta.async.F;
import com.koushikdutta.async.http.Multimap;
import com.koushikdutta.async.http.server.q;
import com.koushikdutta.async.v;
import com.koushikdutta.async.y;

public final class d extends q
  implements a<Multimap>
{
  F a;
  v b;
  String c;
  g d;
  private com.koushikdutta.async.http.b.e e;

  public d()
  {
  }

  public d(String[] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      String[] arrayOfString = paramArrayOfString[j].split("=");
      if ((arrayOfString.length != 2) || (!"boundary".equals(arrayOfString[0])))
        continue;
      a(arrayOfString[1]);
      return;
    }
    a_(new Exception("No boundary found for multipart/form-data"));
  }

  public final void a(g paramg)
  {
    this.d = paramg;
  }

  public final void a(y paramy, com.koushikdutta.async.a.a parama)
  {
    a(paramy);
    b(parama);
  }

  public final boolean a_()
  {
    return false;
  }

  final void b()
  {
    if (this.b == null)
      return;
    if (this.e == null)
      this.e = new com.koushikdutta.async.http.b.e();
    this.e.a(this.c, this.b.m());
    this.c = null;
    this.b = null;
  }

  protected final void k()
  {
    super.k();
    b();
  }

  protected final void l()
  {
    com.koushikdutta.async.http.b.e locale = new com.koushikdutta.async.http.b.e();
    this.a = new F();
    this.a.a(new e(this, locale));
    a(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.a.d
 * JD-Core Version:    0.6.0
 */