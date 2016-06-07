package com.xiaomi.smack.packet;

import android.os.Bundle;
import com.xiaomi.smack.d.g;

public class b extends e
{
  private c a = c.a;

  public b()
  {
  }

  public b(Bundle paramBundle)
  {
    super(paramBundle);
    if (paramBundle.containsKey("ext_iq_type"))
      this.a = c.a(paramBundle.getString("ext_iq_type"));
  }

  public final c a()
  {
    return this.a;
  }

  public final void a(c paramc)
  {
    if (paramc == null)
    {
      this.a = c.a;
      return;
    }
    this.a = paramc;
  }

  public final Bundle b()
  {
    Bundle localBundle = super.b();
    if (this.a != null)
      localBundle.putString("ext_iq_type", this.a.toString());
    return localBundle;
  }

  public final String c()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<iq ");
    if (e() != null)
      localStringBuilder.append("id=\"" + e() + "\" ");
    if (g() != null)
      localStringBuilder.append("to=\"").append(g.a(g())).append("\" ");
    if (h() != null)
      localStringBuilder.append("from=\"").append(g.a(h())).append("\" ");
    if (f() != null)
      localStringBuilder.append("chid=\"").append(g.a(f())).append("\" ");
    if (this.a == null)
      localStringBuilder.append("type=\"get\">");
    while (true)
    {
      localStringBuilder.append(l());
      i locali = j();
      if (locali != null)
        localStringBuilder.append(locali.d());
      localStringBuilder.append("</iq>");
      return localStringBuilder.toString();
      localStringBuilder.append("type=\"").append(this.a).append("\">");
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.packet.b
 * JD-Core Version:    0.6.0
 */