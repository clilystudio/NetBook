package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.alipay.sdk.b.b;
import java.util.ArrayList;
import java.util.List;

public final class E
{
  private static E a = null;
  private Context b;
  private List<String> c = new ArrayList();

  private E(Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
    if (this.b == null)
      this.b = paramContext;
    String[] arrayOfString = this.b.getSharedPreferences("mipush_app_info", 0).getString("unregistered_pkg_names", "").split(",");
    int j = arrayOfString.length;
    while (i < j)
    {
      String str = arrayOfString[i];
      if (TextUtils.isEmpty(str))
        this.c.add(str);
      i++;
    }
  }

  public static E a(Context paramContext)
  {
    if (a == null)
      a = new E(paramContext);
    return a;
  }

  public final boolean a(String paramString)
  {
    synchronized (this.c)
    {
      boolean bool = this.c.contains(paramString);
      return bool;
    }
  }

  public final void b(String paramString)
  {
    synchronized (this.c)
    {
      if (!this.c.contains(paramString))
      {
        this.c.add(paramString);
        String str = b.a(this.c, ",");
        this.b.getSharedPreferences("mipush_app_info", 0).edit().putString("unregistered_pkg_names", str).commit();
      }
      return;
    }
  }

  public final void c(String paramString)
  {
    synchronized (this.c)
    {
      if (this.c.contains(paramString))
      {
        this.c.remove(paramString);
        String str = b.a(this.c, ",");
        this.b.getSharedPreferences("mipush_app_info", 0).edit().putString("unregistered_pkg_names", str).commit();
      }
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.E
 * JD-Core Version:    0.6.0
 */