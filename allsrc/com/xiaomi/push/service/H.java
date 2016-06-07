package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.xiaomi.a.a.a.b;
import com.xiaomi.smack.packet.d;
import com.xiaomi.xmpush.thrift.c;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.json.JSONException;

public final class H
{
  public static void a(Context paramContext, boolean paramBoolean, String paramString)
  {
    C localC;
    if (!paramBoolean)
    {
      localC = D.a(paramContext);
      if ((localC == null) || (!"token-expired".equals(paramString)));
    }
    try
    {
      D.a(paramContext, localC.d, localC.e, localC.f);
      return;
    }
    catch (IOException localIOException)
    {
      b.a(localIOException);
      return;
    }
    catch (JSONException localJSONException)
    {
      b.a(localJSONException);
    }
  }

  public static void a(XMPushService paramXMPushService, com.xiaomi.smack.packet.e parame, R paramR)
  {
    byte[] arrayOfByte;
    com.xiaomi.xmpush.thrift.h localh;
    Intent localIntent;
    String str1;
    c localc;
    boolean bool;
    if ((parame instanceof d))
    {
      d locald = (d)parame;
      com.xiaomi.smack.packet.a locala = locald.p("s");
      if (locala == null)
        break label688;
      while (true)
      {
        try
        {
          arrayOfByte = W.b(W.a(paramR.i, locald.e()), locala.b());
          long l = com.xiaomi.smack.d.h.a(parame.c());
          localh = new com.xiaomi.xmpush.thrift.h();
          try
          {
            com.arcsoft.hpay100.a.a.a(localh, arrayOfByte);
            if (TextUtils.isEmpty(localh.f))
              break label675;
            localIntent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
            localIntent.putExtra("mipush_payload", arrayOfByte);
            localIntent.setPackage(localh.f);
            str1 = N.a(localh);
            com.xiaomi.smack.d.h.a(paramXMPushService, str1, l, true, System.currentTimeMillis());
            localc = localh.m();
            if ((com.xiaomi.xmpush.thrift.a.e != localh.a()) || (!E.a(paramXMPushService).a(localh.f)))
              continue;
            String str3 = "";
            if (localc == null)
              continue;
            str3 = localc.a();
            b.a("Drop a message for unregistered, msgid=" + str3);
            paramXMPushService.a(new M(4, paramXMPushService, localh, localh.f));
            return;
            if (localh.m() == null)
              break label689;
            if (localh.m().r() == null)
            {
              break label689;
              if ((!bool) || (!a(paramXMPushService, str1)))
                break;
              paramXMPushService.a(new K(4, paramXMPushService, localh));
              return;
            }
          }
          catch (org.apache.thrift.e locale)
          {
            b.a(locale);
            return;
          }
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          b.a(localIllegalArgumentException);
          return;
        }
        bool = "1".equals(localh.m().r().get("obslete_ads_message"));
      }
      if ((!"com.xiaomi.xmsf".equals(localh.f)) || (localh.m() == null) || (localh.m().r() == null) || (!localh.m().r().containsKey("miui_package_name")))
        break label695;
    }
    label675: label688: label689: label695: for (int i = 1; ; i = 0)
    {
      if ((i != 0) && (!a(paramXMPushService, str1)) && (!localh.m().r().containsKey("notify_effect")))
      {
        paramXMPushService.a(new L(4, paramXMPushService, localh));
        return;
      }
      if (a(paramXMPushService, localIntent))
      {
        if (com.xiaomi.xmpush.thrift.a.a == localh.a())
        {
          String str2 = localh.j();
          SharedPreferences.Editor localEditor = paramXMPushService.getSharedPreferences("pref_registered_pkg_names", 0).edit();
          localEditor.putString(str2, localh.e);
          localEditor.commit();
        }
        if ((localc == null) || (TextUtils.isEmpty(localc.g())) || (TextUtils.isEmpty(localc.i())) || (localc.h == 1) || ((!a(localc.r())) && (N.a(paramXMPushService, localh.f))))
        {
          paramXMPushService.sendBroadcast(localIntent, y.a(localh.f));
          if ((localh.a() == com.xiaomi.xmpush.thrift.a.b) && (!"com.xiaomi.xmsf".equals(paramXMPushService.getPackageName())))
          {
            paramXMPushService.stopSelf();
            return;
          }
        }
        else
        {
          if ((localc != null) && (O.a(paramXMPushService, localh.f, localc.a())))
            b.a("drop a duplicate message, msgid=" + localc.a());
          while (true)
          {
            paramXMPushService.a(new J(4, paramXMPushService, localh));
            break;
            N.a(paramXMPushService, localh, arrayOfByte);
          }
        }
      }
      else
      {
        paramXMPushService.a(new I(4, paramXMPushService, localh));
        return;
        b.a("receive a mipush message without package name");
        return;
        b.a("not a mipush message");
      }
      return;
      bool = false;
      break;
    }
  }

  private static boolean a(Context paramContext, Intent paramIntent)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      List localList = localPackageManager.queryBroadcastReceivers(paramIntent, 32);
      if (localList != null)
      {
        boolean bool = localList.isEmpty();
        if (!bool)
          return true;
      }
      return false;
    }
    catch (Exception localException)
    {
    }
    return true;
  }

  private static boolean a(Context paramContext, String paramString)
  {
    Intent localIntent1 = new Intent("com.xiaomi.mipush.miui.CLICK_MESSAGE");
    localIntent1.setPackage(paramString);
    Intent localIntent2 = new Intent("com.xiaomi.mipush.miui.RECEIVE_MESSAGE");
    localIntent2.setPackage(paramString);
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      List localList1 = localPackageManager.queryBroadcastReceivers(localIntent2, 32);
      List localList2 = localPackageManager.queryIntentServices(localIntent1, 32);
      int i;
      if (localList1.isEmpty())
      {
        boolean bool = localList2.isEmpty();
        i = 0;
        if (bool);
      }
      else
      {
        i = 1;
      }
      return i;
    }
    catch (Exception localException)
    {
      b.a(localException);
    }
    return false;
  }

  public static boolean a(Map<String, String> paramMap)
  {
    if ((paramMap == null) || (!paramMap.containsKey("notify_foreground")))
      return true;
    return "1".equals((String)paramMap.get("notify_foreground"));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.H
 * JD-Core Version:    0.6.0
 */