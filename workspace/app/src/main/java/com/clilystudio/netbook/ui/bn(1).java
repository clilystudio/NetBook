package com.clilystudio.netbook.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class bn extends BroadcastReceiver
{
  bn(MysteryActivity paramMysteryActivity)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    MysteryActivity.a(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.bn
 * JD-Core Version:    0.6.0
 */