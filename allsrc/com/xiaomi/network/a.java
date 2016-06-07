package com.xiaomi.network;

import org.json.JSONObject;

public final class a
{
  private int a;
  private long b;
  private long c;
  private String d;
  private long e;

  public a()
  {
    this(0, 0L, 0L, null);
  }

  public a(int paramInt, long paramLong1, long paramLong2, Exception paramException)
  {
    this.a = paramInt;
    this.b = paramLong1;
    this.e = paramLong2;
    this.c = System.currentTimeMillis();
    if (paramException != null)
      this.d = paramException.getClass().getSimpleName();
  }

  public final int a()
  {
    return this.a;
  }

  public final a a(JSONObject paramJSONObject)
  {
    this.b = paramJSONObject.getLong("cost");
    this.e = paramJSONObject.getLong("size");
    this.c = paramJSONObject.getLong("ts");
    this.a = paramJSONObject.getInt("wt");
    this.d = paramJSONObject.optString("expt");
    return this;
  }

  public final long b()
  {
    return this.b;
  }

  public final long c()
  {
    return this.c;
  }

  public final long d()
  {
    return this.e;
  }

  public final String e()
  {
    return this.d;
  }

  public final JSONObject f()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("cost", this.b);
    localJSONObject.put("size", this.e);
    localJSONObject.put("ts", this.c);
    localJSONObject.put("wt", this.a);
    localJSONObject.put("expt", this.d);
    return localJSONObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.network.a
 * JD-Core Version:    0.6.0
 */