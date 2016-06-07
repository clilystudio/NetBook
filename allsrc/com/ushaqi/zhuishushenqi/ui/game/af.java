package com.ushaqi.zhuishushenqi.ui.game;

import android.os.Handler;
import android.os.Message;
import java.util.TimerTask;

final class af extends TimerTask
{
  af(GameMicroFragment.LayoutAdapter.PromotionViewPager paramPromotionViewPager)
  {
  }

  public final void run()
  {
    Message localMessage = new Message();
    localMessage.what = 1;
    this.a.j.sendMessage(localMessage);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.af
 * JD-Core Version:    0.6.0
 */