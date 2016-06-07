package com.e.a.a.g;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import com.e.a.a.e.e;
import com.e.a.a.e.f;

final class d
  implements a
{
  private static String e = null;
  private Context a;
  private String b;
  private boolean c = false;
  private boolean d = false;

  d(Context paramContext, String paramString, boolean paramBoolean)
  {
    com.e.a.a.b.a.c("MicroMsg.SDK.WXApiImplV10", "<init>, appId = " + paramString + ", checkSignature = " + paramBoolean);
    this.a = paramContext;
    this.b = paramString;
    this.c = paramBoolean;
  }

  public final boolean a()
  {
    try
    {
      PackageInfo localPackageInfo = this.a.getPackageManager().getPackageInfo("com.tencent.mm", 64);
      if (localPackageInfo == null)
        return false;
      boolean bool = c.a(localPackageInfo.signatures, this.c);
      return bool;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return false;
  }

  public final boolean a(Intent paramIntent, b paramb)
  {
    int i;
    if (paramIntent == null)
      i = 0;
    while (i == 0)
    {
      com.e.a.a.b.a.b("MicroMsg.SDK.WXApiImplV10", "handleIntent fail, intent not from weixin msg");
      return false;
      String str1 = paramIntent.getStringExtra("wx_token_key");
      if ((str1 == null) || (!str1.equals("com.tencent.mm.openapi.token")))
      {
        i = 0;
        continue;
      }
      i = 1;
    }
    String str2 = paramIntent.getStringExtra("_mmessage_content");
    int j = paramIntent.getIntExtra("_mmessage_sdkVersion", 0);
    String str3 = paramIntent.getStringExtra("_mmessage_appPackage");
    if ((str3 == null) || (str3.length() == 0))
    {
      com.e.a.a.b.a.a("MicroMsg.SDK.WXApiImplV10", "invalid argument");
      return false;
    }
    byte[] arrayOfByte1 = paramIntent.getByteArrayExtra("_mmessage_checksum");
    byte[] arrayOfByte2 = com.arcsoft.hpay100.a.a.a(str2, j, str3);
    int k;
    if ((arrayOfByte1 == null) || (arrayOfByte1.length == 0) || (arrayOfByte2 == null) || (arrayOfByte2.length == 0))
    {
      com.e.a.a.b.a.a("MicroMsg.SDK.WXApiImplV10", "checkSumConsistent fail, invalid arguments");
      k = 0;
    }
    while (k == 0)
    {
      com.e.a.a.b.a.a("MicroMsg.SDK.WXApiImplV10", "checksum fail");
      return false;
      if (arrayOfByte1.length != arrayOfByte2.length)
      {
        com.e.a.a.b.a.a("MicroMsg.SDK.WXApiImplV10", "checkSumConsistent fail, length is different");
        k = 0;
        continue;
      }
      for (int n = 0; ; n++)
      {
        if (n >= arrayOfByte1.length)
          break label223;
        if (arrayOfByte1[n] == arrayOfByte2[n])
          continue;
        k = 0;
        break;
      }
      label223: k = 1;
    }
    int m = paramIntent.getIntExtra("_wxapi_command_type", 0);
    switch (m)
    {
    default:
      com.e.a.a.b.a.a("MicroMsg.SDK.WXApiImplV10", "unknown cmd = " + m);
      return false;
    case 1:
      paramb.a(new com.e.a.a.e.d(paramIntent.getExtras()));
      return true;
    case 2:
      paramb.a(new e(paramIntent.getExtras()));
      return true;
    case 3:
      new com.e.a.a.e.a(paramIntent.getExtras());
      return true;
    case 4:
      new f(paramIntent.getExtras());
      return true;
    case 5:
      paramb.a(new com.e.a.a.f.c(paramIntent.getExtras()));
      return true;
    case 6:
    }
    new com.e.a.a.e.b(paramIntent.getExtras());
    return true;
  }

  public final boolean a(com.e.a.a.d.a parama)
  {
    if (!c.b(this.a, "com.tencent.mm", this.c))
    {
      com.e.a.a.b.a.a("MicroMsg.SDK.WXApiImplV10", "sendReq failed for wechat app signature check failed");
      return false;
    }
    if (!parama.b())
    {
      com.e.a.a.b.a.a("MicroMsg.SDK.WXApiImplV10", "sendReq checkArgs fail");
      return false;
    }
    com.e.a.a.b.a.c("MicroMsg.SDK.WXApiImplV10", "sendReq, req type = " + parama.a());
    Bundle localBundle = new Bundle();
    parama.a(localBundle);
    if (parama.a() == 5)
    {
      Context localContext = this.a;
      if (e == null)
      {
        e = new com.e.a.a.a(localContext).getString("_wxapp_pay_entry_classname_", null);
        com.e.a.a.b.a.c("MicroMsg.SDK.WXApiImplV10", "pay, set wxappPayEntryClassname = " + e);
        if (e == null)
        {
          com.e.a.a.b.a.a("MicroMsg.SDK.WXApiImplV10", "pay fail, wxappPayEntryClassname is null");
          return false;
        }
      }
      com.e.a.a.a.a locala2 = new com.e.a.a.a.a();
      locala2.e = localBundle;
      locala2.a = "com.tencent.mm";
      locala2.b = e;
      return com.arcsoft.hpay100.a.a.a(localContext, locala2);
    }
    com.e.a.a.a.a locala1 = new com.e.a.a.a.a();
    locala1.e = localBundle;
    locala1.c = ("weixin://sendreq?appid=" + this.b);
    locala1.a = "com.tencent.mm";
    locala1.b = "com.tencent.mm.plugin.base.stub.WXEntryActivity";
    return com.arcsoft.hpay100.a.a.a(this.a, locala1);
  }

  public final boolean a(String paramString)
  {
    if (!c.b(this.a, "com.tencent.mm", this.c))
    {
      com.e.a.a.b.a.a("MicroMsg.SDK.WXApiImplV10", "register app failed for wechat app signature check failed");
      return false;
    }
    com.e.a.a.b.a.c("MicroMsg.SDK.WXApiImplV10", "registerApp, appId = " + paramString);
    if (paramString != null)
      this.b = paramString;
    com.e.a.a.b.a.c("MicroMsg.SDK.WXApiImplV10", "register app " + this.a.getPackageName());
    com.e.a.a.a.a.a locala = new com.e.a.a.a.a.a();
    locala.a = "com.tencent.mm";
    locala.b = "com.tencent.mm.plugin.openapi.Intent.ACTION_HANDLE_APP_REGISTER";
    locala.c = ("weixin://registerapp?appid=" + this.b);
    return com.arcsoft.hpay100.a.a.a(this.a, locala);
  }

  public final boolean b()
  {
    if (!a())
      com.e.a.a.b.a.a("MicroMsg.SDK.WXApiImplV10", "open wx app failed, not installed or signature check failed");
    for (int i = 0; ; i = new com.e.a.a.a(this.a).getInt("_build_info_sdk_int_", 0))
    {
      int j = 0;
      if (i >= 570425345)
        j = 1;
      return j;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.e.a.a.g.d
 * JD-Core Version:    0.6.0
 */