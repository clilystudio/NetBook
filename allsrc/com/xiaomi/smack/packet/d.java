package com.xiaomi.smack.packet;

import android.os.Bundle;
import android.text.TextUtils;
import com.xiaomi.smack.d.g;

public final class d extends e
{
  private String a = null;
  private String b = null;
  private String c;
  private String d;
  private String e;
  private String f;
  private boolean g = false;
  private String h;
  private String i = "";
  private String j = "";
  private String k = "";
  private String l = "";
  private boolean m = false;

  public d()
  {
  }

  public d(Bundle paramBundle)
  {
    super(paramBundle);
    this.a = paramBundle.getString("ext_msg_type");
    this.c = paramBundle.getString("ext_msg_lang");
    this.b = paramBundle.getString("ext_msg_thread");
    this.d = paramBundle.getString("ext_msg_sub");
    this.e = paramBundle.getString("ext_msg_body");
    this.f = paramBundle.getString("ext_body_encode");
    this.h = paramBundle.getString("ext_msg_appid");
    this.g = paramBundle.getBoolean("ext_msg_trans", false);
    this.m = paramBundle.getBoolean("ext_msg_encrypt", false);
    this.i = paramBundle.getString("ext_msg_seq");
    this.j = paramBundle.getString("ext_msg_mseq");
    this.k = paramBundle.getString("ext_msg_fseq");
    this.l = paramBundle.getString("ext_msg_status");
  }

  public final String a()
  {
    return this.a;
  }

  public final void a(String paramString)
  {
    this.h = paramString;
  }

  public final void a(String paramString1, String paramString2)
  {
    this.e = paramString1;
    this.f = paramString2;
  }

  public final void a(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  public final Bundle b()
  {
    Bundle localBundle = super.b();
    if (!TextUtils.isEmpty(this.a))
      localBundle.putString("ext_msg_type", this.a);
    if (this.c != null)
      localBundle.putString("ext_msg_lang", this.c);
    if (this.d != null)
      localBundle.putString("ext_msg_sub", this.d);
    if (this.e != null)
      localBundle.putString("ext_msg_body", this.e);
    if (!TextUtils.isEmpty(this.f))
      localBundle.putString("ext_body_encode", this.f);
    if (this.b != null)
      localBundle.putString("ext_msg_thread", this.b);
    if (this.h != null)
      localBundle.putString("ext_msg_appid", this.h);
    if (this.g)
      localBundle.putBoolean("ext_msg_trans", true);
    if (!TextUtils.isEmpty(this.i))
      localBundle.putString("ext_msg_seq", this.i);
    if (!TextUtils.isEmpty(this.j))
      localBundle.putString("ext_msg_mseq", this.j);
    if (!TextUtils.isEmpty(this.k))
      localBundle.putString("ext_msg_fseq", this.k);
    if (this.m)
      localBundle.putBoolean("ext_msg_encrypt", true);
    if (!TextUtils.isEmpty(this.l))
      localBundle.putString("ext_msg_status", this.l);
    return localBundle;
  }

  public final void b(String paramString)
  {
    this.i = paramString;
  }

  public final void b(boolean paramBoolean)
  {
    this.m = true;
  }

  public final String c()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<message");
    if (m() != null)
      localStringBuilder.append(" xmlns=\"").append(m()).append("\"");
    if (this.c != null)
      localStringBuilder.append(" xml:lang=\"").append(this.c).append("\"");
    if (e() != null)
      localStringBuilder.append(" id=\"").append(e()).append("\"");
    if (g() != null)
      localStringBuilder.append(" to=\"").append(g.a(g())).append("\"");
    if (!TextUtils.isEmpty(this.i))
      localStringBuilder.append(" seq=\"").append(this.i).append("\"");
    if (!TextUtils.isEmpty(this.j))
      localStringBuilder.append(" mseq=\"").append(this.j).append("\"");
    if (!TextUtils.isEmpty(this.k))
      localStringBuilder.append(" fseq=\"").append(this.k).append("\"");
    if (!TextUtils.isEmpty(this.l))
      localStringBuilder.append(" status=\"").append(this.l).append("\"");
    if (h() != null)
      localStringBuilder.append(" from=\"").append(g.a(h())).append("\"");
    if (f() != null)
      localStringBuilder.append(" chid=\"").append(g.a(f())).append("\"");
    if (this.g)
      localStringBuilder.append(" transient=\"true\"");
    if (!TextUtils.isEmpty(this.h))
      localStringBuilder.append(" appid=\"").append(this.h).append("\"");
    if (!TextUtils.isEmpty(this.a))
      localStringBuilder.append(" type=\"").append(this.a).append("\"");
    if (this.m)
      localStringBuilder.append(" s=\"1\"");
    localStringBuilder.append(">");
    if (this.d != null)
    {
      localStringBuilder.append("<subject>").append(g.a(this.d));
      localStringBuilder.append("</subject>");
    }
    if (this.e != null)
    {
      localStringBuilder.append("<body");
      if (!TextUtils.isEmpty(this.f))
        localStringBuilder.append(" encode=\"").append(this.f).append("\"");
      localStringBuilder.append(">").append(g.a(this.e)).append("</body>");
    }
    if (this.b != null)
      localStringBuilder.append("<thread>").append(this.b).append("</thread>");
    if ("error".equalsIgnoreCase(this.a))
    {
      i locali = j();
      if (locali != null)
        localStringBuilder.append(locali.d());
    }
    localStringBuilder.append(l());
    localStringBuilder.append("</message>");
    return localStringBuilder.toString();
  }

