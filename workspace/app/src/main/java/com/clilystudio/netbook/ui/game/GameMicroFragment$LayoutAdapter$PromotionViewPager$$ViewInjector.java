
package com.clilystudio.netbook.ui.game;

import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;
import butterknife.ButterKnife$Finder;

public class GameMicroFragment$LayoutAdapter$PromotionViewPager$$ViewInjector {

    public static void inject(ButterKnife$Finder Finder1, GameMicroFragment$LayoutAdapter$PromotionViewPager PromotionViewPager2, Object Object3)
    {
        PromotionViewPager2.mViewPager = (ViewPager) Finder1.findRequiredView( Object3, 2131493483, "field 'mViewPager'" );
        PromotionViewPager2.mViewDots = (LinearLayout) Finder1.findRequiredView( Object3, 2131493484, "field 'mViewDots'" );
    }

    public static void reset(GameMicroFragment$LayoutAdapter$PromotionViewPager PromotionViewPager1)
    {
        PromotionViewPager1.mViewPager = null;
        PromotionViewPager1.mViewDots = null;
    }
}
