package com.xiaomi.push.service.receivers;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.a.a.a.b;
import com.xiaomi.push.service.U;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.a.a;

public class PingReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    new a(paramContext).a(false);
    b.b(paramIntent.getPackage() + " is the package name");
    if (U.j.equals(paramIntent.getAction()))
    {
      if (TextUtils.equals(paramContext.getPackageName(), paramIntent.getPackage()))
        b.b("Ping XMChannelService on timer");
      try
      {
        Intent localIntent = new Intent(paramContext, XMPushService.class);
        localIntent.setAction("com.xiaomi.push.timer");
        paramContext.startService(localIntent);
        return;
      }
      catch (Exception localException)
      {
        b.a(localException);
        return;
      }
    }
    b.a("cancel the old ping timer");
    ((AlarmManager)paramContext.getSystemService("alarm")).cancel(PendingIntent.getBroadcast(paramContext, 0, new Intent(paramContext, PingReceiver.class), 0));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.receivers.PingReceiver
 * JD-Core Version:    0.6.0
 */