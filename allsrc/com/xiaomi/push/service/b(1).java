package com.xiaomi.push.service;

import android.text.TextUtils;

final class b extends e
{
  private final R b;

  public b(R paramR)
  {
    super(12);
    this.b = paramR;
  }

  public final void a()
  {
    this.b.a(u.c.a, 1, 21, null, null);
  }

  public final String b()
  {
    return "bind time out. chid=" + this.b.h;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof b))
      return false;
    return TextUtils.equals(((b)paramObject).b.h, this.b.h);
  }

  public final int hashCode()
  {
    return this.b.h.hashCode();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.b
 * JD-Core Version:    0.6.0
 */