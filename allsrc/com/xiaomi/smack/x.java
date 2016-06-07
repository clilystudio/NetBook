package com.xiaomi.smack;

import com.xiaomi.smack.packet.a;
import com.xiaomi.smack.packet.e;
import com.xiaomi.smack.packet.i;
import java.util.Collection;
import java.util.Iterator;

public final class x extends e
{
  private y a;

  public final y a()
  {
    return this.a;
  }

  public final void a(y paramy)
  {
    if (paramy == null)
    {
      this.a = y.a;
      return;
    }
    this.a = paramy;
  }

  public final String c()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<bind ");
    if (e() != null)
      localStringBuilder.append("id=\"" + e() + "\" ");
    if (g() != null)
      localStringBuilder.append("to=\"").append(com.xiaomi.smack.d.g.a(g())).append("\" ");
    if (h() != null)
      localStringBuilder.append("from=\"").append(com.xiaomi.smack.d.g.a(h())).append("\" ");
    if (f() != null)
      localStringBuilder.append(" chid=\"").append(com.xiaomi.smack.d.g.a(f())).append("\" ");
    if (this.a == null)
      localStringBuilder.append("type=\"result\">");
    while (k() != null)
    {
      Iterator localIterator = k().iterator();
      while (localIterator.hasNext())
        localStringBuilder.append(((a)localIterator.next()).c());
      localStringBuilder.append("type=\"").append(this.a).append("\">");
    }
    i locali = j();
    if (locali != null)
      localStringBuilder.append(locali.d());
    localStringBuilder.append("</bind>");
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.x
 * JD-Core Version:    0.6.0
 */