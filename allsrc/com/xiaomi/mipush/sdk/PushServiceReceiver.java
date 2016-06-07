package com.xiaomi.mipush.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class PushServiceReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Intent localIntent = new Intent(paramContext, PushMessageHandler.class);
    localIntent.putExtras(paramIntent);
    localIntent.setAction(paramIntent.getAction());
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
 * Qualified Name:     com.xiaomi.mipush.sdk.PushServiceReceiver
 * JD-Core Version:    0.6.0
 */