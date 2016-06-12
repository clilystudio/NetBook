package com.clilystudio.netbook.ui.game;

import android.os.Handler;
import android.os.Message;

final class ag extends Handler {

    private GameMicroFragment$LayoutAdapter$PromotionViewPager a;

    ag(GameMicroFragment$LayoutAdapter$PromotionViewPager PromotionViewPager1) {
        a = PromotionViewPager1;
    }

    public final void handleMessage(Message Message1) {
        switch (Message1.what) {
            default:
                return;
            case 1:
                a.mViewPager.setCurrentItem((1 + a.k.a.c) % GameMicroFragment.a(a.k.a).length);
                return;
        }
    }
}
