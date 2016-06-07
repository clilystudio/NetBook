package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.xiaomi.xmpush.thrift.b;
import com.xiaomi.xmpush.thrift.c;
import com.xiaomi.xmpush.thrift.n;
import java.util.List;

public final class f
{
  private static int a = 0;

  public static int a(Context paramContext)
  {
    if (a == 0)
    {
      Intent localIntent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
      localIntent.setClassName(paramContext.getPackageName(), "com.xiaomi.mipush.sdk.PushServiceReceiver");
      if (!a(paramContext, localIntent))
        break label43;
      a = 1;
    }
    while (true)
    {
      return a;
      label43: a = 2;
    }
  }

  public static MiPushCommandMessage a(String paramString1, List<String> paramList, long paramLong, String paramString2, String paramString3)
  {
    MiPushCommandMessage localMiPushCommandMessage = new MiPushCommandMessage();
    localMiPushCommandMessage.setCommand(paramString1);
    localMiPushCommandMessage.setCommandArguments(paramList);
    localMiPushCommandMessage.setResultCode(paramLong);
    localMiPushCommandMessage.setReason(paramString2);
    localMiPushCommandMessage.setCategory(paramString3);
    return localMiPushCommandMessage;
  }

  public static MiPushMessage a(n paramn, c paramc, boolean paramBoolean)
  {
    MiPushMessage localMiPushMessage = new MiPushMessage();
    localMiPushMessage.setMessageId(paramn.c());
    if (!TextUtils.isEmpty(paramn.j()))
    {
      localMiPushMessage.setMessageType(1);
      localMiPushMessage.setAlias(paramn.j());
    }
    while (true)
    {
      localMiPushMessage.setCategory(paramn.p());
      if (paramn.l() != null)
        localMiPushMessage.setContent(paramn.l().e());
      if (paramc != null)
      {
        if (TextUtils.isEmpty(localMiPushMessage.getMessageId()))
          localMiPushMessage.setMessageId(paramc.a());
        if (TextUtils.isEmpty(localMiPushMessage.getTopic()))
          localMiPushMessage.setTopic(paramc.e());
        localMiPushMessage.setDescription(paramc.i());
        localMiPushMessage.setTitle(paramc.g());
        localMiPushMessage.setNotifyType(paramc.k());
        localMiPushMessage.setNotifyId(paramc.p());
        localMiPushMessage.setPassThrough(paramc.n());
        localMiPushMessage.setExtra(paramc.r());
      }
      localMiPushMessage.setNotified(paramBoolean);
      return localMiPushMessage;
      if (!TextUtils.isEmpty(paramn.h()))
      {
        localMiPushMessage.setMessageType(2);
        localMiPushMessage.setTopic(paramn.h());
        continue;
      }
      localMiPushMessage.setMessageType(0);
    }
  }

  public static void a(Context paramContext, MiPushCommandMessage paramMiPushCommandMessage)
  {
    Intent localIntent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
    localIntent.setPackage(paramContext.getPackageName());
    localIntent.putExtra("message_type", 3);
    localIntent.putExtra("key_command", paramMiPushCommandMessage);
    paramContext.sendBroadcast(localIntent);
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
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mipush.sdk.f
 * JD-Core Version:    0.6.0
 */