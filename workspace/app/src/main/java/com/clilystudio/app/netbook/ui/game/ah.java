package com.clilystudio.app.netbook.ui.game;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

final class ah extends PagerAdapter {
    ah(GameMicroFragment.LayoutAdapter.PromotionViewPager paramPromotionViewPager) {
    }

    public final void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject) {
        paramViewGroup.removeView((View) this.a.i.get(paramInt));
    }

    public final int getCount() {
        return this.a.i.size();
    }

    public final Object instantiateItem(ViewGroup paramViewGroup, int paramInt) {
        paramViewGroup.addView((View) this.a.i.get(paramInt), 0);
        return this.a.i.get(paramInt);
    }

    public final boolean isViewFromObject(View paramView, Object paramObject) {
        return paramView == paramObject;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.game.ah
 * JD-Core Version:    0.6.2
 */