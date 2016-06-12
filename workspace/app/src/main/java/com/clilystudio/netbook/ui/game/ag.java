
package com.clilystudio.netbook.ui.game;

import android.os.Handler;
import android.os.Message;
import android.support.v4.view.ViewPager;
import com.clilystudio.netbook.model.Game;

final class ag extends Handler {

    ag(GameMicroFragment$LayoutAdapter$PromotionViewPager PromotionViewPager1)
    {
        a = PromotionViewPager1;
    }

    private GameMicroFragment$LayoutAdapter$PromotionViewPager a;

    public final void handleMessage(Message Message1)
    {
        switch( Message1.what )
        {
            default:
                return;
            case 1:
                a.mViewPager.setCurrentItem( (1 + a.k.a.c) % GameMicroFragment.a( a.k.a ).length );
                return;
        }
    }
}
