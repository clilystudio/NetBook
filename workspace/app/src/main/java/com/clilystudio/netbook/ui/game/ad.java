package com.clilystudio.netbook.ui.game;

final class ad
        implements ViewPager.OnPageChangeListener {
    ad(GameMicroFragment.LayoutAdapter.PromotionViewPager paramPromotionViewPager) {
    }

    public final void onPageScrollStateChanged(int paramInt) {
    }

    public final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {
    }

    public final void onPageSelected(int paramInt) {
        this.a.k.a.c = paramInt;
        GameMicroFragment.LayoutAdapter.PromotionViewPager.a(this.a, paramInt);
    }
}

