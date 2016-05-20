package com.clilystudio.app.netbook.ui;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bn
 * JD-Core Version:    0.6.2
 */