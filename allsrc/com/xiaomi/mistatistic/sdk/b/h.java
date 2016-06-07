package com.xiaomi.mistatistic.sdk.b;

public final class h extends b
{
  private long b;
  private long c;
  private String d;

  public h(long paramLong1, long paramLong2, String paramString)
  {
    this.b = paramLong1;
    this.c = paramLong2;
    this.d = paramString;
  }

  public final i a()
  {
    i locali = new i();
    locali.a = "mistat_session";
    locali.b = this.a;
    locali.e = (this.b + "," + this.c);
    locali.f = this.d;
    return locali;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.b.h
 * JD-Core Version:    0.6.0
 */