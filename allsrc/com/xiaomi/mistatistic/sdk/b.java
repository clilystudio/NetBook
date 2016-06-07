package com.xiaomi.mistatistic.sdk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.mistatistic.sdk.a.A;
import com.xiaomi.mistatistic.sdk.a.c;
import com.xiaomi.mistatistic.sdk.a.g;
import com.xiaomi.mistatistic.sdk.a.l;
import com.xiaomi.mistatistic.sdk.a.n;
import com.xiaomi.mistatistic.sdk.a.r;
import com.xiaomi.mistatistic.sdk.a.t;

public abstract class b
{
  private static boolean a = false;

  public static final void a()
  {
    t.a();
  }

  public static final void a(Activity paramActivity, String paramString)
  {
    e();
    A.a().a(paramActivity, paramString);
    g.a().a(new com.xiaomi.mistatistic.sdk.a.a.a());
  }

  public static final void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2)))
      throw new IllegalArgumentException("appID or appKey is empty.");
    Context localContext = paramContext.getApplicationContext();
    if (paramString3 == null)
      paramString3 = "";
    r.a(localContext, paramString1, paramString2, paramString3);
    n.a();
    new l();
    l.a();
    c.a().b();
    a = true;
  }

  public static final void a(String paramString1, String paramString2)
  {
    e();
    if ((!TextUtils.isEmpty(paramString1)) && (paramString1.startsWith("mistat_")))
      throw new IllegalArgumentException("category cannot start with mistat_");
    if ((!TextUtils.isEmpty(paramString2)) && (paramString2.startsWith("mistat_")))
      throw new IllegalArgumentException("key cannot start with mistat_");
    if (com.arcsoft.hpay100.a.a.x(r.b(), "basic_info_reported"))
    {
      if (TextUtils.isEmpty(paramString1))
        paramString1 = "mistat_default";
      r.a(new com.xiaomi.mistatistic.sdk.b.d(paramString1, paramString2, null));
    }
  }

  public static final void b()
  {
    e();
    A.a().b();
  }

  public static boolean c()
  {
    return d.c() != 1;
  }

  public static boolean d()
  {
    return d.c() == 2;
  }

  private static void e()
  {
    if (!a)
      throw new IllegalStateException("not initialized, do you forget to call initialize when application started?");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.b
 * JD-Core Version:    0.6.0
 */