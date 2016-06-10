package com.clilystudio.netbook.hpay100.config;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.hpay100.a_Pack.a;

final class d extends BroadcastReceiver
{
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("com.happy.pay100.smssend"))
    {
      if (getResultCode() == -1)
      {
        a.b("dalongTest", "send sms ok:");
        c.a(paramContext);
        c.a();
        if (c.b() != null)
          c.b().a(1);
        c.a(null);
      }
    }
    else
      return;
    a.b("dalongTest", "send sms error:");
    c.a(paramContext);
    c.a();
    if (c.b() != null)
      c.b().a(0);
    c.a(null);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.config.d
 * JD-Core Version:    0.6.0
 */