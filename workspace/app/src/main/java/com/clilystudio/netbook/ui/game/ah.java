package com.clilystudio.netbook.ui.game;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

final class ah extends PagerAdapter {
    private /* synthetic */ GameMicroFragment$LayoutAdapter$PromotionViewPager a;

    ah(GameMicroFragment$LayoutAdapter$PromotionViewPager promotionViewPager) {
        this.a = promotionViewPager;
    }

    @Override
    public final void destroyItem(ViewGroup viewGroup, int n, Object object) {
        viewGroup.removeView(this.a.i.get(n));
    }

    @Override
    public final int getCount() {
        return this.a.i.size();
    }

    @Override
    public final Object instantiateItem(ViewGroup viewGroup, int n) {
        viewGroup.addView(this.a.i.get(n), 0);
        return this.a.i.get(n);
    }

    @Override
    public final boolean isViewFromObject(View view, Object object) {
        if (view == object) {
            return true;
        }
        return false;
    }
}
