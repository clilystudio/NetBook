package com.ushaqi.zhuishushenqi.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class h extends BroadcastReceiver
{
  h(GameDetailActivity paramGameDetailActivity)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (GameDetailActivity.e(this.a) != null)
      GameDetailActivity.f(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.h
 * JD-Core Version:    0.6.0
 */