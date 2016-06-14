package com.clilystudio.netbook.ui.game;

import android.view.MotionEvent;
import android.view.View;

final class ae implements View.OnTouchListener {
    private /* synthetic */ GameMicroFragment$LayoutAdapter$PromotionViewPager a;

    ae(GameMicroFragment$LayoutAdapter$PromotionViewPager promotionViewPager) {
        this.a = promotionViewPager;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0: {
                GameMicroFragment$LayoutAdapter$PromotionViewPager.a(this.a);
            }
            default: {
                return false;
            }
            case 1:
            case 3:
        }
        GameMicroFragment$LayoutAdapter$PromotionViewPager.b(this.a);
        return false;
    }
}
