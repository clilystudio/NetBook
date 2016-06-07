package com.clilystudio.netbook.ui.game;

import android.os.Handler;
import android.os.Message;
import android.support.v4.view.ViewPager;

final class ag extends Handler
{
  ag(GameMicroFragment.LayoutAdapter.PromotionViewPager paramPromotionViewPager)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
    }
    this.a.mViewPager.setCurrentItem((1 + this.a.k.a.c) % GameMicroFragment.a(this.a.k.a).length);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.game.ag
 * JD-Core Version:    0.6.0
 */