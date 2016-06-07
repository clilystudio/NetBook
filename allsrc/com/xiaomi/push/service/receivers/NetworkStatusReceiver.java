package com.xiaomi.push.service.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.xiaomi.a.a.a.b;
import com.xiaomi.a.a.c.a;
import com.xiaomi.mipush.sdk.g;
import com.xiaomi.mipush.sdk.n;
import com.xiaomi.push.service.XMPushService;

public class NetworkStatusReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((!n.a(paramContext).b()) && (g.a(paramContext).g()) && (!g.a(paramContext).l()));
    try
    {
      Intent localIntent = new Intent(paramContext, XMPushService.class);
      localIntent.setAction("com.xiaomi.push.network_status_changed");
      paramContext.startService(localIntent);
      if (a.b(paramContext))
        n.a(paramContext).c();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        b.a(localException);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.push.service.receivers.NetworkStatusReceiver
 * JD-Core Version:    0.6.0
 */