  public final void c(String paramString)
  {
    this.j = paramString;
  }

  public final void d(String paramString)
  {
    this.k = paramString;
  }

  public final void e(String paramString)
  {
    this.l = paramString;
  }

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    d locald;
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass()))
        return false;
      locald = (d)paramObject;
      if (!super.equals(locald))
        return false;
      if (this.e != null)
      {
        if (this.e.equals(locald.e));
      }
      else
        do
          return false;
        while (locald.e != null);
      if (this.c != null)
      {
        if (this.c.equals(locald.c));
      }
      else
        do
          return false;
        while (locald.c != null);
      if (this.d != null)
      {
        if (this.d.equals(locald.d));
      }
      else
        do
          return false;
        while (locald.d != null);
      if (this.b != null)
        if (this.b.equals(locald.b))
          continue;
      do
        return false;
      while (locald.b != null);
    }
    while (this.a == locald.a);
    return false;
  }

  public final void f(String paramString)
  {
    this.a = paramString;
  }

  public final void g(String paramString)
  {
    this.d = paramString;
  }

  public final void h(String paramString)
  {
    this.e = paramString;
  }

  public final int hashCode()
  {
    int n;
    int i2;
    label35: int i4;
    label59: int i5;
    if (this.a != null)
    {
      n = this.a.hashCode();
      int i1 = n * 31;
      if (this.e == null)
        break label129;
      i2 = this.e.hashCode();
      int i3 = 31 * (i2 + i1);
      if (this.b == null)
        break label134;
      i4 = this.b.hashCode();
      i5 = 31 * (i4 + i3);
      if (this.c == null)
        break label140;
    }
    label129: label134: label140: for (int i6 = this.c.hashCode(); ; i6 = 0)
    {
      int i7 = 31 * (i6 + i5);
      String str = this.d;
      int i8 = 0;
      if (str != null)
        i8 = this.d.hashCode();
      return i7 + i8;
      n = 0;
      break;
      i2 = 0;
      break label35;
      i4 = 0;
      break label59;
    }
  }

  public final void i(String paramString)
  {
    this.b = paramString;
  }

  public final void j(String paramString)
  {
    this.c = paramString;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.packet.d
 * JD-Core Version:    0.6.0
 */