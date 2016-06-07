package com.clilystudio.netbook.ui.game;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.game.aj
 * JD-Core Version:    0.6.0
 */