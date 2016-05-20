package com.clilystudio.app.netbook.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class aj extends BroadcastReceiver
{
  aj(GameRankListFragment paramGameRankListFragment)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    GameRankListFragment.c(this.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.aj
 * JD-Core Version:    0.6.2
 */