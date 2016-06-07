package com.alipay.b.d;

import android.content.Context;
import android.support.design.widget.am;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public final class a
{
  private static Map<String, String> a = null;
  private static Map<String, String> b = null;

  private static String a(Map<String, String> paramMap)
  {
    monitorenter;
    Object localObject2;
    if (paramMap == null)
    {
      localObject2 = null;
      monitorexit;
      return localObject2;
    }
    while (true)
    {
      int i;
      try
      {
        StringBuffer localStringBuffer = new StringBuffer();
        ArrayList localArrayList = new ArrayList(paramMap.keySet());
        Collections.sort(localArrayList);
        i = 0;
        if (i >= localArrayList.size())
          continue;
        String str2 = (String)localArrayList.get(i);
        if ((str2 == null) || (!str2.equals("AC3")))
        {
          String str3 = (String)paramMap.get(str2);
          StringBuilder localStringBuilder = new StringBuilder();
          if (i != 0)
            break label173;
          str4 = "";
          localStringBuffer.append(str4 + str2 + "=" + str3);
          break label167;
          String str1 = localStringBuffer.toString();
          localObject2 = str1;
          break;
        }
      }
      finally
      {
        monitorexit;
      }
      label167: i++;
      continue;
      label173: String str4 = "&";
    }
  }

  public static Map<String, String> a(Context paramContext, Map<String, String> paramMap)
  {
    monitorenter;
    try
    {
      if (a == null)
        c(paramContext, paramMap);
      Map localMap = a;
      return localMap;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public static void a()
  {
    monitorenter;
    try
    {
      a = null;
      b = null;
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  public static String b(Context paramContext, Map<String, String> paramMap)
  {
    monitorenter;
    try
    {
      a(paramContext, paramMap);
      String str = com.arcsoft.hpay100.a.a.b(a(a));
      monitorexit;
      return str;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  private static void c(Context paramContext, Map<String, String> paramMap)
  {
    monitorenter;
    try
    {
      b = new TreeMap();
      a = new TreeMap();
      b.putAll(com.arcsoft.hpay100.a.a.a(paramContext, paramMap));
      b.putAll(com.arcsoft.hpay100.a.a.g(paramContext));
      Map localMap = b;
      com.alipay.security.mobile.module.b.a locala = com.alipay.security.mobile.module.b.a.a();
      HashMap localHashMap = new HashMap();
      localHashMap.put("AD1", com.alipay.security.mobile.module.b.a.a(paramContext));
      localHashMap.put("AD2", com.alipay.security.mobile.module.b.a.b(paramContext));
      localHashMap.put("AD3", com.alipay.security.mobile.module.b.a.d(paramContext));
      localHashMap.put("AD5", com.alipay.security.mobile.module.b.a.e(paramContext));
      localHashMap.put("AD6", com.alipay.security.mobile.module.b.a.f(paramContext));
      localHashMap.put("AD7", com.alipay.security.mobile.module.b.a.g(paramContext));
      localHashMap.put("AD8", com.alipay.security.mobile.module.b.a.h(paramContext));
      localHashMap.put("AD9", com.alipay.security.mobile.module.b.a.i(paramContext));
      localHashMap.put("AD10", com.alipay.security.mobile.module.b.a.j(paramContext));
      localHashMap.put("AD11", com.alipay.security.mobile.module.b.a.b());
      localHashMap.put("AD12", locala.c());
      localHashMap.put("AD13", com.alipay.security.mobile.module.b.a.d());
      localHashMap.put("AD14", com.alipay.security.mobile.module.b.a.e());
      localHashMap.put("AD15", com.alipay.security.mobile.module.b.a.f());
      localHashMap.put("AD16", com.alipay.security.mobile.module.b.a.g());
      localHashMap.put("AD17", "");
      localHashMap.put("AD18", com.alipay.security.mobile.module.b.a.h());
      localHashMap.put("AD19", com.alipay.security.mobile.module.b.a.k(paramContext));
      localHashMap.put("AD20", com.alipay.security.mobile.module.b.a.i());
      localHashMap.put("AD21", com.alipay.security.mobile.module.b.a.c(paramContext));
      localHashMap.put("AD22", locala.n(paramContext));
      localMap.putAll(localHashMap);
      a.putAll(b);
      a.putAll(am.c(paramContext));
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.b.d.a
 * JD-Core Version:    0.6.0
 */