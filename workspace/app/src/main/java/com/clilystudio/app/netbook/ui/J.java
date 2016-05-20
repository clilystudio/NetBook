package com.clilystudio.app.netbook.ui;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.J
 * JD-Core Version:    0.6.2
 */