package com.xiaomi.mipush.sdk;

import android.app.IntentService;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.a.a.a.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class PushMessageHandler extends IntentService
{
  private static List<e> a = new ArrayList();

  public PushMessageHandler()
  {
    super("mipush message handler");
  }

  protected static void a()
  {
    synchronized (a)
    {
      a.clear();
      return;
    }
  }

  private static void a(long paramLong, String paramString1, String paramString2)
  {
    synchronized (a)
    {
      Iterator localIterator = a.iterator();
      if (localIterator.hasNext())
        localIterator.next();
    }
    monitorexit;
  }

  private static void a(MiPushMessage paramMiPushMessage)
  {
    synchronized (a)
    {
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext())
      {
        ((e)localIterator.next());
        if (!a(paramMiPushMessage.getCategory(), null))
          continue;
        paramMiPushMessage.getContent();
        paramMiPushMessage.getAlias();
        paramMiPushMessage.getTopic();
        paramMiPushMessage.isNotified();
      }
    }
    monitorexit;
  }

  protected static void a(String paramString1, long paramLong, String paramString2, String paramString3)
  {
    synchronized (a)
    {
      Iterator localIterator = a.iterator();
      if (localIterator.hasNext())
      {
        ((e)localIterator.next());
        a(paramString1, null);
      }
    }
    monitorexit;
  }

  private static void a(String paramString1, String paramString2, long paramLong, String paramString3, List<String> paramList)
  {
    synchronized (a)
    {
      Iterator localIterator = a.iterator();
      if (localIterator.hasNext())
      {
        ((e)localIterator.next());
        a(paramString1, null);
      }
    }
    monitorexit;
  }

  private static boolean a(String paramString1, String paramString2)
  {
    return ((TextUtils.isEmpty(paramString1)) && (TextUtils.isEmpty(paramString2))) || (TextUtils.equals(paramString1, paramString2));
  }

  private static void b(String paramString1, long paramLong, String paramString2, String paramString3)
  {
    synchronized (a)
    {
      Iterator localIterator = a.iterator();
      if (localIterator.hasNext())
      {
        ((e)localIterator.next());
        a(paramString1, null);
      }
    }
    monitorexit;
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    if ("com.xiaomi.mipush.sdk.WAKEUP".equals(paramIntent.getAction()))
      if (g.a(this).g())
        n.a(this).a();
    while (true)
    {
      return;
      if (1 != f.a(this))
        break;
      if (a.isEmpty())
      {
        b.c("receive a message before application calling initialize");
        return;
      }
      PushMessageHandler.a locala = l.a(this).a(paramIntent);
      if (locala == null)
        continue;
      if ((locala instanceof MiPushMessage))
      {
        a((MiPushMessage)locala);
        return;
      }
      if (!(locala instanceof MiPushCommandMessage))
        continue;
      MiPushCommandMessage localMiPushCommandMessage = (MiPushCommandMessage)locala;
      String str1 = localMiPushCommandMessage.getCommand();
      if ("register".equals(str1))
      {
        List localList3 = localMiPushCommandMessage.getCommandArguments();
        if ((localList3 != null) && (!localList3.isEmpty()));
        for (String str4 = (String)localList3.get(0); ; str4 = null)
        {
          a(localMiPushCommandMessage.getResultCode(), localMiPushCommandMessage.getReason(), str4);
          return;
        }
      }
      if (("set-alias".equals(str1)) || ("unset-alias".equals(str1)) || ("accept-time".equals(str1)))
      {
        a(localMiPushCommandMessage.getCategory(), str1, localMiPushCommandMessage.getResultCode(), localMiPushCommandMessage.getReason(), localMiPushCommandMessage.getCommandArguments());
        return;
      }
      if (d.a.equals(str1))
      {
        List localList2 = localMiPushCommandMessage.getCommandArguments();
        if ((localList2 != null) && (!localList2.isEmpty()));
        for (String str3 = (String)localList2.get(0); ; str3 = null)
        {
          a(localMiPushCommandMessage.getCategory(), localMiPushCommandMessage.getResultCode(), localMiPushCommandMessage.getReason(), str3);
          return;
        }
      }
      if (!d.b.equals(str1))
        continue;
      List localList1 = localMiPushCommandMessage.getCommandArguments();
      if ((localList1 != null) && (!localList1.isEmpty()));
      for (String str2 = (String)localList1.get(0); ; str2 = null)
      {
        b(localMiPushCommandMessage.getCategory(), localMiPushCommandMessage.getResultCode(), localMiPushCommandMessage.getReason(), str2);
        return;
      }
    }
    Intent localIntent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
    localIntent.setPackage(getPackageName());
    localIntent.putExtras(paramIntent);
    sendBroadcast(localIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mipush.sdk.PushMessageHandler
 * JD-Core Version:    0.6.0
 */