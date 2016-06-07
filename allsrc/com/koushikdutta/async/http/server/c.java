package com.koushikdutta.async.http.server;

import com.koushikdutta.async.Y;
import com.koushikdutta.async.http.b.h;
import com.koushikdutta.async.s;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class c extends i
{
  boolean a;
  boolean b;
  private g g;
  private String h;
  private String i;
  private boolean j;
  private m k;

  c(b paramb, s params)
  {
  }

  private void n()
  {
    if ((this.j) && (this.a))
    {
      if (com.koushikdutta.async.http.a.a(m().a()))
        this.m.a(this.l);
    }
    else
      return;
    this.l.c();
  }

  protected final com.koushikdutta.async.http.a.a a(com.koushikdutta.async.http.b.e parame)
  {
    return a.a(parame);
  }

  public final void a(Exception paramException)
  {
    if (this.k.c().a().c() == 101);
    do
    {
      return;
      this.j = true;
      super.a(paramException);
      this.c.a(new f(this));
      n();
    }
    while ((!this.f.a_()) || (this.g == null));
    this.g.b.a(this, this.k);
  }

  protected final void b()
  {
    com.koushikdutta.async.http.b.e locale = l();
    if ((!this.b) && ("100-continue".equals(locale.d("Expect"))))
    {
      f();
      Y.a(this.c, "HTTP/1.1 100 Continue\r\n\r\n".getBytes(), new d(this));
    }
    do
    {
      return;
      String[] arrayOfString = locale.a().split(" ");
      this.h = arrayOfString[1];
      this.i = this.h.split("\\?")[0];
      this.e = arrayOfString[0];
      synchronized (this.m.a.b)
      {
        ArrayList localArrayList = (ArrayList)this.m.a.b.get(this.e);
        if (localArrayList != null)
        {
          Iterator localIterator = localArrayList.iterator();
          while (localIterator.hasNext())
          {
            g localg = (g)localIterator.next();
            if (!localg.a.matcher(this.i).matches())
              continue;
            this.g = localg;
          }
        }
        this.k = new e(this, this.l, this);
        a.b();
        if (this.g == null)
        {
          this.k.a(404);
          this.k.a();
          return;
        }
      }
      if (this.f.a_())
        continue;
      this.g.b.a(this, this.k);
      return;
    }
    while (!this.j);
    this.g.b.a(this, this.k);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.server.c
 * JD-Core Version:    0.6.0
 */