package com.iflytek.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class b extends BroadcastReceiver
{
  b(LaunchService paramLaunchService)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    com.iflytek.common.c.c.a(paramContext, "alarm onReceive");
    com.iflytek.common.a.c.a(paramContext);
    LaunchService.a(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.common.b
 * JD-Core Version:    0.6.0
 */