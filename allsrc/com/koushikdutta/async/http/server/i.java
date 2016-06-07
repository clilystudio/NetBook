package com.koushikdutta.async.http.server;

import com.koushikdutta.async.C;
import com.koushikdutta.async.G;
import com.koushikdutta.async.a.b;
import com.koushikdutta.async.http.b.e;
import com.koushikdutta.async.s;
import java.io.PrintStream;

public abstract class i extends C
  implements com.koushikdutta.async.a.a, h
{
  private e a = new e();
  private com.koushikdutta.async.a.a b = new j(this);
  s c;
  G d = new k(this);
  String e;
  com.koushikdutta.async.http.a.a f;
  private com.koushikdutta.async.http.b.a g;

  protected com.koushikdutta.async.http.a.a a(e parame)
  {
    return null;
  }

  public final void a(b paramb)
  {
    this.c.a(paramb);
  }

  public void a(Exception paramException)
  {
    a_(paramException);
  }

  protected abstract void b();

  public final com.koushikdutta.async.http.a.a b_()
  {
    return this.f;
  }

  public final b d()
  {
    return this.c.d();
  }

  public final void f()
  {
    this.c.f();
  }

  public final void g()
  {
    this.c.g();
  }

  public final boolean h()
  {
    return this.c.h();
  }

  protected final void k()
  {
    System.out.println("not http: " + this.a.a());
    System.out.println("not http: " + this.a.a().length());
  }

  final e l()
  {
    return this.a;
  }

  public final com.koushikdutta.async.http.b.a m()
  {
    return this.g;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.server.i
 * JD-Core Version:    0.6.0
 */