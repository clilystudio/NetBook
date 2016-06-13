package com.clilystudio.netbook.ui.game;

import android.support.v4.view.ViewPager$OnPageChangeListener;

final class ad
        implements ViewPager$OnPageChangeListener {
    private /* synthetic */ GameMicroFragment$LayoutAdapter$PromotionViewPager a;

    ad(GameMicroFragment$LayoutAdapter$PromotionViewPager promotionViewPager) {
        this.a = promotionViewPager;
    }

    @Override
    public final void onPageScrollStateChanged(int n) {
    }

    @Override
    public final void onPageScrolled(int n, float f, int n2) {
    }

    @Override
    public final void onPageSelected(int n) {
        this.a.k.a.c = n;
        GameMicroFragment$LayoutAdapter$PromotionViewPager.a(this.a, n);
    }
}
