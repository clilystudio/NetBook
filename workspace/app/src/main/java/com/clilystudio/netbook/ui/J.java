package com.clilystudio.netbook.ui;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class J extends BroadcastReceiver
{
  J(BaseActivity paramBaseActivity)
  {
  }

  @TargetApi(11)
  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    this.a.recreate();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.J
 * JD-Core Version:    0.6.0
 */