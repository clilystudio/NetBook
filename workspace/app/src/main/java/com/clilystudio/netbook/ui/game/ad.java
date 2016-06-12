package com.clilystudio.netbook.ui.game;

import android.support.v4.view.ViewPager$OnPageChangeListener;

final class ad implements ViewPager$OnPageChangeListener {

    private GameMicroFragment$LayoutAdapter$PromotionViewPager a;

    ad(GameMicroFragment$LayoutAdapter$PromotionViewPager PromotionViewPager1) {
        a = PromotionViewPager1;
    }

    public final void onPageScrollStateChanged(int int1) {
    }

    public final void onPageScrolled(int int1, float float2, int int3) {
    }

    public final void onPageSelected(int int1) {
        a.k.a.c = int1;
        GameMicroFragment$LayoutAdapter$PromotionViewPager.a(a, int1);
    }
}
