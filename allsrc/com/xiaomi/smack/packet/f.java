package com.xiaomi.smack.packet;

import android.os.Bundle;
import com.xiaomi.smack.d.g;

public final class f extends e
{
  private f.b a = f.b.a;
  private String b = null;
  private int c = -2147483648;
  private f.a d = null;

  public f(Bundle paramBundle)
  {
    super(paramBundle);
    if (paramBundle.containsKey("ext_pres_type"))
      this.a = f.b.valueOf(paramBundle.getString("ext_pres_type"));
    if (paramBundle.containsKey("ext_pres_status"))
      this.b = paramBundle.getString("ext_pres_status");
    if (paramBundle.containsKey("ext_pres_prio"))
      this.c = paramBundle.getInt("ext_pres_prio");
    if (paramBundle.containsKey("ext_pres_mode"))
      this.d = f.a.valueOf(paramBundle.getString("ext_pres_mode"));
  }

  public f(f.b paramb)
  {
    if (paramb == null)
      throw new NullPointerException("Type cannot be null");
    this.a = paramb;
  }

  public final void a(int paramInt)
  {
    if ((paramInt < -128) || (paramInt > 128))
      throw new IllegalArgumentException("Priority value " + paramInt + " is not valid. Valid range is -128 through 128.");
    this.c = paramInt;
  }

  public final void a(f.a parama)
  {
    this.d = parama;
  }

  public final void a(String paramString)
  {
    this.b = paramString;
  }

  public final Bundle b()
  {
    Bundle localBundle = super.b();
    if (this.a != null)
      localBundle.putString("ext_pres_type", this.a.toString());
    if (this.b != null)
      localBundle.putString("ext_pres_status", this.b);
    if (this.c != -2147483648)
      localBundle.putInt("ext_pres_prio", this.c);
    if ((this.d != null) && (this.d != f.a.b))
      localBundle.putString("ext_pres_mode", this.d.toString());
    return localBundle;
  }

  public final String c()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<presence");
    if (m() != null)
      localStringBuilder.append(" xmlns=\"").append(m()).append("\"");
    if (e() != null)
      localStringBuilder.append(" id=\"").append(e()).append("\"");
    if (g() != null)
      localStringBuilder.append(" to=\"").append(g.a(g())).append("\"");
    if (h() != null)
      localStringBuilder.append(" from=\"").append(g.a(h())).append("\"");
    if (f() != null)
      localStringBuilder.append(" chid=\"").append(g.a(f())).append("\"");
    if (this.a != null)
      localStringBuilder.append(" type=\"").append(this.a).append("\"");
    localStringBuilder.append(">");
    if (this.b != null)
      localStringBuilder.append("<status>").append(g.a(this.b)).append("</status>");
    if (this.c != -2147483648)
      localStringBuilder.append("<priority>").append(this.c).append("</priority>");
    if ((this.d != null) && (this.d != f.a.b))
      localStringBuilder.append("<show>").append(this.d).append("</show>");
    localStringBuilder.append(l());
    i locali = j();
    if (locali != null)
      localStringBuilder.append(locali.d());
    localStringBuilder.append("</presence>");
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.packet.f
 * JD-Core Version:    0.6.0
 */