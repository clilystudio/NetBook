package com.ushaqi.zhuishushenqi.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import java.util.Date;

public class AudioBookNotification$SwitchButtonListener extends BroadcastReceiver
{
  private Handler a = new Handler();

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    long l = new Date().getTime();
    if (l - e.d() < 1000L)
    {
      e.a(l);
      return;
    }
    e.a(l);
    as.a();
    if (as.c())
    {
      this.a.post(new i(this));
      return;
    }
    this.a.post(new j(this));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.AudioBookNotification.SwitchButtonListener
 * JD-Core Version:    0.6.0
 */