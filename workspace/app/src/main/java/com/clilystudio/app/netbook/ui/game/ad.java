package com.clilystudio.app.netbook.ui.game;

import android.support.v4.view.ViewPager.OnPageChangeListener;

final class ad
  implements ViewPager.OnPageChangeListener
{
  ad(GameMicroFragment.LayoutAdapter.PromotionViewPager paramPromotionViewPager)
  {
  }

  public final void onPageScrollStateChanged(int paramInt)
  {
  }

  public final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
  }

  public final void onPageSelected(int paramInt)
  {
    this.a.k.a.c = paramInt;
    GameMicroFragment.LayoutAdapter.PromotionViewPager.a(this.a, paramInt);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.ad
 * JD-Core Version:    0.6.2
 */