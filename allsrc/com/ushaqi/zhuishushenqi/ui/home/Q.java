package com.ushaqi.zhuishushenqi.ui.home;

import android.content.Intent;

final class Q
  implements Runnable
{
  Q(HomeTransparentActivity paramHomeTransparentActivity)
  {
  }

  public final void run()
  {
    Intent localIntent = new Intent();
    localIntent.setAction("broadcastOnThemeChanged");
    this.a.sendBroadcast(localIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.Q
 * JD-Core Version:    0.6.0
 */