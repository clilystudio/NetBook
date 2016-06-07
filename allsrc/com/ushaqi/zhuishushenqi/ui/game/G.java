package com.ushaqi.zhuishushenqi.ui.game;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class G extends BroadcastReceiver
{
  G(GameLayoutFragment paramGameLayoutFragment)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    GameLayoutFragment.a(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.G
 * JD-Core Version:    0.6.0
 */