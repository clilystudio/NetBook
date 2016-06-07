package com.xiaomi.mistatistic.sdk.b;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.a.r;
import org.json.JSONObject;

public final class a
{
  private long a;
  private int b;
  private String c;
  private String d;
  private long e = System.currentTimeMillis();
  private String f;
  private long g = 0L;
  private String h;

  public a(String paramString, long paramLong)
  {
    this(paramString, paramLong, -1, null);
  }

  public a(String paramString1, long paramLong, int paramInt, String paramString2)
  {
    this(paramString1, paramLong, 0L, paramInt, paramString2);
  }

  public a(String paramString, long paramLong1, long paramLong2)
  {
    this(paramString, paramLong1, paramLong2, -1, null);
  }

  private a(String paramString1, long paramLong1, long paramLong2, int paramInt, String paramString2)
  {
    this.f = paramString1;
    this.a = paramLong1;
    this.b = paramInt;
    this.c = paramString2;
    this.g = paramLong2;
    String str = r.b(r.b());
    if (TextUtils.isEmpty(str))
      this.d = "NULL";
    do
    {
      return;
      this.d = str;
    }
    while ("WIFI".equalsIgnoreCase(str));
    this.h = ((TelephonyManager)r.b().getSystemService("phone")).getSimOperator();
  }

  public final String a()
  {
    return this.f;
  }

  public final JSONObject b()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("net", this.d);
    if (this.a > 0L)
      localJSONObject.put("cost", this.a);
    if (this.b != -1)
      localJSONObject.put("code", this.b);
    if (!TextUtils.isEmpty(this.c))
      localJSONObject.put("exception", this.c);
    if (!TextUtils.isEmpty(this.h))
      localJSONObject.put("op", this.h);
    if (this.g > 0L)
      localJSONObject.put("flow", this.g);
    localJSONObject.put("t", this.e);
    return localJSONObject;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof a));
    a locala;
    do
    {
      return false;
      locala = (a)paramObject;
    }
    while ((!TextUtils.equals(this.f, locala.f)) || (!TextUtils.equals(this.d, locala.d)) || (!TextUtils.equals(this.c, locala.c)) || (this.b != locala.b) || (this.a != locala.a) || (this.e != locala.e) || (this.g != locala.g));
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.b.a
 * JD-Core Version:    0.6.0
 */