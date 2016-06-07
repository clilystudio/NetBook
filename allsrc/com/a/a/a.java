package com.a.a;

import android.content.Context;
import android.os.Handler;
import java.util.Map;

public final class a
{
  private static final d a = d.a();

  public static void a(Context paramContext)
  {
    a.a(paramContext);
  }

  public static void a(Context paramContext, String paramString)
  {
    a.e(paramContext, paramString, null);
  }

  public static void a(Context paramContext, String paramString, double paramDouble, int paramInt, Map<String, String> paramMap)
  {
    a.a(paramContext, paramString, 0.0D, 1, paramMap);
  }

  public static void a(Context paramContext, String paramString1, String paramString2, Map<String, String> paramMap)
  {
    a.a(paramContext, paramString1, paramString2, paramMap);
  }

  public static void a(Context paramContext, String paramString, Map<String, String> paramMap)
  {
    a.a(paramContext, paramString, paramMap);
  }

  public static void a(Context paramContext, String paramString, Map<String, String> paramMap, c paramc)
  {
    Handler localHandler = new Handler(new b(paramc));
    a.a(paramContext, paramString, paramMap, localHandler);
  }

  public static void b(Context paramContext)
  {
    a.b(paramContext);
  }

  public static void b(Context paramContext, String paramString, Map<String, String> paramMap)
  {
    a.b(paramContext, paramString, paramMap);
  }

  public static void c(Context paramContext, String paramString, Map<String, String> paramMap)
  {
    a.c(paramContext, paramString, paramMap);
  }

  public static void d(Context paramContext, String paramString, Map<String, Object> paramMap)
  {
    a.d(paramContext, paramString, paramMap);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.a.a.a
 * JD-Core Version:    0.6.0
 */