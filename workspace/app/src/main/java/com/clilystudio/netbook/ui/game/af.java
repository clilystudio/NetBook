package com.clilystudio.netbook.ui.game;

import android.os.Message;

import java.util.TimerTask;

final class af extends TimerTask {
    af(GameMicroFragment.LayoutAdapter.PromotionViewPager paramPromotionViewPager) {
    }

    public final void run() {
        Message localMessage = new Message();
        localMessage.what = 1;
        this.a.j.sendMessage(localMessage);
    }
}

