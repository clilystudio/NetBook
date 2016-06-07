package com.xiaomi.b.a;

import com.xiaomi.smack.d.f;
import com.xiaomi.smack.l;
import com.xiaomi.smack.p;
import java.io.Reader;
import java.io.Writer;
import java.text.SimpleDateFormat;

public final class a
  implements com.xiaomi.smack.a.a
{
  public static boolean a = false;
  private SimpleDateFormat b = new SimpleDateFormat("hh:mm:ss aaa");
  private l c = null;
  private p d = null;
  private Writer e;
  private Reader f;
  private f g;
  private f h;

  public a(l paraml, Writer paramWriter, Reader paramReader)
  {
    this.c = paraml;
    this.e = paramWriter;
    this.f = paramReader;
    com.xiaomi.smack.d.a locala = new com.xiaomi.smack.d.a(this.f);
    this.g = new b(this);
    locala.a(this.g);
    com.xiaomi.smack.d.b localb = new com.xiaomi.smack.d.b(this.e);
    this.h = new c(this);
    localb.a(this.h);
    this.f = locala;
    this.e = localb;
    this.d = new d(this);
    new e(this);
  }

  public final Reader a()
  {
    return this.f;
  }

  public final Reader a(Reader paramReader)
  {
    ((com.xiaomi.smack.d.a)this.f).b(this.g);
    com.xiaomi.smack.d.a locala = new com.xiaomi.smack.d.a(paramReader);
    locala.a(this.g);
    this.f = locala;
    return this.f;
  }

  public final Writer a(Writer paramWriter)
  {
    ((com.xiaomi.smack.d.b)this.e).b(this.h);
    com.xiaomi.smack.d.b localb = new com.xiaomi.smack.d.b(paramWriter);
    localb.a(this.h);
    this.e = localb;
    return this.e;
  }

  public final Writer b()
  {
    return this.e;
  }

  public final p c()
  {
    return this.d;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.b.a.a
 * JD-Core Version:    0.6.0
 */