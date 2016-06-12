
package com.clilystudio.netbook.ui.game;

import android.view.MotionEvent;
import android.view.View;
import android.view.View$OnTouchListener;

final class ae implements View$OnTouchListener {

    ae(GameMicroFragment$LayoutAdapter$PromotionViewPager PromotionViewPager1)
    {
        a = PromotionViewPager1;
    }

    private GameMicroFragment$LayoutAdapter$PromotionViewPager a;

    public final boolean onTouch(View View1, MotionEvent MotionEvent2)
    {
        switch( MotionEvent2.getAction() )
        {
            case 0:
                GameMicroFragment$LayoutAdapter$PromotionViewPager.a( a );
                break;
            case 3:
            case 1:
                GameMicroFragment$LayoutAdapter$PromotionViewPager.b( a );
                break;
            case 2:
            default:
                break;
        }
        return false;
    }
}
