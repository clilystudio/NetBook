package com.ushaqi.zhuishushenqi.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class P extends BroadcastReceiver
{
  P(GameListActivity paramGameListActivity)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    GameListActivity.c(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.P
 * JD-Core Version:    0.6.0
 */