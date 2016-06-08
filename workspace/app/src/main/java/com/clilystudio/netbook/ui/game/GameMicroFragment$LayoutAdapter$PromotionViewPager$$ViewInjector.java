package com.clilystudio.netbook.ui.game;

import android.support.v4.view.ViewPager;
import android.widget.LinearLayout;

import butterknife.ButterKnife.Finder;

public class GameMicroFragment$LayoutAdapter$PromotionViewPager$$ViewInjector {
    public static void inject(ButterKnife.Finder paramFinder, GameMicroFragment.LayoutAdapter.PromotionViewPager paramPromotionViewPager, Object paramObject) {
        paramPromotionViewPager.mViewPager = ((ViewPager) paramFinder.findRequiredView(paramObject, 2131493483, "field 'mViewPager'"));
        paramPromotionViewPager.mViewDots = ((LinearLayout) paramFinder.findRequiredView(paramObject, 2131493484, "field 'mViewDots'"));
    }

    public static void reset(GameMicroFragment.LayoutAdapter.PromotionViewPager paramPromotionViewPager) {
        paramPromotionViewPager.mViewPager = null;
        paramPromotionViewPager.mViewDots = null;
    }
}

