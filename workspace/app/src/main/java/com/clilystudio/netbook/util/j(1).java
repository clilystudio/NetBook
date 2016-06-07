package com.clilystudio.netbook.util;

import android.app.NotificationManager;
import android.widget.RemoteViews;

final class j
  implements Runnable
{
  j(AudioBookNotification.SwitchButtonListener paramSwitchButtonListener)
  {
  }

  public final void run()
  {
    as.a().d();
    e.e().setImageViewResource(2131493607, 2130837584);
    e.g().notify(1001, e.f());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.j
 * JD-Core Version:    0.6.0
 */