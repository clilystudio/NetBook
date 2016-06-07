package com.xiaomi.smack;

import com.xiaomi.smack.packet.e;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;

final class q
{
  private Thread a;
  private z b;
  private XmlPullParser c;
  private boolean d;

  protected q(z paramz)
  {
    this.b = paramz;
    this.d = false;
    this.a = new r(this, "Smack Packet Reader (" + this.b.l + ")");
  }

  private void a(int paramInt, Exception paramException)
  {
    this.d = true;
    this.b.a(paramInt, paramException);
  }

  private void a(e parame)
  {
    if (parame == null);
    while (true)
    {
      return;
      Iterator localIterator = this.b.f.values().iterator();
      while (localIterator.hasNext())
        ((m)localIterator.next()).a(parame);
    }
  }

  public final void a()
  {
    this.a.start();
  }

  public final void b()
  {
    this.d = true;
  }

  final void c()
  {
    this.b.f.clear();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.q
 * JD-Core Version:    0.6.0
 */