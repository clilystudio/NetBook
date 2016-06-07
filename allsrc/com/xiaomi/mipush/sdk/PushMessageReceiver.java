package com.xiaomi.mipush.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public abstract class PushMessageReceiver extends BroadcastReceiver
  implements b
{
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    MessageHandleService.a(new c(paramIntent, this));
    Intent localIntent = new Intent(paramContext, MessageHandleService.class);
    try
    {
      paramContext.startService(localIntent);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mipush.sdk.PushMessageReceiver
 * JD-Core Version:    0.6.0
 */