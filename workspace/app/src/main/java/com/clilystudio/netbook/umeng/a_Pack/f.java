package com.clilystudio.netbook.umeng.a_Pack;

import u.aly.cD;

public final class f extends g
{
  private long a = 86400000L;
  private cD b;

  public f(cD paramcD)
  {
    this.b = paramcD;
  }

  public final boolean a(boolean paramBoolean)
  {
    return System.currentTimeMillis() - this.b.b >= this.a;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.umeng.a.f
 * JD-Core Version:    0.6.0
 */