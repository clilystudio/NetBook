package com.iflytek.common.a;

import android.content.Context;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public class d
{
  private static d a;
  private com.iflytek.common.c.d b;
  private a c = null;
  private Context d;
  private e e;
  private com.iflytek.common.c.a f;
  private b g = new g(this);

  private d(Context paramContext)
  {
    this.b = new com.iflytek.common.c.d(paramContext);
    this.d = paramContext;
    this.f = new com.iflytek.common.c.a(paramContext);
    this.e = new e(this.b);
    com.iflytek.common.c.c.a(this.d, "load settings: pkgRun=" + this.e.g() + " periodRun=" + this.e.a() + " periodUpdate=" + this.e.b());
  }

  public static d a(Context paramContext)
  {
    monitorenter;
    try
    {
      if (a == null)
        a = new d(paramContext);
      d locald = a;
      return locald;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private void a(String paramString, int paramInt)
  {
    if ((paramInt == 0) && (paramString != null))
    {
      this.e.c(System.currentTimeMillis());
      com.iflytek.common.c.c.a(this.d, "get config success");
      com.iflytek.common.c.c.a(this.d, paramString);
      b(paramString);
      c.a(this.d);
    }
    while (true)
    {
      this.c = null;
      return;
      com.iflytek.common.c.c.a(this.d, "get config error:" + paramInt);
    }
  }

  private void b(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
    {
      com.iflytek.common.c.c.a("LaunchSettings", "loadJson empty.");
      return;
    }
    JSONTokener localJSONTokener = new JSONTokener(paramString);
    String str1 = "";
    try
    {
      JSONObject localJSONObject1 = new JSONObject(localJSONTokener);
      long l1 = localJSONObject1.getLong("updateperiod");
      JSONObject localJSONObject2 = localJSONObject1.getJSONObject("launch");
      JSONArray localJSONArray = localJSONObject2.getJSONArray("runpackage");
      String[] arrayOfString = new String[localJSONArray.length()];
      for (int i = 0; i < localJSONArray.length(); i++)
      {
        arrayOfString[i] = localJSONArray.getString(i);
        str1 = str1 + arrayOfString[i] + ";";
      }
      long l2 = localJSONObject2.getLong("runperiod");
      this.e.a(arrayOfString);
      this.e.a(l1);
      this.e.b(l2);
      com.iflytek.common.c.c.a(this.d, "parse json updateperiod:" + l1 + " runperiod:" + l2 + " runpackage:" + str1);
      return;
    }
    catch (JSONException localJSONException)
    {
      String str2 = localJSONException.getMessage();
      com.iflytek.common.c.c.a(this.d, "parse json error:" + str2);
    }
  }

  private String d()
  {
    String str1 = f();
    String str2 = e();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("?t=");
    localStringBuilder.append(str1);
    localStringBuilder.append("&p=");
    localStringBuilder.append(str2);
    return localStringBuilder.toString();
  }

  private String e()
  {
    String str1 = this.f.a();
    String str2 = this.f.b();
    String str3 = this.e.f();
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append("imei=");
    if ((str1 == null) || (str1.length() == 0))
      str1 = "null";
    localStringBuilder1.append(str1);
    localStringBuilder1.append(",ua=");
    localStringBuilder1.append(str2);
    localStringBuilder1.append(",appid=");
    if ((str3 == null) || (str3.length() == 0));
    for (String str4 = "null"; ; str4 = str3)
    {
      localStringBuilder1.append(str4);
      localStringBuilder1.append(",sdkver=2.0");
      localStringBuilder1.append(",pkg=" + this.d.getPackageName());
      String str5 = localStringBuilder1.toString();
      char[] arrayOfChar = com.iflytek.common.c.b.a(str5.getBytes()).toCharArray();
      for (int i = 0; i < 8; i++)
      {
        int k = arrayOfChar[i];
        arrayOfChar[i] = arrayOfChar[(i + (-8 + arrayOfChar.length))];
        arrayOfChar[(i + (-8 + arrayOfChar.length))] = k;
      }
      StringBuilder localStringBuilder2 = new StringBuilder();
      for (int j = 0; j < arrayOfChar.length; j++)
        localStringBuilder2.append(arrayOfChar[j]);
      com.iflytek.common.c.c.a(this.d, str5);
      return localStringBuilder2.toString();
    }
  }

  private String f()
  {
    return new SimpleDateFormat("yyyyMMddHHmmss", Locale.getDefault()).format(new Date());
  }

  public void a()
  {
    if (this.e.d() > System.currentTimeMillis())
      this.e.c(System.currentTimeMillis() - this.e.b());
    long l1 = System.currentTimeMillis() - this.e.d();
    long l2 = this.e.b();
    if (l1 > l2)
    {
      if (this.c == null)
      {
        String str = "http://hxqd.openspeech.cn/launchconfig" + d();
        this.c = new a(str, this.g);
        this.c.start();
        com.iflytek.common.c.c.a(this.d, "check update start get config ");
        com.iflytek.common.c.c.a(this.d, str);
        return;
      }
      com.iflytek.common.c.c.a("LaunchSettings", "mGetThread running.");
      return;
    }
    com.iflytek.common.c.c.a(this.d, "check update interval=" + l1 + " period=" + l2 + " ret=false");
  }

  public void a(long paramLong)
  {
    this.e.d(paramLong);
  }

  public void a(String paramString1, String paramString2)
  {
    if ("appid".equals(paramString1))
    {
      this.e.a(paramString2);
      return;
    }
    com.iflytek.common.c.c.a("LaunchSettings", "unkown key =" + paramString1);
  }

  public boolean a(String paramString)
  {
    if ((this.e.c() == null) || (paramString == null));
    while (true)
    {
      return false;
      String[] arrayOfString = this.e.c();
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        if (paramString.equals(arrayOfString[j]))
          return true;
    }
  }

  public boolean b()
  {
    if (this.e.e() > System.currentTimeMillis())
      this.e.d(System.currentTimeMillis() - this.e.a());
    long l = System.currentTimeMillis() - this.e.e();
    boolean bool1 = this.e.a() < 0L;
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = l < this.e.a();
      bool2 = false;
      if (bool3)
        bool2 = true;
    }
    com.iflytek.common.c.c.a(this.d, "check launch interval=" + l + " period=" + this.e.a() + " ret=" + bool2);
    return bool2;
  }

  public long c()
  {
    return this.e.a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.common.a.d
 * JD-Core Version:    0.6.0
 */