package com.ushaqi.zhuishushenqi.ui.game;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.game.ad
 * JD-Core Version:    0.6.0
 */