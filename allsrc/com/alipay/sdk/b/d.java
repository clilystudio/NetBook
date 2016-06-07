package com.alipay.sdk.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.alipay.sdk.e.b;
import com.arcsoft.hpay100.a.a;
import java.util.HashMap;
import java.util.Random;

public final class d
{
  private static d d;
  String a;
  String b = "sdk-and-lite";
  String c;

  public static d a()
  {
    monitorenter;
    try
    {
      if (d == null)
        d = new d();
      d locald = d;
      return locald;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  static String a(Context paramContext, HashMap<String, String> paramHashMap)
  {
    Object localObject = "";
    try
    {
      String str = a.c(paramContext, paramHashMap);
      localObject = str;
      label13: new StringBuilder("apdid:").append((String)localObject);
      return localObject;
    }
    catch (Exception localException)
    {
      break label13;
    }
  }

  static String b()
  {
    String str = Long.toHexString(System.currentTimeMillis());
    Random localRandom = new Random();
    return str + (1000 + localRandom.nextInt(9000));
  }

  public final void a(String paramString)
  {
    monitorenter;
    try
    {
      boolean bool = TextUtils.isEmpty(paramString);
      if (bool);
      while (true)
      {
        return;
        PreferenceManager.getDefaultSharedPreferences(b.a().a).edit().putString("trideskey", paramString).commit();
        com.alipay.sdk.a.a.b = paramString;
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.b.d
 * JD-Core Version:    0.6.0
 */