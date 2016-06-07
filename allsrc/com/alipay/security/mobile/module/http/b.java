package com.alipay.security.mobile.module.http;

import android.content.Context;
import android.support.design.widget.am;
import com.alipay.android.phone.mrpc.core.A;
import com.alipay.android.phone.mrpc.core.m;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.AppListCmdRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListCmdResult;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.AppListResult;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;
import org.json.JSONException;
import org.json.JSONObject;

public final class b
  implements a
{
  private static b e = null;
  private static DeviceDataReportResult f;
  com.alipay.tscenter.biz.rpc.vkeydfp.b a = null;
  private A b = null;
  private com.alipay.tscenter.biz.rpc.a.a c = null;
  private com.alipay.tscenter.biz.rpc.vkeydfp.a d = null;

  private b(Context paramContext)
  {
    try
    {
      com.alipay.android.phone.mrpc.core.b localb = new com.alipay.android.phone.mrpc.core.b();
      localb.a(com.alipay.security.mobile.module.http.a.a.a);
      this.b = new m(paramContext);
      this.c = ((com.alipay.tscenter.biz.rpc.a.a)this.b.a(com.alipay.tscenter.biz.rpc.a.a.class, localb));
      this.a = ((com.alipay.tscenter.biz.rpc.vkeydfp.b)this.b.a(com.alipay.tscenter.biz.rpc.vkeydfp.b.class, localb));
      this.d = ((com.alipay.tscenter.biz.rpc.vkeydfp.a)this.b.a(com.alipay.tscenter.biz.rpc.vkeydfp.a.class, localb));
      return;
    }
    catch (Exception localException)
    {
      com.alipay.security.mobile.module.a.a.a(localException);
    }
  }

  public static b a(Context paramContext)
  {
    monitorenter;
    try
    {
      if (e == null)
        e = new b(paramContext);
      b localb = e;
      return localb;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public final AppListResult a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      AppListCmdRequest localAppListCmdRequest = new AppListCmdRequest();
      localAppListCmdRequest.os = paramString1;
      localAppListCmdRequest.apdid = paramString4;
      localAppListCmdRequest.userId = paramString2;
      localAppListCmdRequest.token = paramString3;
      AppListCmdResult localAppListCmdResult = this.d.a();
      return localAppListCmdResult;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final DeviceDataReportResult a(DeviceDataReportRequest paramDeviceDataReportRequest)
  {
    if (this.a != null)
      try
      {
        f = null;
        new Thread(new c(this, paramDeviceDataReportRequest)).start();
        for (int i = 300000; (f == null) && (i >= 0); i -= 50)
          Thread.sleep(50L);
      }
      catch (Exception localException)
      {
        com.alipay.security.mobile.module.a.a.a(localException);
      }
    return f;
  }

  public final boolean a(String paramString)
  {
    if (am.a(paramString))
      return false;
    if (this.c != null);
    try
    {
      com.alipay.tscenter.biz.rpc.a.a locala = this.c;
      am.c(paramString);
      String str2 = locala.a();
      str1 = str2;
      if (!am.a(str1));
      while (true)
      {
        try
        {
          boolean bool2 = ((Boolean)new JSONObject(str1).get("success")).booleanValue();
          bool1 = bool2;
          return bool1;
        }
        catch (JSONException localJSONException)
        {
          com.alipay.security.mobile.module.a.a.a(localJSONException);
        }
        boolean bool1 = false;
      }
    }
    catch (Exception localException)
    {
      while (true)
        String str1 = null;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.security.mobile.module.http.b
 * JD-Core Version:    0.6.0
 */