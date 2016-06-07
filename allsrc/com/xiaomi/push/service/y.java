package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.smack.d.h;
import com.xiaomi.smack.packet.d;
import com.xiaomi.smack.packet.e;
import com.xiaomi.smack.packet.f;
import java.util.Collection;
import java.util.Iterator;

public final class y
{
  private H a = new H();

  public static String a(String paramString)
  {
    return paramString + ".permission.MIPUSH_RECEIVE";
  }

  private static void a(Context paramContext, Intent paramIntent, String paramString)
  {
    if ("com.xiaomi.xmsf".equals(paramContext.getPackageName()))
    {
      paramContext.sendBroadcast(paramIntent);
      return;
    }
    paramContext.sendBroadcast(paramIntent, a(paramString));
  }

  public static void a(Context paramContext, R paramR, int paramInt)
  {
    if (!"5".equalsIgnoreCase(paramR.h))
    {
      Intent localIntent = new Intent();
      localIntent.setAction("com.xiaomi.push.channel_closed");
      localIntent.setPackage(paramR.a);
      localIntent.putExtra(U.l, paramR.h);
      localIntent.putExtra("ext_reason", paramInt);
      localIntent.putExtra(U.k, paramR.b);
      localIntent.putExtra(U.u, paramR.j);
      a(paramContext, localIntent, paramR.a);
    }
  }

  public static void a(Context paramContext, R paramR, String paramString1, String paramString2)
  {
    if ("5".equalsIgnoreCase(paramR.h))
    {
      com.xiaomi.a.a.a.b.c("mipush kicked by server");
      return;
    }
    Intent localIntent = new Intent();
    localIntent.setAction("com.xiaomi.push.kicked");
    localIntent.setPackage(paramR.a);
    localIntent.putExtra("ext_kick_type", paramString1);
    localIntent.putExtra("ext_kick_reason", paramString2);
    localIntent.putExtra("ext_chid", paramR.h);
    localIntent.putExtra(U.k, paramR.b);
    localIntent.putExtra(U.u, paramR.j);
    a(paramContext, localIntent, paramR.a);
  }

  public final void a(Context paramContext, R paramR, boolean paramBoolean, int paramInt, String paramString)
  {
    if ("5".equalsIgnoreCase(paramR.h))
    {
      H.a(paramContext, paramBoolean, paramString);
      return;
    }
    Intent localIntent = new Intent();
    localIntent.setAction("com.xiaomi.push.channel_opened");
    localIntent.setPackage(paramR.a);
    localIntent.putExtra("ext_succeeded", paramBoolean);
    if (!paramBoolean)
      localIntent.putExtra("ext_reason", paramInt);
    if (!TextUtils.isEmpty(paramString))
      localIntent.putExtra("ext_reason_msg", paramString);
    localIntent.putExtra("ext_chid", paramR.h);
    localIntent.putExtra(U.k, paramR.b);
    localIntent.putExtra(U.u, paramR.j);
    a(paramContext, localIntent, paramR.a);
  }

  public final void a(XMPushService paramXMPushService, String paramString, e parame)
  {
    Collection localCollection = u.a().c(parame.f());
    Iterator localIterator;
    Object localObject;
    if (!localCollection.isEmpty())
    {
      localIterator = localCollection.iterator();
      if (localCollection.size() == 1)
        localObject = (R)localIterator.next();
    }
    while (localObject == null)
    {
      com.xiaomi.a.a.a.b.c("error while notify channel closed! channel " + paramString + " not registered");
      return;
      String str3 = parame.h();
      String str4 = parame.g();
      while (true)
        if (localIterator.hasNext())
        {
          R localR = (R)localIterator.next();
          if ((!TextUtils.equals(str3, localR.b)) && (!TextUtils.equals(str4, localR.b)))
            continue;
          localObject = localR;
          break;
        }
      localObject = null;
    }
    if ("5".equalsIgnoreCase(paramString))
    {
      H.a(paramXMPushService, parame, (R)localObject);
      return;
    }
    String str1 = ((R)localObject).a;
    String str2;
    if ((parame instanceof d))
      str2 = "com.xiaomi.push.new_msg";
    while (true)
    {
      Intent localIntent = new Intent();
      localIntent.setAction(str2);
      localIntent.setPackage(str1);
      localIntent.putExtra("ext_chid", paramString);
      localIntent.putExtra("ext_packet", parame.b());
      localIntent.putExtra(U.u, ((R)localObject).j);
      localIntent.putExtra(U.o, ((R)localObject).i);
      a(paramXMPushService, localIntent, str1);
      h.a(paramXMPushService, str1, h.a(parame.c()), true, System.currentTimeMillis());
      return;
      if ((parame instanceof com.xiaomi.smack.packet.b))
      {
        str2 = "com.xiaomi.push.new_iq";
        continue;
      }
      if (!(parame instanceof f))
        break;
      str2 = "com.xiaomi.push.new_pres";
    }
    com.xiaomi.a.a.a.b.c("unknown packet type, drop it");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.y
 * JD-Core Version:    0.6.0
 */