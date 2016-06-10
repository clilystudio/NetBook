package com.clilystudio.netbook.hpay100.config;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.telephony.SmsManager;

import java.util.Iterator;

public final class c
{
  private static f a;
  private static Runnable b = null;
  private static Handler c = null;
  private static BroadcastReceiver d = new d();

  public static void a(Context paramContext, String paramString1, String paramString2, f paramf)
  {
    a.b("dalongTest", "sendSMS:");
    a = paramf;
    c();
    try
    {
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("com.happy.pay100.smssend");
      localIntentFilter.addAction("com.happy.pay100.smsresult");
      paramContext.registerReceiver(d, localIntentFilter);
    }
    catch (Exception localException1)
    {
      try
      {
        localSmsManager = SmsManager.getDefault();
        Intent localIntent1 = new Intent("com.happy.pay100.smssend");
        Intent localIntent2 = new Intent("com.happy.pay100.smsresult");
        localPendingIntent1 = PendingIntent.getBroadcast(paramContext, 0, localIntent1, 0);
        localPendingIntent2 = PendingIntent.getBroadcast(paramContext, 0, localIntent2, 0);
        if (paramString2.length() > 70)
        {
          Iterator localIterator = localSmsManager.divideMessage(paramString2).iterator();
          while (true)
          {
            boolean bool = localIterator.hasNext();
            if (!bool)
            {
              b = new e(paramContext);
              Handler localHandler = new Handler(paramContext.getMainLooper());
              c = localHandler;
              localHandler.postDelayed(b, 20000L);
              return;
              localException1 = localException1;
              localException1.printStackTrace();
              break;
            }
            String str = (String)localIterator.next();
            localSmsManager.sendTextMessage(paramString1, null, str, localPendingIntent1, localPendingIntent2);
            a.b("dalongTest", "sms address:" + paramString1);
            a.b("dalongTest", "sms content:" + str);
          }
        }
      }
      catch (Exception localException2)
      {
        while (true)
        {
          SmsManager localSmsManager;
          PendingIntent localPendingIntent1;
          PendingIntent localPendingIntent2;
          localException2.printStackTrace();
          continue;
          localSmsManager.sendTextMessage(paramString1, null, paramString2, localPendingIntent1, localPendingIntent2);
          a.b("dalongTest", "sms address--:" + paramString1);
          a.b("dalongTest", "sms content--:" + paramString2);
        }
      }
    }
  }

  private static void c()
  {
    try
    {
      if (c != null)
      {
        c.removeCallbacks(b);
        c = null;
        b = null;
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  private static void c(Context paramContext)
  {
    try
    {
      paramContext.unregisterReceiver(d);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.config.c
 * JD-Core Version:    0.6.0
 */