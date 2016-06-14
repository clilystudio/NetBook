package com.clilystudio.netbook.ui.game;

import android.os.Handler;
import android.os.Message;

final class ag extends Handler {
    private /* synthetic */ GameMicroFragment$LayoutAdapter$PromotionViewPager a;

    ag(GameMicroFragment$LayoutAdapter$PromotionViewPager promotionViewPager) {
        this.a = promotionViewPager;
    }

    @Override
    public final void handleMessage(Message message) {
        switch (message.what) {
            default: {
                return;
            }
            case 1:
        }
        this.a.mViewPager.setCurrentItem((1 + this.a.k.a.c) % GameMicroFragment.a(this.a.k.a).length);
    }
}
