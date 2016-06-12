
package com.clilystudio.netbook.ui.game;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

final class ah extends PagerAdapter {

    ah(GameMicroFragment$LayoutAdapter$PromotionViewPager PromotionViewPager1)
    {
        a = PromotionViewPager1;
    }

    private GameMicroFragment$LayoutAdapter$PromotionViewPager a;

    public final void destroyItem(ViewGroup ViewGroup1, int int2, Object Object3)
    {
        ViewGroup1.removeView( (View) a.i.get( int2 ) );
    }

    public final int getCount()
    {
        return a.i.size();
    }

    public final Object instantiateItem(ViewGroup ViewGroup1, int int2)
    {
        ViewGroup1.addView( (View) a.i.get( int2 ), 0 );
        return a.i.get( int2 );
    }

    public final boolean isViewFromObject(View View1, Object Object2)
    {
        if( View1 == Object2 )
            return true;
        else
            return false;
    }
}
