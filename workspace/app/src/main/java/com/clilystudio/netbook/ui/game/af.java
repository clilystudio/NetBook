package com.clilystudio.netbook.ui.game;

import android.os.Message;

import java.util.TimerTask;

final class af
        extends TimerTask {
    private /* synthetic */ GameMicroFragment$LayoutAdapter$PromotionViewPager a;

    af(GameMicroFragment$LayoutAdapter$PromotionViewPager promotionViewPager) {
        this.a = promotionViewPager;
    }

    @Override
    public final void run() {
        Message message = new Message();
        message.what = 1;
        this.a.j.sendMessage(message);
    }
}
