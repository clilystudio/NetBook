package com.umeng.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.a.a.a;
import java.util.HashMap;
import java.util.Map;
import u.aly.bt;

public final class b
{
  private static final j a = new j();

  public static void a(Context paramContext)
  {
    a.c(paramContext);
  }

  public static void a(Context paramContext, String paramString)
  {
    a.a(paramContext, paramString, null, -1L, 1);
  }

  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2))
    {
      bt.a("MobclickAgent", "label is null or empty");
      return;
    }
    a.a(paramContext, paramString1, paramString2, -1L, 1);
  }

  public static void a(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    if (TextUtils.isEmpty(null))
    {
      bt.a("MobclickAgent", "label is null or empty");
      return;
    }
    a.a(paramContext, paramString1, null, -1L, 1);
  }

  public static void a(Context paramContext, String paramString, Map<String, String> paramMap, int paramInt)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("__ct__", Integer.valueOf(paramInt));
    a.a(paramContext, paramString, localHashMap, -1L);
  }

  public static void a(a parama)
  {
    a.a(parama);
  }

  public static void a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      a.a(paramString);
      return;
    }
    bt.b("MobclickAgent", "pageName is null or empty");
  }

  public static String b(Context paramContext, String paramString)
  {
    o.a(paramContext);
    return o.g().getString(paramString, "");
  }

  public static void b(Context paramContext)
  {
    if (paramContext == null)
    {
      bt.b("MobclickAgent", "unexpected null context in onResume");
      return;
    }
    a.b(paramContext);
  }

  public static void b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      a.b(paramString);
      return;
    }
    bt.b("MobclickAgent", "pageName is null or empty");
  }

  public static void c(Context paramContext)
  {
    a.a(paramContext);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.umeng.a.b
 * JD-Core Version:    0.6.0
 */