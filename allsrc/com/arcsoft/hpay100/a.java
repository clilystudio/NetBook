package com.arcsoft.hpay100;

import android.app.Activity;
import android.app.Dialog;
import android.text.TextUtils;
import android.widget.Toast;
import com.arcsoft.hpay100.c.c;
import com.arcsoft.hpay100.c.h;
import com.arcsoft.hpay100.config.l;
import com.migu.sdk.api.MiguSdk;

public final class a
{
  private static boolean a = false;
  private static Dialog b = null;

  public static void a(Activity paramActivity, int paramInt1, String paramString1, String paramString2, int paramInt2, String paramString3, y paramy)
  {
    com.arcsoft.hpay100.a.a.b("dalongTest", "startHPaySdk-------");
    if (!a)
    {
      c.a(paramActivity, "请初始化支付sdk", 1);
      com.arcsoft.hpay100.config.a.a(paramActivity.getApplicationContext(), paramString1, paramString2, paramInt2, -1, "2", "2001", 0);
      return;
    }
    if (TextUtils.isEmpty(paramString2))
    {
      c.a(paramActivity, "计费点编号不能为空", 1);
      com.arcsoft.hpay100.config.a.a(paramActivity.getApplicationContext(), paramString1, paramString2, paramInt2, -1, "2", "2003", 0);
      return;
    }
    if (paramInt2 <= 0)
    {
      c.a(paramActivity, "计费金额传入错误", 1);
      com.arcsoft.hpay100.config.a.a(paramActivity.getApplicationContext(), paramString1, paramString2, paramInt2, -1, "2", "2004", 0);
      return;
    }
    if (TextUtils.isEmpty(paramString3))
    {
      c.a(paramActivity, "计费点名称不能为空", 1);
      com.arcsoft.hpay100.config.a.a(paramActivity.getApplicationContext(), paramString1, paramString2, paramInt2, -1, "2", "2005", 0);
      return;
    }
    if (!com.arcsoft.hpay100.a.a.j(paramActivity))
    {
      c.a(paramActivity, "请检查您的网络连接", 1);
      return;
    }
    paramActivity.runOnUiThread(new b(paramActivity, "数据加载中，请稍后"));
    l.a(paramActivity, paramString1, paramString2, paramInt2, paramString3, l.e(paramActivity.getApplicationContext()), 0, new f(paramActivity, paramString1, paramString2, paramString3, 0, paramInt2, paramy));
  }

  public static void a(Activity paramActivity, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    com.arcsoft.hpay100.a.a.b("dalongTest", "initHPaySdk ----");
    if (TextUtils.isEmpty(paramString1))
      Toast.makeText(paramActivity, "商户ID不能为空", 1).show();
    do
    {
      return;
      if (TextUtils.isEmpty(paramString2))
      {
        Toast.makeText(paramActivity, "产品ID不能为空", 1).show();
        return;
      }
      if (TextUtils.isEmpty(paramString3))
      {
        Toast.makeText(paramActivity, "渠道ID不能为空", 1).show();
        return;
      }
      if (TextUtils.isEmpty(paramString4))
      {
        Toast.makeText(paramActivity, "产品名称不能为空", 1).show();
        return;
      }
      if (!TextUtils.isEmpty(paramString5))
        continue;
      Toast.makeText(paramActivity, "客服电话不能为空", 1).show();
      return;
    }
    while (a);
    com.arcsoft.hpay100.a.a.b("dalongTest", "initHPaySdk activity start-----");
    a = true;
    long l1 = System.currentTimeMillis();
    l.a = paramString1;
    l.b = paramString2;
    l.c = paramString3;
    l.e = paramString4;
    l.d = paramString5;
    l.a();
    l.b();
    l.c();
    l.a(paramActivity.getApplicationContext());
    h.a(paramActivity.getApplicationContext());
    com.arcsoft.hpay100.c.b.d(paramActivity.getApplicationContext());
    MiguSdk.initializeApp(paramActivity);
    com.arcsoft.hpay100.a.a.b("dalongTest", "initMgdmSdk");
    com.arcsoft.hpay100.config.a.a(paramActivity.getApplicationContext(), "1", "", 0);
    long l2 = System.currentTimeMillis();
    com.arcsoft.hpay100.a.a.b("dalongTest", "time2-time1:" + (l2 - l1));
  }

  public static void a(String paramString1, String paramString2, String paramString3)
  {
    if (TextUtils.isEmpty(paramString1))
      paramString1 = "";
    if (TextUtils.isEmpty(paramString2))
      paramString2 = "";
    if (TextUtils.isEmpty(paramString3))
      paramString3 = "";
    l.m = paramString1;
    l.n = paramString2;
    l.o = paramString3;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.a
 * JD-Core Version:    0.6.0
 */