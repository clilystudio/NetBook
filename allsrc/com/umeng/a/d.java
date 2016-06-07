package com.umeng.a;

import u.aly.cD;

public final class d extends g
{
  private long a = 10000L;
  private long b;
  private cD c;

  public d(cD paramcD, long paramLong)
  {
    this.c = paramcD;
    if (paramLong < this.a)
      paramLong = this.a;
    this.b = paramLong;
  }

  public final boolean a(boolean paramBoolean)
  {
    return System.currentTimeMillis() - this.c.b >= this.b;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.a.d
 * JD-Core Version:    0.6.0
 */